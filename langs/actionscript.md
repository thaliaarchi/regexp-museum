# ActionScript 3 `RegExp`

ActionScript 3 [`RegExp`](https://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/RegExp.html)
uses syntax similar to ECMAScript 3 with some additions.

`RegExp` compatibility in Ruffle and other emulators is tracked in [issue #14651](https://github.com/ruffle-rs/ruffle/issues/14651).

## AS3 specifications

The ActionScript 3 [Developer's Guide](https://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7ea9.html)
states that ActionScript 3.0 implements regular expressions as defined in the
ECMAScript 3 specification, but additionally adds [named capture groups](https://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7e9a.html#WS5b3ccc516d4fbf351e63e3d118a9b90204-7e9a__WS5b3ccc516d4fbf351e63e3d118a9b90204-7e80).
It also documents the [`x` flag](https://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7ea7.html),
but does not note that it is not a part of ECMAScript 3.

The [draft AS3 Language Specification](https://archives.ecma-international.org/2005/misc/as3lang.pdf)
does not describe `RegExp` semantics. Is there a better specification?

## Implementations

I've reviewed each of the similar projects listed in Ruffle's [Helpful Resources](https://github.com/ruffle-rs/ruffle/wiki/Helpful-Resources#similar-projects)
for how they handle `RegExp`. The [open source Flash petition](https://github.com/open-source-flash/open-source-flash)
also has a good list.

### Ruffle

Ruffle uses a [fork of regress](../libs/regress.md#evilpie-regress) as its
`RegExp` engine, implemented in [regexp.rs](https://github.com/ruffle-rs/ruffle/blob/master/core/src/avm2/regexp.rs)
and [RegExp.as](https://github.com/ruffle-rs/ruffle/blob/master/core/src/avm2/globals/RegExp.as).
regress implements the `RegExp` syntax of ECMAScript 2018, has more features
than ECMAScript 3 and is missing the AS3 additions.

From a survey of Ruffle issues and PRs relating to regular expressions, the
following are the incompatibilities that have been observed. All issues are from
differences between ECMAScript 3 and AS3 syntaxes.

- `(?P<name>…)` named captures are used by AS3 programs
  but [ECMAScript 3] has no named captures (see 15.10.1) and ECMAScript 2018 has
  named captures with `(?<name>…)` syntax (see [21.2.1](https://262.ecma-international.org/9.0/#prod-GroupSpecifier)).
  Issues:
  [#13278](https://github.com/ruffle-rs/ruffle/issues/13278),
  [#10395](https://github.com/ruffle-rs/ruffle/issues/10395),
  [#10511](https://github.com/ruffle-rs/ruffle/issues/10511),
  [#14938](https://github.com/ruffle-rs/ruffle/issues/14938),
  [#16719](https://github.com/ruffle-rs/ruffle/issues/16719),
  [#20019](https://github.com/ruffle-rs/ruffle/issues/20019)
- `x` extended flag are used by AS3 programs
  but not [ECMAScript 3] (see 15.10.4.1) or ECMAScript 2018 (see [12.2.8.1](https://262.ecma-international.org/9.0/#sec-primary-expression-regular-expression-literals-static-semantics-early-errors)).
  Issues:
  [#13965](https://github.com/ruffle-rs/ruffle/issues/13965),
  [#20389](https://github.com/ruffle-rs/ruffle/issues/20389)
- PCRE-style `(#comment)` comments were implemented in evilpie regress, but it
  is unclear whether this was supported by AS3. Neither ECMASCript 3 nor 2018
  include it.
  Issues: none

[ECMAScript 3]: https://ecma-international.org/wp-content/uploads/ECMA-262_3rd_edition_december_1999.pdf

### avmplus

avmplus (also known as [Tamarin](https://en.wikipedia.org/wiki/Tamarin_(software)))
implements `RegExp` in:

- [RegExp.as](https://github.com/adobe/avmplus/blob/master/core/RegExp.as)
- [RegExp.cpp](https://github.com/adobe/avmplus/blob/master/core/RegExp.cpp),
  [h](https://github.com/adobe/avmplus/blob/master/core/RegExp.h)
- [RegExpClass.cpp](https://github.com/adobe/avmplus/blob/master/core/RegExpClass.cpp),
  [h](https://github.com/adobe/avmplus/blob/master/core/RegExpClass.h)
- [RegExpObject.cpp](https://github.com/adobe/avmplus/blob/master/core/RegExpObject.cpp),
  [h](https://github.com/adobe/avmplus/blob/master/core/RegExpObject.h)

It uses a [modified version](https://github.com/adobe/avmplus/tree/master/pcre)
of PCRE 7.3 and includes a [copy](https://github.com/adobe/avmplus/tree/master/pcre2)
of PCRE 10.20, but does not use it.

The [initial commit](https://github.com/adobe/avmplus/commit/65a05927767f3735db37823eebf7d743531f5d37)
of avmplus records that it is the source code for the ActionScript VM in the
Adobe Flash Player for December 2013.

More background on Tamarin is on [Wikipedia](https://en.wikipedia.org/wiki/Tamarin_(software)),
formerly on [MDN](https://web.archive.org/web/20161003214723/https://developer.mozilla.org/en-US/docs/Archive/Mozilla/Tamarin),
and in [response](https://github.com/open-source-flash/open-source-flash/issues/54)
to a petition to open-source Adobe Flash Player.

### Lightspark

Lightspark [uses](https://github.com/lightspark/lightspark/issues/224) PCRE from
avmplus in [RegExp.h] and [RegExp.cpp].

Which version of PCRE is this and why was it selected?

[RegExp.h]: https://github.com/lightspark/lightspark/blob/master/src/scripting/toplevel/RegExp.h
[RegExp.cpp]: https://github.com/lightspark/lightspark/blob/master/src/scripting/toplevel/RegExp.cpp

### Shumway and AwayFL

[Mozilla Shumway](../convert/shumway.md) parses and converts AS3 patterns to
equivalent JavaScript semantics. [AwayFL](../convert/shumway.md#awayfl) is
derived from Shumway's implementation.

### Others

[GNU Gnash](https://www.gnu.org/software/gnash/), [swf2js](https://github.com/swf2js/swf2js),
[swfdec](https://github.com/mltframework/swfdec), and seemingly [OpenFL](https://github.com/openfl/openfl)
do not implement `RegExp`. [WAFlash](https://vidkidz.github.io/) is
closed-source, so I did not investigate it.

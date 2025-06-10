# Shumway

Mozilla Shumway parses and converts AS3 patterns and flags to equivalent
JavaScript semantics, implemented in [RegExp.as] and [`ASRegExp`]. It probably
targets ECMAScript 5.1 `RegExp` semantics, as it was [written](https://github.com/mozilla/shumway/blob/2bbdb5ce0db7796bfd832dc26c6ec25737eb15d7/src/avm2/nat.ts#L1659-L1926)
just before ECMAScript 2015 was published.

Shumway converts the following syntax:
- Removes `s` dot-all flag and, when set, replaces `.` with `[\s\S]`
- Removes `x` extended flag and, when set, removes ASCII space ` `
- Removes unrecognized flags (flags other than `s` `x` `g` `i` `x`)
- Translates `(?P<name>…)` named capture groups to `(…)` capture groups and a
  lookup table
- Restricts patterns to at most 406 capture groups to match tested behavior
  (of SpiderMonkey or AS3?)
- Replaces detected invalid syntax with an unmatchable pattern

The [first implementation](https://github.com/mozilla/shumway/blob/84cafb5801e83ee12e8b3889b25a352d05befa1d/src/avm2/native.ts#L1668-L1814)
of `ASRegExp` in Shumway delegated to a [vendored version](https://github.com/mozilla/shumway/blob/84cafb5801e83ee12e8b3889b25a352d05befa1d/src/avm2/xregexp.ts)
of the [XRegExp](../libs/xregexp.md) library, which converts its own extended
syntax to JavaScript syntax. The [commit log](https://github.com/mozilla/shumway/commit/2bbdb5ce0db7796bfd832dc26c6ec25737eb15d7)
for the current implementation indicates that more tests pass than when XRegExp
was used, suggesting that XRegExp syntax was not a design inspiration for the
AS3 language authors.

Shumway has a few [`RegExp`-specific tests](https://github.com/mozilla/shumway/tree/master/test/avm2/acceptance/as3/RegExp).

[RegExp.as]: https://github.com/mozilla/shumway/blob/master/src/libs/builtin/RegExp.as
[`ASRegExp`]: https://github.com/mozilla/shumway/blob/master/src/avm2/nat.ts#L1800-L2075

## AwayFL

AwayFL does the same thing as Shumway in [`ASRegExp`](https://github.com/awayfl/avm2/blob/dev/lib/nat/ASRegExp.ts).
Their [initial version](https://github.com/awayfl/swf-loader/blob/b4579d10decc98d0d5a177ead132d2bcc15244df/lib/factories/avm2/nat.ts#L1800-L2075)
is copied verbatim from Shumway and changes have been made since. Before
@awayfl/avm2 was [extracted](https://github.com/awayfl/avm2/commit/d8217f69da85104840f229cb2994f81f1576993a)
as a separate package, it existed as a [subdirectory of @awayfl/swf-viewer](https://github.com/awayfl/swf-loader/tree/v0.3.134/lib/factories/avm2),
where the Git history continues.

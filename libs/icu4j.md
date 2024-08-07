# ICU4J

[[src](https://github.com/unicode-org/icu)] [[Wikipedia](https://en.wikipedia.org/wiki/International_Components_for_Unicode)]

ICU4J is a Java library for internationalization, which constitutes ICU
(International Components for Unicode) along with [ICU4C](icu4c.md), and has
some regular expression features.

`UnicodeRegex` extends [`java.util.regex`](../langs/java.md) pattern syntax with
Unicode properties by converting pattern strings. It also supports a BNF syntax,
which it compiles to pattern strings. `UnicodeRegex` is not public or used in
library code, only used in tests[^non-public].

ICU4J influenced the JDK[^java-i18n] [^icu-history]; however it needs to be
established whether this includes anything related to regular expressions.

[^non-public]: https://github.com/unicode-org/icu/commit/1310bace9c28d1c3dac782437859ad57d0f3da83
[^java-i18n]: https://icu-project.org/docs/papers/history_of_java_internationalization.html
[^icu-history]: https://unicode-org.github.io/icu/userguide/icu/#background-and-history-of-icu

## Docs

`UnicodeRegex` [[src](https://github.com/unicode-org/icu/tree/main/icu4j/main/core/src/main/java/com/ibm/icu/impl/UnicodeRegex.java)]

`UnicodeRegex.transform`:

> Adds full Unicode property support, with the latest version of Unicode,
> to Java Regex, bringing it up to Level 1 (see
> http://www.unicode.org/reports/tr18/). It does this by preprocessing the
> regex pattern string and interpreting the character classes (\p{...},
> \P{...}, [...]) according to their syntax and meaning in UnicodeSet. With
> this utility, Java regex expressions can be updated to work with the
> latest version of Unicode, and with all Unicode properties. Note that the
> UnicodeSet syntax has not yet, however, been updated to be completely
> consistent with Java regex, so be careful of the differences.
>
> Not thread-safe; create a separate copy for different threads.
>
> In the future, we may extend this to support other regex packages.
>
> - @param regex A modified Java regex pattern, as in the input to
>          Pattern.compile(), except that all "character classes" are
>          processed as if they were UnicodeSet patterns. Example:
>          "abc[:bc=N:]. See UnicodeSet for the differences in syntax.
> - @return A processed Java regex pattern, suitable for input to
>           Pattern.compile().

`UnicodeRegex.compileBnf`:

> Compile a composed string from a set of BNF lines, such as for composing a regex
> expression. The lines can be in any order, but there must not be any
> cycles. The result can be used as input for fix().
>
> Example:
>
> ```
> uri = (?: (scheme) \\:)? (host) (?: \\? (query))? (?: \\u0023 (fragment))?;
> scheme = reserved+;
> host = // reserved+;
> query = [\\=reserved]+;
> fragment = reserved+;
> reserved = [[:ascii:][:alphabetic:]];
> ```
>
> Caveats: at this point the parsing is simple; for example, # cannot be
> quoted (use \\u0023); you can set it to null to disable.
> The equality sign and a few others can be reset with
> setBnfX().
>
> - @param lines Series of lines that represent a BNF expression. The lines contain
>          a series of statements that of the form x=y;. A statement can take
>          multiple lines, but there can't be multiple statements on a line.
>          A hash quotes to the end of the line.
> - @return Pattern

`UnicodeSet` [[src](https://github.com/unicode-org/icu/tree/main/icu4j/main/core/src/main/java/com/ibm/icu/text/UnicodeSet.java)]
[[docs](https://unicode-org.github.io/icu-docs/apidoc/dev/icu4j/com/ibm/icu/text/UnicodeSet.html)]

> A mutable set of Unicode characters and multicharacter strings.
> Objects of this class represent *character classes* used
> in regular expressions. A character specifies a subset of Unicode
> code points.  Legal code points are U+0000 to U+10FFFF, inclusive.
>
> Note: method freeze() will not only make the set immutable, but
> also makes important methods much higher performance:
> contains(c), containsNone(...), span(...), spanBack(...) etc.
> After the object is frozen, any subsequent call that wants to change
> the object will throw UnsupportedOperationException.
>
> The UnicodeSet class is not designed to be subclassed.
>
> `UnicodeSet` supports two APIs. The first is the
> *operand* API that allows the caller to modify the value of
> a `UnicodeSet` object. It conforms to Java 2's
> `java.util.Set` interface, although
> `UnicodeSet` does not actually implement that
> interface. All methods of `Set` are supported, with the
> modification that they take a character range or single character
> instead of an `Object`, and they take a
> `UnicodeSet` instead of a `Collection`.  The
> operand API may be thought of in terms of boolean logic: a boolean
> OR is implemented by `add`, a boolean AND is implemented
> by `retain`, a boolean XOR is implemented by
> `complement` taking an argument, and a boolean NOT is
> implemented by `complement` with no argument.  In terms
> of traditional set theory function names, `add` is a
> union, `retain` is an intersection, `remove`
> is an asymmetric difference, and `complement` with no
> argument is a set complement with respect to the superset range
> `MIN_VALUE-MAX_VALUE`
>
> The second API is the
> `applyPattern()`/`toPattern()` API from the
> `java.text.Format`-derived classes.  Unlike the
> methods that add characters, add categories, and control the logic
> of the set, the method `applyPattern()` sets all
> attributes of a `UnicodeSet` at once, based on a
> string pattern.
>
> **Pattern syntax**
>
> Patterns are accepted by the constructors and the
> `applyPattern()` methods and returned by the
> `toPattern()` method.  These patterns follow a syntax
> similar to that employed by version 8 regular expression character
> classes.  Here are some simple examples:
>
> | | |
> | - | - |
> | `[]` | No characters |
> | `[a]` | The character 'a' |
> | `[ae]` | The characters 'a' and 'e' |
> | `[a-e]` | The characters 'a' through 'e' inclusive, in Unicode code point order |
> | `[\\u4E01]` | The character U+4E01 |
> | `[a{ab}{ac}]` | The character 'a' and the multicharacter strings "ab" and "ac" |
> | `[\p{Lu}]` | All characters in the general category Uppercase Letter |
>
> Any character may be preceded by a backslash in order to remove any special
> meaning.  White space characters, as defined by the Unicode Pattern_White_Space property, are
> ignored, unless they are escaped.
>
> Property patterns specify a set of characters having a certain
> property as defined by the Unicode standard.  Both the POSIX-like
> "[:Lu:]" and the Perl-like syntax "\p{Lu}" are recognized.  For a
> complete list of supported property patterns, see the User's Guide
> for UnicodeSet at
> <https://unicode-org.github.io/icu/userguide/strings/unicodeset>.
> Actual determination of property data is defined by the underlying
> Unicode database as implemented by UCharacter.
>
> Patterns specify individual characters, ranges of characters, and
> Unicode property sets.  When elements are concatenated, they
> specify their union.  To complement a set, place a '^' immediately
> after the opening '['.  Property patterns are inverted by modifying
> their delimiters; "[:^foo]" and "\P{foo}".  In any other location,
> '^' has no special meaning.
>
> Since ICU 70, "[^...]", "[:^foo]", "\P{foo}", and "[:binaryProperty=No:]"
> perform a “code point complement” (all code points minus the original set),
> removing all multicharacter strings,
> equivalent to .[`complement()`].[`removeAllStrings()`] .
> The [`complement()`] API function continues to perform a
> symmetric difference with all code points and thus retains all multicharacter strings.
>
> Ranges are indicated by placing two a '-' between two
> characters, as in "a-z".  This specifies the range of all
> characters from the left to the right, in Unicode order.  If the
> left character is greater than or equal to the
> right character it is a syntax error.  If a '-' occurs as the first
> character after the opening '[' or '[^', or if it occurs as the
> last character before the closing ']', then it is taken as a
> literal.  Thus "[a\\-b]", "[-ab]", and "[ab-]" all indicate the same
> set of three characters, 'a', 'b', and '-'.
>
> Sets may be intersected using the '&' operator or the asymmetric
> set difference may be taken using the '-' operator, for example,
> "[[:L:]&[\\u0000-\\u0FFF]]" indicates the set of all Unicode letters
> with values less than 4096.  Operators ('&' and '|') have equal
> precedence and bind left-to-right.  Thus
> "[[:L:]-[a-z]-[\\u0100-\\u01FF]]" is equivalent to
> "[[[:L:]-[a-z]]-[\\u0100-\\u01FF]]".  This only really matters for
> difference; intersection is commutative.
>
> | | |
> | - | - |
> | `[a]` | The set containing 'a' |
> | `[a-z]` | The set containing 'a' through 'z' and all letters in between, in Unicode order |
> | `[^a-z]` | The set containing all characters but 'a' through 'z', that is, U+0000 through 'a'-1 and 'z'+1 through U+10FFFF |
> | `[[*pat1*][*pat2*]]` | The union of sets specified by *pat1* and *pat2* |
> | `[[*pat1*]&[*pat2*]]` | The intersection of sets specified by *pat1* and *pat2* |
> | `[[*pat1*]-[*pat2*]]` | The asymmetric difference of sets specified by *pat1* and *pat2* |
> | `[:Lu:] or \p{Lu}` | The set of characters having the specified Unicode property; in this case, Unicode uppercase letters |
> | `[:^Lu:] or \P{Lu}` | The set of characters *not* having the given Unicode property |
>
> **Formal syntax**
>
> ```
>      pattern := ('[' '^'? item* ']') | property
>         item := char | (char '-' char) | pattern-expr
> pattern-expr := pattern | pattern-expr pattern | pattern-expr op pattern
>           op := '&' | '-'
>      special := '[' | ']' | '-'
>         char := any character that is not special
>                 | ('\\' any character)
>                 | ('\u' hex hex hex hex)
>          hex := '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' |
>                     'A' | 'B' | 'C' | 'D' | 'E' | 'F' | 'a' | 'b' | 'c' | 'd' | 'e' | 'f'
>     property := a Unicode property set pattern
> ```
>
> | Legend: | |
> | - | - |
> | `a := b` | `a` may be replaced by `b` |
> | `a?` | zero or one instance of `a` |
> | `a*` | one or more instances of `a` |
> | `a \| b` | either `a` or `b` |
> | `'a'` | the literal string between the quotes |
>
> To iterate over contents of UnicodeSet, the following are available:
> - [`ranges()`] to iterate through the ranges
> - [`strings()`] to iterate through the strings
> - [`iterator()`] to iterate through the entire contents in a single loop.
>   That method is, however, not particularly efficient, since it "boxes" each code point into a String.
>
> All of the above can be used in **for** loops.
> The [`UnicodeSetIterator`] can also be used, but not in **for** loops.
>
> To replace, count elements, or delete spans, see [`UnicodeSetSpanner`].
>
> - @author Alan Liu
> - @stable ICU 2.0
> - @see UnicodeSetIterator
> - @see UnicodeSetSpanner

[`complement()`]: https://unicode-org.github.io/icu-docs/apidoc/dev/icu4j/com/ibm/icu/text/UnicodeSet.html#complement--
[`removeAllStrings()`]: https://unicode-org.github.io/icu-docs/apidoc/dev/icu4j/com/ibm/icu/text/UnicodeSet.html#removeAllStrings--
[`ranges()`]: https://unicode-org.github.io/icu-docs/apidoc/dev/icu4j/com/ibm/icu/text/UnicodeSet.html#ranges--
[`strings()`]: https://unicode-org.github.io/icu-docs/apidoc/dev/icu4j/com/ibm/icu/text/UnicodeSet.html#strings--
[`iterator()`]: https://unicode-org.github.io/icu-docs/apidoc/dev/icu4j/com/ibm/icu/text/UnicodeSet.html#iterator--
[`UnicodeSetIterator`]: https://unicode-org.github.io/icu-docs/apidoc/dev/icu4j/com/ibm/icu/text/UnicodeSetIterator.html
[`UnicodeSetSpanner`]: https://unicode-org.github.io/icu-docs/apidoc/dev/icu4j/com/ibm/icu/text/UnicodeSetSpanner.html

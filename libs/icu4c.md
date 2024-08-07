# ICU4C

[[src](https://github.com/unicode-org/icu)] [[Wikipedia](https://en.wikipedia.org/wiki/International_Components_for_Unicode)]

ICU4J is a C/C++ library for internationalization, which constitutes ICU
(International Components for Unicode) along with [ICU4J](icu4j.md), and has a
regular expression engine.

> ICU’s Regular Expressions package provides applications with the ability to
> apply regular expression matching to Unicode string data. The regular
> expression patterns and behavior are based on Perl’s regular expressions. The
> C++ programming API for using ICU regular expressions is loosely based on the
> JDK 1.4 package java.util.regex, with some extensions to adapt it for use in a
> C++ environment. A plain C API is also provided.
>
> The ICU Regular expression API supports operations including testing for a
> pattern match, searching for a pattern match, and replacing matched text.
> Capture groups allow subranges within an overall match to be identified, and
> to appear within replacement text.
>
> A Perl-inspired split() function that breaks a string into fields based on a
> delimiter pattern is also included.
>
> ICU Regular Expressions conform to version 19 of the [Unicode Technical
> Standard #18](http://www.unicode.org/reports/tr18/), Unicode Regular
> Expressions, level 1, and in addition include Default Word boundaries and Name
> Properties from level 2. [^docs]

[^docs]: https://unicode-org.github.io/icu/userguide/strings/regexp.html

## Users

- [SQLite](../langs/sql.md#sqlite) uses `unicode/uregex.h` for its regular
  expressions.

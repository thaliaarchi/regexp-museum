# Regex+

[[src](https://github.com/slevithan/regex)]

Regex+ is a library by Steven Levithan that extends ECMAScript 2025 regular
expression syntax. Features include always enabling `x` extended syntax and
converting some patterns that can cause ReDoS. It can be used dynamically as a
library or at bundle time as a [Babel plugin](https://github.com/slevithan/babel-plugin-transform-regex).

Utilities from it for manipulating patterns without a full parser and AST are
exposed as the [regex-utilities](https://github.com/slevithan/regex-utilities)
library. When used via the Babel plugin, it can optimize patterns with the
[regexp-tree](https://github.com/DmitrySoshnikov/regexp-tree) library.

[Inspired](https://github.com/slevithan/regex#%EF%B8%8F-about) by [PCRE](../libs/pcre.md),
[XRegExp](xregexp.md) (by the same author), and [regexp-make-js](regexp_make_js.md).

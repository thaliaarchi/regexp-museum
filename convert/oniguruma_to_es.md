# Oniguruma-To-ES

[[src](https://github.com/slevithan/oniguruma-to-es)]

JavaScript library by Steven Levithan to translate Oniguruma regular expression
patterns to ECMAScript 2018, 2024, or 2025.

Its parser is factored out as a library, [oniguruma-parser](https://github.com/slevithan/oniguruma-parser),
which parses patterns to an AST and enables optimizing patterns. It also has a
plugin, [regex-recursion](https://github.com/slevithan/regex-recursion/tree/main),
for enabling bounded recursion up to depth 100 by duplicating the pattern.

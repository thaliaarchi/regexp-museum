# Racket regexp

Racket has two regular expression syntaxes, regexp, which is like Unix egrep,
and pregexp, which is like Perl. Separate procedures compile regexps that
operate on strings or byte strings. Literal and printed regexps start with `#rx`
or `#px`. It uses backtracking.

Regular expressions are specified in [The Racket Reference](https://docs.racket-lang.org/reference/regexp.html),
including the grammars and a type system for semantic constraints, and
introduced in [The Racket Guide](https://docs.racket-lang.org/guide/regexp.html).

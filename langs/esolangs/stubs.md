# Stubs

## Defer to host engine

These esolangs defer to a host regular expression engine.

- [Gecko](https://esolangs.org/wiki/Gecko): String rewriting with Racket regular
  expressions.
- [RegRep](https://esolangs.org/wiki/RegRep): String rewriting with JavaScript
  regular expressions.
- [REGXY](https://esolangs.org/wiki/REGXY): String rewriting with Perl regular
  expressions.
- [Tetanus](https://esolangs.org/wiki/Tetanus): String rewriting with a single
  [mrab-regex](../python.md#python-re-sre) regular expression. A Tetanus program
  consists of a regular expression, a replacement string, and a data string.
  Group references in replacement strings are augmented with two possible
  suffixes (which are removed): `~` prints the matched group to stdout and
  `` ` `` appends a line from stdin to the data string. Execution repeatedly
  replaces matches in the data string until the pattern does not match.

## Unimplemented

These esolangs are have no implementation and are not sufficiently defined.

- [AnyGolf](https://esolangs.org/wiki/AnyGolf): Has a regular expression replace
  operation.
- [ODDBALL](https://esolangs.org/wiki/ODDBALL): Has regular expressions.
- [SynDev](https://esolangs.org/wiki/SynDev): A language for writing grammars.
  Syntax:
  - `(`…`)` character classes
  - `[`…`]` alternation
  - prefix `*` zero-or-more repetition
  - prefix `+` one-or-more repetition
  - prefix `?` zero-or-one repetition
  - `%` named character classes (like `%d` for `\d` or `%A` for the inverse of
    `%a`)
  - `"`-string literals
  - `#` comments
- [Writeover](https://esolangs.org/wiki/Writeover): A language that describes
  and lists a set of strings. It can only do alternation and optional and uses
  spaces for grouping.

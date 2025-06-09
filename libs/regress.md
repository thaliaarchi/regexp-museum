# regress

[[src](https://github.com/ridiculousfish/regress)]

regress is a backtracking regular expression written by Peter Ammon
(ridiculousfish) in Rust, which [implements](https://docs.rs/regress/latest/regress/#supported-syntax)
the `RegExp` syntax of ECMAScript 2018. It does not depend on Rust `regex` and
has minimal dependencies.

## evilpie regress

Tom Schuster's [fork](https://github.com/evilpie/regress/tree/as3) of regress
adds support for syntax used by ActionScript 3:
- PCRE-style `(?#comment)` comments
- PCRE `x` extended flag
- Python-style `(?P<name>…)` named capture groups

## Users

- Boa, a JavaScript engine, uses regress [[src](https://github.com/boa-dev/boa/blob/main/core/engine/src/builtins/regexp/mod.rs)]
- Ruffle, an Flash emulator, uses evilpie regress

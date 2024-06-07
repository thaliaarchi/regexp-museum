# TODO

- [TODO for esoteric programming languages](langs/esolangs/TODO.md)
- [TODO for greps](greps/TODO.md)
- [TODO for libraries](libs/TODO.md)
- [TODO for programming languages](langs/TODO.md)
- [TODO for text editors](editors/TODO.md)
- Engines included in and [wanted](https://github.com/BurntSushi/rebar/blob/master/WANTED.md)
  for rebar
- Databases
  - PostgreSQL
  - MongoDB

## Research

- Wikipedia [Regular expression](https://en.wikipedia.org/wiki/Regular_expression)
  describes history and POSIX and Perl standards
- Wikipedia [Comparison of regular expression engines](https://en.wikipedia.org/wiki/Comparison_of_regular_expression_engines)
- A [discussion](https://news.ycombinator.com/item?id=33566557) on Thompson's
  patent has many leads
  - Glushkov automata [[HN](https://news.ycombinator.com/item?id=33567087)]
- A [discussion](https://news.ycombinator.com/item?id=32435303#32445174) on why
  intersection and complement are difficult to implement efficiently with large
  alphabets (Unicode)
- Xerox Research Europe's xfst [[HN](https://news.ycombinator.com/item?id=32434705)]
  [[demo](https://dsacl3-2018.github.io/xfst-demo/)]
- Archive and search comp.sources.unix [[archive](https://sources.vsta.org/comp.sources.unix/)]
  [[mirror](https://github.com/Cutlery-Drawer/comp.sources.unix)]

## Exhibits

Extract every engine as a library and wrap each in a consistent C, Rust, and
WebAssembly API. Integrate them with Rebar.

Build an interactive demo, that allows you to convert between dialects using
InterRegexp and test expressions on text like Regexr, but executing the engines
locally via WebAssembly.

Implement each engine with an interactive mode, so you can step through
execution of the same pattern with multiple engines at once and visually compare
their strategies. This could help demonstrate cases of catastrophic backtracking
or showcase engines with efficient algorithmic complexity.

Make nicely-rendered grammars like the regexp grammar in [The Racket Reference](https://docs.racket-lang.org/reference/regexp.html).

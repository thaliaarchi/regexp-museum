# TODO

- [TODO for esoteric programming languages](langs/esolangs/TODO.md)
- [TODO for greps](greps/TODO.md)
- [TODO for libraries](libs/TODO.md)
- [TODO for papers](papers/TODO.md)
- [TODO for programming languages](langs/TODO.md)
- [TODO for text editors](editors/TODO.md)
- Engines included in and [wanted](https://github.com/BurntSushi/rebar/blob/master/WANTED.md)
  for rebar
- Engines listed in Steven Levithan's [Awesome Regex](https://github.com/slevithan/awesome-regex).
- Databases
  - PostgreSQL
  - MongoDB
- Standards category: I-Regexp, UTS #18, ECMAScript
- Parsers category: yacc, lex, Flex, Bison, Kleenex
- For `libfa`, an automata category or to libraries?

## Sources

- [RegElk](https://github.com/epfl-systemf/RegElk)
  - [“Linear Matching of JavaScript Regular Expressions”](https://dl.acm.org/doi/10.1145/3656431)
    by Aurèle Barrière and Clément Pit-Claudel (2024)
  - V8 patch [“Reland "[regexp] Adding Captureless Lookbehinds in
    Experimental"”](https://chromium-review.googlesource.com/c/v8/v8/+/5093860)
  - [“Adding linear-time lookbehinds to RE2”](https://systemf.epfl.ch/blog/re2-lookbehinds/)
    by Erik Giorgis (2024-08-23)
  - Rust `regex` PR#1266 [“Add support for unbounded look-behind expressions”](https://github.com/rust-lang/regex/pull/1266)
    (2025-05-15)
  - Referenced:
    - V8 [“An additional non-backtracking RegExp engine”](https://v8.dev/blog/non-backtracking-regexp)
      (2021-01-11)
    - .NET [“Regular Expression Improvements in .NET 7”](https://devblogs.microsoft.com/dotnet/regular-expression-improvements-in-dotnet-7/)
      (2022-05-12). Where was this referenced?
- [“RE#: High Performance Derivative-Based Regex Matching with Intersection,
  Complement and Lookarounds”](https://arxiv.org/abs/2407.20479)
  - [Discussion](https://news.ycombinator.com/item?id=44633024)
    - Source repo <https://github.com/ieviev/resharp> dead link
    - Merged into .NET in PR#102655 [“NonBacktracking Regex optimizations”](https://github.com/dotnet/runtime/pull/102655)
      (2024-05-24)
    - [TXR](https://www.nongnu.org/txr/) language has innovative regular
      expressions
- [“The many, many, many JavaScript runtimes of the last decade”](https://buttondown.com/whatever_jamie/archive/the-many-many-many-javascript-runtimes-of-the-last-decade/)
  (2025-07-27)
  - [Discussion](https://news.ycombinator.com/item?id=44701574)
- CTSS QED
  - Regular expression engine appears to be in
    [ctss-1.0.11.source.tar.gz/com5/qed.fap](https://www.cozx.com/dpitts/tarballs/ibm709x/ctss-1.0.11.source.tar.gz),
    judging by `COMPIL` and `ADVANC` symbols
- Rob Pike's regexp in Forth [[TUHS](https://www.tuhs.org/pipermail/tuhs/2025-September/032533.html)]

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

Organize engines into a tree like eylenburg's [operating system](https://eylenburg.github.io/os_familytree.htm)
timeline and family tree, which is generated from [CSVs](https://github.com/eylenburg/os-family-tree)
with [gnuclad](https://github.com/FabioLolix/gnuclad). Solid lines would denote
code forks, dotted would denote algorithm or syntax borrowing, and colors would
group families (e.g., Spencer, RE2).

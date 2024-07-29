# Regular expression implementations

- [Acme](editors/acme.md)
- [ActionScript 3 `RegExp`](langs/actionscript.md)
- [antirez `stringmatch`](langs/tcl/antirez_stringmatch.md)
- [AutoHotkey RegEx](libs/pcre.md#autohotkey-regex)
- [awk](langs/awk.md)
- [Bingo](editors/bingo.md)
- [Blackbeard](editors/blackbeard.md)
- [Boost.Regex](libs/boost.md)
- [Brief](editors/brief.md)
- [C++ `std::regex`](langs/cpp.md)
- [Clojure re](langs/java.md#clojure-re)
- [CRiSP](editors/crisp.md)
- [D](langs/d.md)
- [DECUS grep](greps/decus.md)
- [ed](editors/ed.md)
- [Elvis](editors/elvis.md)
- [Emacs](editors/emacs.md)
- [EVE](editors/eve.md)
- [ex](editors/ex.md)
- [GNU Emacs](editors/gnu_emacs.md)
- [GNU fgrep](greps/gnu.md#gnu-fgrep)
- [GNU grep](greps/gnu.md#gnu-grep)
- [GNU sed](editors/gnu_sed.md)
- [Go `regexp`](langs/go.md)
- [Gosling Emacs](editors/gosling_emacs.md)
- [Ian Ashdown's fgrep](greps/ashdown_fgrep.md)
- [Java `java.util.regex`](langs/java.md)
- [JavaScript `RegExp`](langs/javascript.md)
- [Jerry Coffin's JGREP](greps/jgrep.md)
- [Jim](langs/tcl/jim.md)
- [*Logical Foundations*](edu/lf.md)
- [McIlroy `regex`](libs/mcilroy.md)
- [Montgomery Emacs](editors/montgomery_emacs.md)
- [NED](editors/ned.md)
- [Oniguruma](libs/oniguruma.md)
- [PCRE](libs/pcre.md)
- [Perl](langs/perl.md)
- [Plan 9 grep](greps/plan9.md)
- [POSIX `regex.h`](libs/posix.md)
- [Python](langs/python.md)
- [QED](editors/qed.md)
- [Racket regexp](langs/racket.md)
- [re1](edu/re1.md)
- [RE2](libs/re2.md)
- [REC](langs/rec.md)
- [ripgrep](greps/ripgrep.md)
- [rn](viewers/rn.md)
- [Ruby](langs/ruby.md)
- [Rust `regex`](langs/rust.md)
- [S-Lang SLregexp and SLsearch](langs/slang.md)
- [sam](editors/sam.md)
- [Scala `scala.util.matching.Regex`](java.md#scala-scalautilmatchingregex)
- [Scala.js](java.md#scalajs)
- [Sortle](langs/esolangs/sortle.md)
- [Spencer `regexp`](libs/spencer.md)
- [SQL](langs/sql.md)
- [Tcl](langs/tcl.md)
- [Tech-Edit](editors/tech-edit.md)
- [*The Practice of Programming*](edu/tpop.md)
- [Unix egrep](greps/unix_egrep.md)
- [Unix fgrep](greps/unix_fgrep.md)
- [Unix gre](greps/unix_gre.md)
- [Unix grep](greps/unix_grep.md)
- [Unix `regexp`](libs/unix_regexp.md)
- [Unix sed](editors/unix_sed.md)
- [Zeus Programmers Editor](editors/zeus.md)

## Uncategorized

- Code Search [[src](https://github.com/google/codesearch)]

  Background in [“Regular Expression Matching with a Trigram Index—or—How Google
  Code Search Worked”](https://swtch.com/~rsc/regexp/regexp4.html) by Russ Cox (2012)

- ECMAScript `RegExp`

  - XRegExp [[src](https://github.com/slevithan/xregexp)]: extended parsing for
    JavaScript `RegExp`

- exrex [[src](https://github.com/asciimoo/exrex)]

  Author: Adam Tauber (2012)

  Generates all or random matching strings to a regexp.

  TODO: Evaluate its similar projects.

- Flex [[Wikipedia](https://en.wikipedia.org/wiki/Flex_(lexical_analyser_generator))]

  - Flex 2.5.2 ported to OpenVMS [src [v20](https://www.digiater.nl/openvms/freeware/v20/flex-2_5_2/),
    [v30](https://www.digiater.nl/openvms/freeware/v30/flex-2_5_2/),
    …]

- GNU Bison

  - Bison ported to OpenVMS [src [v20](https://www.digiater.nl/openvms/freeware/v20/bison-a2_3/) (Andrew Consortium Bison A2.3),
    [v30](https://www.digiater.nl/openvms/freeware/v30/bison-a2_3/) (Andrew Consortium Bison A2.3),
    …,
    [v80](https://www.digiater.nl/openvms/freeware/v80/bison/)]

- I-Regexp [[rfc](https://www.rfc-editor.org/rfc/rfc9485.html)]

  RFC 9485 I-Regexp: An Interoperable Regular Expression Format

- ICgrep [[site](https://web.archive.org/web/20220115035806/http://international-characters.com/icgrep)]
  [[architecture](https://coursys.sfu.ca/2021su-cmpt-489-x1/pages/icgrepIntro)]

  [Mirror](https://www.popowich.net/icgrep/)(?)

  Andrew Gallant says ICgrep implements (most of?) UTS #18 level 2 [[HN](https://news.ycombinator.com/item?id=32435303#32445174)].

- .NET `System.Text.RegularExpressions` [[docs](https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expressions)]

  - `dlclark/regexp2` [[src](https://github.com/dlclark/regexp2)]: port of .NET
    `System.Text.RegularExpressions` to Go, which has RE2 and ECMAScript
    compatibility modes

- Shell globs

- Truffle TRegex [[src](https://github.com/oracle/graal/tree/master/regex)]

  - GraalJS [src [object](https://github.com/oracle/graaljs/tree/master/graal-js/src/com.oracle.truffle.js/src/com/oracle/truffle/js/runtime/builtins/JSRegExp.java),
    [prototype](https://github.com/oracle/graaljs/tree/master/graal-js/src/com.oracle.truffle.js/src/com/oracle/truffle/js/builtins/RegExpPrototypeBuiltins.java),
    more]

- Unix `lex`

- Unix `yacc` [[Wikipedia](https://en.wikipedia.org/wiki/Yacc)]

- UTS #18: Unicode Regular Expressions [[standard](https://www.unicode.org/reports/tr18/)]

  Andrew Gallant has [discussed](https://news.ycombinator.com/item?id=32435303#32445174)
  why implementing UTS #18 level 2 is difficult and has rarely been done (e.g.,
  by ICgrep).

## Other

- Mattias Wadman's `libfa` [[src](https://github.com/wader/libfa)]: automata
  library in c to determinize, minimize, and translate regexps

  Author: Mattias Wadman

  > many many years ago i worked at a network equipment company and did my
  > unfinished master thesis about using software and hardware DFA:s for flow
  > classification. We wanted to use it do fancy QoE for tv/phone traffic but
  > customer wanted to block file sharing 🙂 anyway it never ended up being
  > used. but! years later i manged to convince my boss to open source most of
  > the library code i wrote, can be found here https://github.com/wader/libfa
  >
  > main idea was to be able to do a union of FA:s and while
  > determinize/minimize distinguish and keep track of original FA:s accepting
  > states
  >
  > Aug 14, 2015 i asked for permission to open source it, was ok:ed Nov 18,
  > 2015.
  >
  > the thesis has the date July 2, 2010 on the front page, not sure what that
  > means 🙂
  >
  > so i maybe started working on the code early 2010 or so

- Mike French's `myrex` [[src](https://github.com/mike-french/myrex)]
  [[HN](https://news.ycombinator.com/item?id=37098229)]: converts regexp via NFA
  to an Elixir process network

- `fancy_regex` [[src](https://github.com/fancy-regex/fancy-regex)]
  [[docs](https://docs.rs/fancy-regex/latest/fancy_regex/)]: hybrid NFA and
  backtracking engine, that delegates to Rust `regex` when possible

- Sri Panyam's [tlex](https://github.com/panyam/tlex): used Russ Cox's “Regular
  Expression Matching Can Be Simple And Fast” article as a reference [[HN](https://news.ycombinator.com/item?id=32435472)]

- Reini Urban's matcher for Asterisk [[src archive](https://github.com/rurban/asterisk-matcher)]
  [[HN](https://news.ycombinator.com/item?id=32435404)]

  Author: Reini Urban (2003)

  > 2003 I added a dynamic regular expression matcher to asterisk,
  > which has a weird synatx, but otherwise the matcher looked fine.
  >
  > In the end it was removed from CVS before a release without me
  > noticing because the variable capturing was not thread-safe. Would
  > have been trivial to fix.

  TODO: Archive it from CVS

  Influenced by Steffen Offermann's [`xstrcmp.c`](https://web.archive.org/web/20000829114643/http://www.cs.umu.se/~isak/Snippets/xstrcmp.c)
  (1991) from the Snippets Collection.

  - rurban/tiny-matcher [[src](https://github.com/rurban/tiny-matcher)] [[HN](https://news.ycombinator.com/item?id=32435404)]:
    extends it

- tiny-regex-c [[src](https://github.com/kokke/tiny-regex-c)]

  > Design is inspired by Rob Pike's regex-code for the book "Beautiful Code"
  > [available online here](http://www.cs.princeton.edu/courses/archive/spr09/cos333/beautiful.html).
  >
  > Supports a subset of the syntax and semantics of the Python standard library
  > implementation (the `re`-module).

  Formally verified using KLEE.

  - rurban/tiny-regex-c [[src](https://github.com/rurban/tiny-regex-c)]

## Benchmarks

- Mario Juárez's [Languages Regex Benchmark](https://github.com/mariomka/regex-benchmark)
- Andrew Gallant's [rebar](https://github.com/BurntSushi/rebar)
- [regex-redux](https://benchmarksgame-team.pages.debian.net/benchmarksgame/performance/regexredux.html)
  in the Computer Language Benchmarks Game

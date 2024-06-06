# Regular expression implementations

- [ActionScript 3 `RegExp`](langs/actionscript.md)
- [antirez `stringmatch`](langs/tcl/antirez_stringmatch.md)
- [Bingo Text Editor](editors/bingo.md)
- [Blackbeard Programmer's Editor](editors/blackbeard.md)
- [Boost.Regex](libs/boost.md)
- [Brief](editors/brief.md)
- [C++ `std::regex`](langs/cpp.md)
- [Clojure re](langs/java.md#clojure-re)
- [CRiSP](editors/crisp.md)
- [D](langs/d.md)
- [DECUS grep](greps/decus.md)
- [Elvis](editors/elvis.md)
- [Emacs](editors/emacs.md)
- [EVE](editors/eve.md)
- [GNU Emacs](editors/emacs.md#gnu-emacs)
- [GNU fgrep](greps/gnu.md#gnu-fgrep)
- [GNU grep](greps/gnu.md#gnu-grep)
- [Ian Ashdown's fgrep](greps/ashdown_fgrep.md)
- [Java `java.util.regex`](langs/java.md)
- [JavaScript `RegExp`](langs/javascript.md)
- [Jerry Coffin's JGREP](greps/jgrep.md)
- [NED](editors/ned.md)
- [PCRE](libs/pcre.md)
- [Perl](langs/perl.md)
- [Plan 9 grep](greps/plan9.md)
- [Python](langs/python.md)
- [QED](editors/qed.md)
- [Racket regexp](langs/racket.md)
- [Ruby](langs/ruby.md)
- [Rust `regex`](langs/rust.md)
- [S-Lang SLregexp and SLsearch](langs/slang.md)
- [sam](editors/sam.md)
- [Scala `scala.util.matching.Regex`](java.md#scala-scalautilmatchingregex)
- [Scala.js](java.md#scalajs)
- [Sortle](langs/esolangs/sortle.md)
- [Tcl](langs/tcl.md)
- [Tech-Edit](editors/tech-edit.md)
- [Zeus Programmers Editor](editors/zeus.md)

## Uncategorized

- awk

- Bash

- BSD grep

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

- GNU Gawk [[docs](https://www.gnu.org/software/gawk/manual/html_node/Regexp.html)]

  - GNU Gawk 2.15.6 ported to OpenVMS [src [v20](https://www.digiater.nl/openvms/freeware/v20/gawk-2_15_6/),
    [v30](https://www.digiater.nl/openvms/freeware/v30/gawk-2_15_6/),
    …]

- GNU `sed`

  The version 2.03 `readme` indicates that `sed` uses GNU `rx` and before that
  GNU `regex`.

  - GNU `sed` ported to OpenVMS [src [v30](https://www.digiater.nl/openvms/freeware/v30/sed-2-05/) (sed 2.05)
    …,
    [v80](https://www.digiater.nl/openvms/freeware/v80/sed/) (sed 2.03)]

- Go `regexp` [[src](https://github.com/golang/go/tree/master/src/regexp)]
  [[docs](https://pkg.go.dev/regexp)]

  - `rsc.io/binaryregexp` [[src](https://github.com/rsc/binaryregexp)]: simple
    fork of Go `regexp`, changing it to work on Latin1, instead of UTF-8

- I-Regexp [[rfc](https://www.rfc-editor.org/rfc/rfc9485.html)]

  RFC 9485 I-Regexp: An Interoperable Regular Expression Format

- ICgrep [[site](https://web.archive.org/web/20220115035806/http://international-characters.com/icgrep)]
  [[architecture](https://coursys.sfu.ca/2021su-cmpt-489-x1/pages/icgrepIntro)]

  [Mirror](https://www.popowich.net/icgrep/)(?)

  Andrew Gallant says ICgrep implements (most of?) UTS #18 level 2 [[HN](https://news.ycombinator.com/item?id=32435303#32445174)].

- [Logical Foundations](https://softwarefoundations.cis.upenn.edu/lf-current/IndProp.html#lab255)
  regular expressions case study

- McIlroy's `regex` [[src](https://github.com/arnoldrobbins/mcilroy-regex)]

  Author: Doug McIlroy

- .NET `System.Text.RegularExpressions` [[docs](https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expressions)]

  - `dlclark/regexp2` [[src](https://github.com/dlclark/regexp2)]: port of .NET
    `System.Text.RegularExpressions` to Go, which has RE2 and ECMAScript
    compatibility modes

- Oniguruma

  - Joni [[src](https://github.com/jruby/joni)]: Java port of Oniguruma
    - JRuby Joni [src [object](https://github.com/jruby/jruby/blob/master/core/src/main/java/org/jruby/RubyRegexp.java)]

- POSIX `regex.h`

  - SerenityOS LibRegex [[src](https://github.com/SerenityOS/serenity/tree/master/Userland/Libraries/LibRegex)]

- *The Practice of Programming* [[book](https://archive.org/details/practiceofprogra0000kern)]
  [[exegesis](https://www.cs.princeton.edu/courses/archive/spr09/cos333/beautiful.html)]

  Author: Rob Pike

  - Ben Hoyt ported it to Go in [“Rob Pike’s simple C regex matcher in Go”](https://benhoyt.com/writings/rob-pike-regex/)
    (2022) [[code](https://github.com/benhoyt/repike/tree/master)] [[HN](https://news.ycombinator.com/item?id=32434412)]
    - A commenter patched it to make the runtime runtime
      *O(len(pattern) \* len(text))* instead of exponential by memoizing
      failures [[HN](https://news.ycombinator.com/item?id=32434412#32436442)]
  - Shaya Potter ported it [to Java](https://github.com/sjpotter/regex) (2016)
    and [to Go](https://github.com/sjpotter/regex-go) (2019)
  - [“Collapsing Towers of Interpreters”](https://www.cs.purdue.edu/homes/rompf/papers/amin-popl18.pdf)
    by Nada Amin and Tiark Rompf (2018) implements this matcher with
    binding-time polymorphism

- re1 [[src](https://code.google.com/archive/p/re1/)] [[blog](https://swtch.com/~rsc/regexp/regexp2.html)]

  Author: Russ Cox

  - pfalcon/re1.5 [[src](https://github.com/pfalcon/re1.5)]: fork of re1 to add
    features for real-world use. Contains the Mercurial history of re1 migrated
    to git, with the only difference being that commits with an empty author
    name use `Unknown`.
    - kyx0r/pikevm [[src](https://github.com/kyx0r/pikevm)]: fork of re1.5 with
      only pikevm
  - jameysharp/pikevm [[src](https://github.com/jameysharp/pikevm)]: pikevm
    implementation in Rust

- RE2 [[src](https://github.com/google/re2)] [[syntax](https://github.com/google/re2/wiki/Syntax)]

- REC Regular Expression Compiler [[src](http://www.cpm.z80.de/download/rec.zip),
  [mirror](http://cpmarchives.classiccmp.org/cpm/mirrors/www.seanet.com/~klaw/files.htm)]

- `ripgrep` [[src](https://github.com/BurntSushi/ripgrep)]: uses Rust `regex`

- `rn` [[site](https://web.archive.org/web/19970401040656/http://www.academ.com/academ/rn.html)]
  [[history](https://web.archive.org/web/20140227213900/http://www.faqs.org:80/faqs/usenet/software/part1)]
  [[Wikipedia](https://en.wikipedia.org/wiki/Rn_(newsreader))]

  Author: Larry Wall

  `rn` used regular expressions for searching and in kill files to match email
  subjects. It was first released in 1984, while Perl was in 1987, so its engine
  was likely influential.

  - rrn [[Wikipedia](https://en.wikipedia.org/wiki/Rn_(newsreader))]

  - trn [[src](https://sourceforge.net/projects/trn/)] [[site](https://trn.sourceforge.net/)]
    [[usage](https://kb.iu.edu/d/abxg)] [[FreeBSD Ports](https://ports.freebsd.org/cgi/ports.cgi?query=trn&stype=all&sektion=news)]
    [[Void Linux package](https://github.com/void-linux/void-packages/blob/master/srcpkgs/trn/template)]

    Author: Wayne Davison

    Engine in `search.c`.

  - strn [[Wikipedia](https://en.wikipedia.org/wiki/Rn_(newsreader))]

- Shell globs

- Spencer's library [[algorithm](https://swtch.com/~rsc/regexp/regexp2.html#backtrack)]

  Author: Henry Spencer

  Introduced backtracking widely [[history][rsc-history]]

  Sources:
  - [NightOwl 001 - 1990](http://annex.retroarchive.org/cdrom/nightowl-001/005A/REGEXP.ZIP)
  - [NightOwl 004 - 1991](http://annex.retroarchive.org/cdrom/nightowl-004/005A/REGEXP.ZIP)

- Truffle TRegex [[src](https://github.com/oracle/graal/tree/master/regex)]

  - GraalJS [src [object](https://github.com/oracle/graaljs/tree/master/graal-js/src/com.oracle.truffle.js/src/com/oracle/truffle/js/runtime/builtins/JSRegExp.java),
    [prototype](https://github.com/oracle/graaljs/tree/master/graal-js/src/com.oracle.truffle.js/src/com/oracle/truffle/js/builtins/RegExpPrototypeBuiltins.java),
    more]

- Unix `ed` [[history][rsc-history]]

  Author: Ken Thompson

  First appeared in First Edition Unix

- Unix `egrep` [[history][rsc-history]]

  Author: Al Aho

  First appeared in Seventh Edition Unix

- Unix `grep` [[history][rsc-history]]

  First appeared in Fourth Edition Unix

- Unix `lex`

- Unix `sed` [[Wikipedia](https://en.wikipedia.org/wiki/Sed)]

  - [SED15](http://cd.textfiles.com/simtel/DISK1/DISC2/TEXTUTIL/SED15.ZIP) and
    [SED15X](http://cd.textfiles.com/simtel/DISK1/DISC2/TEXTUTIL/SED15X.ZIP)
    in the Simtel MSDOS Archive and SED15 in [NightOwl 008 - 1993](http://annex.retroarchive.org/cdrom/nightowl-008/)

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

## Papers

- [Tagged DFA](https://en.wikipedia.org/wiki/Tagged_Deterministic_Finite_Automaton)

## Benchmarks

- Mario Juárez's [Languages Regex Benchmark](https://github.com/mariomka/regex-benchmark)
- Andrew Gallant's [rebar](https://github.com/BurntSushi/rebar)
- [regex-redux](https://benchmarksgame-team.pages.debian.net/benchmarksgame/performance/regexredux.html)
  in the Computer Language Benchmarks Game


[rsc-history]: https://swtch.com/~rsc/regexp/regexp1.html#History

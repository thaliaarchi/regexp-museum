# RE2

[[src](https://github.com/google/re2)] [[syntax](https://github.com/google/re2/wiki/Syntax)]

Author: Russ Cox[^rsc3]

Russ Cox began was an intern at Google building Code Search in summer 2006[^rsc4].
It started as a frontend for [Plan 9 grep](../greps/plan9.md) with a new parser.
The engine was replaced after a few years with RE2. The RE2 parser has a
copyright date of 2006, indicating that it survives from his work on Code
Search[^init-parse.cc]. RE2 was open-sourced in 2010[^rsc3].

> I built the earliest demos using Ken Thompson's Plan 9 grep, because I
> happened to have it lying around in library form. The plan had been to switch
> to a “real” regexp library, namely PCRE, probably behind a newly written, code
> reviewed parser, since PCRE's parser was a well-known source of security bugs.
> The only problem was my then-recent discovery that none of the popular regexp
> implementations - not Perl, not Python, not PCRE - used real automata. This
> was a surprise to me, and even to Rob Pike, the author of the Plan 9 regular
> expression library. (Ken was not yet at Google to be consulted.) I had learned
> about regular expressions and automata from the Dragon Book, from theory
> classes in college, and from reading Rob's and Ken's code. The idea that you
> wouldn't use the guaranteed linear time algorithm had never occurred to me.
> But it turned out that Rob's code in particular used an algorithm only a few
> people had ever known, and the others had forgotten about it years earlier. We
> launched with the Plan 9 grep code; a few years later I did replace it, with
> RE2. [^rsc4]

RE2 adapts code from the PCRE C++ wrapper[^init-re2.cc].

[^rsc3]: “Regular Expression Matching in the Wild” by Russ Cox, 2010.
  https://swtch.com/~rsc/regexp/regexp3.html
[^rsc4]: “Regular Expression Matching with a Trigram Index (or How Google Code
  Search Worked)” by Russ Cox, 2012. https://swtch.com/~rsc/regexp/regexp4.html
[^init-parse.cc]: re2/parse.cc at commit 0a38cba (initial release, 2010-03-02).
  https://github.com/google/re2/blob/0a38cba1d9dcfbd713141095582597af700f22e9/re2/parse.cc#L1
    > Copyright 2006 The RE2 Authors.

[^init-re2.cc]: re2/re2.cc at commit 0a38cba (initial release, 2010-03-02).
  https://github.com/google/re2/blob/0a38cba1d9dcfbd713141095582597af700f22e9/re2/re2.cc#L7-L8
    > Originally the PCRE C++ wrapper, but adapted to use
    > the new automata-based regular expression engines.

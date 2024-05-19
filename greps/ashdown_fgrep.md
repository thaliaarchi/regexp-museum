# Ian Ashdown's fgrep

Author: Ian Ashdown (1984-1985)

An implementation of Unix fgrep using FSAs and the Aho–Corasick algorithm.

As described by typist notes of Dominic Shields' copy:

> A full implementation of the UNIX 'fgrep'
> utility. The algorithm used in this program
> constructs a deterministic finite state automaton
> (FSA) for pattern matching from the substrings,
> then uses the FSA to process the text string in
> one pass. The time taken to construct the FSA is
> proportional to the sum of the lengths of the the
> substrings. The number of state transitions made
> by the FSA in processing the text string is
> independent of the number of substrings.

It cites:

> "Efficient String Matching: An Aid to Bibliographic Search"
> Alfred V. Aho & Margaret J. Corasick
> Communications of the ACM
> pp. 333 - 340, Vol. 18 No. 6 (June '75)

Versions:
- fgrep.c V1.03 in WGREP (below)
- FGREP.C V1.04 in Dominic Shields' [C code](https://github.com/dominicshields/C/blob/master/FGREP.C)
- WGREP V1.04 by Thilo Lauer (May 2022) in [wgrep.zip](http://www.cpm.z80.de/download/wgrep.zip)
  on Gaby Chaudry's [Unofficial CP/M Web Site](http://www.cpm.z80.de/binary.html)
  [[mirror on the same IP](http://www.gaby.de/cpm/binary.html)]

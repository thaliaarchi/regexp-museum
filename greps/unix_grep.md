# Unix grep

Author: Ken Thompson[^computerphile-bwk]

First appeared in Fourth Edition Unix[^rsc-regexp1].

Ken Thompson extracted regular expression search from `ed` to create `grep`. The
original grep was written in PDP-11 assembly[^computerphile-bwk].

Discussed along with [egrep](unix_egrep.md) in “A Tale of Two Greps” by Andrew
Hume (1988) [[Wiley](https://onlinelibrary.wiley.com/doi/abs/10.1002/spe.4380181105),
[IA](https://archive.org/details/tale-of-two-greps)]

## Versions

- Unix V4 (not extant)
- Unix V5 [/usr/source/s1/grep.s](https://www.tuhs.org/cgi-bin/utree.pl?file=V5/usr/source/s1/grep.s)
- Unix V6 [/usr/source/s1/grep.c](https://www.tuhs.org/cgi-bin/utree.pl?file=V6/usr/source/s1/grep.c)
- Unix V7 [/usr/src/cmd/grep.c](https://www.tuhs.org/cgi-bin/utree.pl?file=V7/usr/src/cmd/grep.c)
- Unix V8 [/usr/src/cmd/grep.c](https://www.tuhs.org/cgi-bin/utree.pl?file=V8/usr/src/cmd/grep.c)
- Unix V9 [/usr/src/cmd/grep.c](https://www.tuhs.org/cgi-bin/utree.pl?file=V9/cmd/grep.c)
- Unix V10 [/usr/src/cmd/grep.c](https://www.tuhs.org/cgi-bin/utree.pl?file=V10/cmd/grep.c)

[^rsc-regexp1]: https://swtch.com/~rsc/regexp/regexp1.html#History
[^computerphile-bwk]: https://www.youtube.com/watch?v=NTfOnGZUZDk

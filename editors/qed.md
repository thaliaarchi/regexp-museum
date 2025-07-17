# QED

[[Wikipedia](https://en.wikipedia.org/wiki/QED_(text_editor))]
[[TextEditors.org](https://texteditors.org/cgi-bin/wiki.pl?Qed)]
[[algorithm](https://swtch.com/~rsc/regexp/regexp2.html#thompsonvm)]

Author: Ken Thompson

> QED was a text editor contributed to the CTSS community by Ken Thompson, a
> Multics programmer at Bell Labs in about 1966. This line-oriented editor was
> influenced by the character-oriented QED editor on the SDS-940; one of QED's
> major features was regular expression searching and substitution. QED was ported
> to Multics BCPL by Ken and Dennis Ritchie. QED was programmable: it supported
> multiple buffers, and a user could execute the contents of a buffer containing
> editor commands. Some remarkably arcane editor applications were written using
> QED. [[Tom Van Vleck's history](https://www.multicians.org/thvv/7094.html)]

[“Regular Expression Search Algorithm”](../papers/thompson.md) by Ken Thompson
(1968) introduced Thompson's construction and it was implemented in QED
[[history](https://swtch.com/~rsc/regexp/regexp1.html#History)],
[[attribution](https://swtch.com/~rsc/regexp/regexp2.html#attrib)]

Patent [US3568156A Text matching algorithm](https://patents.google.com/patent/US3568156A/en)
(1967) [[HN](https://news.ycombinator.com/item?id=33566557)]

## QED for the SDS 940

This version did not have regular expressions.

- Source from Mark Emmer via Lars Brinkhoff and [Arnold Robbins](https://github.com/arnoldrobbins/qed-archive/tree/master/sds-940)
  [TUHS [1](https://www.tuhs.org/pipermail/tuhs/2021-January/022916.html),
  [2](https://www.tuhs.org/pipermail/tuhs/2021-January/022917.html)]

## CTSS QED

by Ken Thompson

- [CTSS source and binaries](https://github.com/rcornwell/ctss), including [QED](https://github.com/rcornwell/ctss/tree/master/src/edit),
  by Richard Cornwell
- [CTSS source listings and tapes](https://www.piercefuller.com/library/ctss.html)
  by Paul Pierce
- [CTSS source listings](https://people.csail.mit.edu/saltzer/Multics/CTSS-Documents/ctss-source-files/)
  by Jerry Saltzer (linked by [Tom Van Vleck](https://www.multicians.org/thvv/7094.html))
- [CTSS simulator](https://www.cozx.com/dpitts/ibm7090.html) by Dave Pitts based
  on a simulator by Paul Pierce (linked by [Tom Van Vleck](https://www.multicians.org/thvv/7094.html))

Documentation:
- “QED text editor” by Ken Thompson in the [*CTSS Programmer's Guide*](https://bitsavers.org/pdf/mit/ctss/CTSS_ProgrammersGuide_Dec69.pdf),
  section AH.3.09, pages 353–368
- [“IBM 7094 Cheat Sheet”](https://swtch.com/~rsc/regexp/ibm7094.html) by Russ
  Cox explains the IBM 7094 instructions used in Thompson's paper
- [“The IBM 7094 and CTSS”](https://www.multicians.org/thvv/7094.html) by Tom
  Van Vleck describes the history of CTSS
- [“CTSS: The QED editor”](https://timereshared.com/ctss-qed-editor/) tutorial
  by Rupert Lane
- [“CTSS Hardware”](https://simh.trailing-edge.com/docs/ctss_hardware.pdf) by
  Bob Supnik documents the additional hardware needed to run CTSS
- [“IBM 7090/94 Architecture”](https://web.archive.org/web/20210429034636/http://www.frobenius.com/7090.htm)
  by Jack Harper is a reference for the IBM 7090 series, intended to familiarize
  with the background of LISP 1.5

## QED for GE-TSS

by Dennis Ritchie[^dmr] [^regexp1]

[^dmr]: https://web.archive.org/web/20250102124744/https://www.bell-labs.com/usr/dmr/www/qed.html
[^regexp1]: https://swtch.com/~rsc/regexp/regexp1.html

## Multics QED

- Multics 12.5 QED source from Charles Anthony via [Arnold Robbins](https://github.com/arnoldrobbins/qed-archive/tree/master/multics)

Documentation:
- The [*Multics Condensed Guide*](http://www.bitsavers.org/pdf/honeywell/large_systems/multics/swenson/6906.multics-condensed-guide.pdf)
  includes a QED cheat sheet on pages 114–139 [[TUHS](https://www.tuhs.org/pipermail/tuhs/2021-February/022924.html)]

## QED for Unix

- Caltech qed from USENIX tape 80.1 [[TUHS Archive](https://www.tuhs.org/Archive/Applications/Shoppa_Tapes/usenix_80_delaware.tar.gz)]
  [[mrynet.com](https://www.mrynet.com/FTP/USENIX/80.1/boulder/caltech/)]
  - Patches for Linux by [Leah Neukirchen](https://github.com/leahneukirchen/qed-caltech)
- QED for Unix, 1985 via [Arnold Robbins](https://github.com/arnoldrobbins/qed-archive/tree/master/unix-1985)
- QED for Unix, 1992 from Rob Pike via [Arnold Robbins](https://github.com/arnoldrobbins/qed-archive/tree/master/unix-1992),
  with
- Unix V8 [/usr/src/cmd/qed/](https://www.tuhs.org/cgi-bin/utree.pl?file=V8/usr/src/cmd/qed)
- Unix V10 [/usr/src/man/manb/qed.1](https://www.tuhs.org/cgi-bin/utree.pl?file=V10/man/manb/qed.1)
- QED for Windows with Visual Studio from Don Mitchell via [Arnold Robbins](https://github.com/arnoldrobbins/qed-archive/tree/master/visual-studio-1994)
  is based on Rob Pike's QED
- [phonologus/QED](https://github.com/phonologus/QED) and [phonologus/qed-new](https://github.com/phonologus/qed-new)
  by Sean Jensen add UTF-8 support and other features. phonologus/QED is derived
  from the 1992 version and phonologus/qed-new is derived from the V8 version,
  the V10 manpage, and q/ from the 1992 version.

Documentation:
- [“Remembering the work of David M. Tilbrook and the QED editor”](https://leahneukirchen.org/blog/archive/2021/01/remembering-the-work-of-david-m-tilbrook-and-the-qed-editor.html)
  by Leah Neukirchen (2021)
- [“An incomplete history of the QED Text Editor”](https://web.archive.org/web/20250102124744/https://www.bell-labs.com/usr/dmr/www/qed.html)
  by Dennis Ritchie
- [History described by Rob Pike](https://www.tuhs.org/pipermail/tuhs/2021-January/022919.html)
- The [*QED Book*](https://github.com/phonologus/qed-book) by Sean Jensen adapts
  Rob Pike's tutorial

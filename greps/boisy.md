# Boisy grep

Author: Boisy Pitre (1991-2025)

A grep implementation by Boisy Pitre for the operating system NitrOS-9, formerly
CoCo OS-9, for the [Tandy Color Computer (CoCo)](https://en.wikipedia.org/wiki/TRS-80_Color_Computer),
written in Motorola 6809 assembly. Boisy worked at Microware for 8 years
starting in 1992, and is now the team lead team of the NitrOS-9 project[^story].
This grep remains maintained by Boisy as a [Level One command](https://github.com/nitros9project/nitros9/blob/main/level1/cmds/grep.as)
in NitrOS-9.

It performs a naïve substring search per line for a single literal pattern, with
case folding configured with the `-i` flag and line numbers printed with `-n`.

It is unrelated to the [grep](os9.md) for Microware OS-9[^2025-09-23].

Notable versions:
- grep created in 1991
- [1992-03-30 revision](boisy/1992-03-30_email.txt) sent to the COCO - Tandy
  Color Computer List at Princeton
- [2002-04-04 revision](https://github.com/nitros9project/nitros9/blob/4461c9ef6cdf1ffae6e5e192ee07e278ca5943de/3rdparty/utils/boisy/grep.asm)
  of CoCo OS-9 (initial revision in NitrOS-9 repo): Implements `-c`/`-C` flag
  for disabling case folding.
- [2003-07-23 revision](https://github.com/nitros9project/nitros9/commit/f9555087f8b1ab5708ca891e45478ff8a743a51a/3rdparty/utils/boisy/grep.asm)
  of CoCo OS-9: Adds `-n`/`-N` flag for printing line numbers, by Rodney
  Hamilton.
- [2025-01-20 revision](https://github.com/nitros9project/nitros9/blob/9dfb7975a0cbccb7c411413c804764c2480c657d/level1/cmds/grep.as)
  of NitrOS-9: Promoted grep to a first-party command, renamed the `-c`/`-C`
  flag to `-i`/`-I`, and increased the max line length from 250 to 254.
- [`main` branch](https://github.com/nitros9project/nitros9/blob/main/level1/cmds/grep.as)
  of NitrOS-9

[^story]: [“My Color Computer Story”](https://web.archive.org/web/20050221103408/http://webpages.charter.net/boisy/coco.html).
  Boisy Pitre
[^2025-09-23]: [“Re: Your grep implementation in NitrOS-9”](boisy/2025-09-23_email.md).
  Boisy Pitre. 2025-09-23

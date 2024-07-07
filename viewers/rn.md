# `rn`

[[site](https://web.archive.org/web/19970401040656/http://www.academ.com/academ/rn.html)]
[[history](https://web.archive.org/web/20140227213900/http://www.faqs.org:80/faqs/usenet/software/part1)]
[[Wikipedia](https://en.wikipedia.org/wiki/Rn_(newsreader))]

Author: Larry Wall

`rn` used regular expressions for searching and in [killfiles](https://en.wikipedia.org/wiki/Kill_file)
to match email subjects. It was first released in 1984, while Perl was in 1987,
so its engine was likely influential.

Its regular expression engine is in `search.c`.

Larry Wall used RCS for version control of `rn` [^rn-hackers] and distributed
patches with `patch`.

From the [rn site](https://web.archive.org/web/19970401040656/http://www.academ.com/academ/rn.html):

> The RN Newsreader was part of the second generation of newsreaders for USENET
> news. Originally developed by the author of Perl, Larry Wall, the RN news
> reader was developed to minimize the amount of time the user was kept waiting
> for news articles to be displayed. It did this by using cache techniques. RN
> was also developed to minimize the use of computer resources when running on
> computers with limited memory capabilities at the sacrifice of some speed.
>
> Larry wanted to move on to bigger and better things (like creating Perl) and
> so passed the maintenance duties for RN to Stan Barber around 1987. Stan
> proceeded to assemble patches for RN until the early 1990's when threaded
> newsreaders began to be developed. Stan hopes to get more patches from the
> threaded varients into the non-threaded version in the future.

From [“Usenet Software: History and Sources”](https://web.archive.org/web/20140227213900/http://www.faqs.org:80/faqs/usenet/software/part1):

> A second, more versatile interface, "rn", was developed by Larry Wall (the
> author of Perl) and released in 1984. This interface also uses full-screen
> display with direct positioning, but it includes many other useful features
> and has been very popular with many regular net readers. The interface
> includes reading, discarding, and/or processing of articles based on
> user-definable patterns, and the ability of the user to develop customized
> macros for display and keyboard interaction. "rn" is currently at release
> 4.4.4. It is being maintained by Stan Barber <sob@academ.com>. "rn" is not
> provided with the standard news software release, but is very widely available
> because of its popularity.

- rn version 4.1 (parts [1](https://groups.google.com/g/net.sources/c/xUGB_4Meno8),
  [2](https://groups.google.com/g/net.sources/c/XUBHx73xK7s),
  [3](https://groups.google.com/g/net.sources/c/X78CZnttHqg),
  [4](https://groups.google.com/g/net.sources/c/U8wjLYgZ9XQ),
  [5](https://groups.google.com/g/net.sources/c/9MA0hI3j4iI),
  [6](https://groups.google.com/g/net.sources/c/FFbGY5bbixE),
  [7](https://groups.google.com/g/net.sources/c/iLF8GYR36k8),
  and [8](https://groups.google.com/g/net.sources/c/g8oUj9EgApA))
  on net.sources, 1984-09-24
- rn version 4.3 (parts [0](https://groups.google.com/g/mod.sources/c/ZGohbRfEi2w),
  [1](https://groups.google.com/g/mod.sources/c/hJok66uiWTU),
  [2](https://groups.google.com/g/mod.sources/c/H7mx3N-0jk4),
  [3](https://groups.google.com/g/mod.sources/c/27eQUTed3J0),
  [4](https://groups.google.com/g/mod.sources/c/QzOejfSBrdQ),
  [5](https://groups.google.com/g/mod.sources/c/hvSc-jCBMmY),
  [6](https://groups.google.com/g/mod.sources/c/RM9voSBl-98),
  [7](https://groups.google.com/g/mod.sources/c/WAihOBJZf7A),
  [8](https://groups.google.com/g/mod.sources/c/jLfBDURu-_8),
  and [9](https://groups.google.com/g/mod.sources/c/0xMLaQS6V5s))
  on mod.sources, 1985-05-09
- rn version 4.4.4, 1992-02-23 [[mention](https://web.archive.org/web/19970401040656/http://www.academ.com/academ/rn.html)]

## Descendants

- rrn "remote rn": Patches to rn by Stan O. Barber which enable communicating
  with an NNTP server [^wikipedia].

- trn "Threaded Read News": A code fork of rn by Wayne Davison that organizes
  messages into threads [^usenet-faq].

  [[src](https://sourceforge.net/projects/trn/)] [[site](https://trn.sourceforge.net/)]
  [[usage](https://kb.iu.edu/d/abxg)] [[FreeBSD Ports](https://ports.freebsd.org/cgi/ports.cgi?query=trn&stype=all&sektion=news)]
  [[Void Linux package](https://github.com/void-linux/void-packages/blob/master/srcpkgs/trn/template)]

- strn: A code fork of trn that adds scoring and was later integrated into trn
  [^wikipedia].

- [slrn](../langs/slang.md): A newsreader implemented in S-Lang that supports rn
  killfiles.

- xrn: Supports rn killfiles [^usenet-faq]; unclear whether it shares code with
  rn.

- xvnews: Compatible with rn-style commands [^usenet-faq]; unclear whether it
  shares code with rn.

[^wikipedia]: https://en.wikipedia.org/wiki/Rn_(newsreader)
[^usenet-faq]: https://web.archive.org/web/20140227213900/http://www.faqs.org:80/faqs/usenet/software/part1
[^rn-hackers]: `HACKERSGUIDE` in rn distribution

# S-Lang SLregexp and SLsearch

Author: John E. Davis

The [S-Lang Library](https://www.jedsoft.org/slang/) is the standard library for
the S-Lang programming language and is also usable from C. With it, the jed
editor and slrn usenet reader were written. It includes a regular expression
engine, SLregexp, and string-searching algorithms, SLsearch.

`SLRegexp` is used by `slrn` and `slsh`, among other parts of S-Lang. I have
not determined whether `slrn` is a port of `rn` to S-Lang, a reimplementation,
or completely unrelated. `src/slregexp.c` seems unrelated to in `search.c` in
`trn`.

In `src/slregexp.c`, it states that it implements “ed style regular
expressions”.

- slang `src/slregexp.c`
- slang `src/slsearch.c`
- most `src/search.c` appears to use either slregexp or Unix V8 regexp.
- S-Lang `SLRegexp` [[src](https://www.jedsoft.org/snapshots/)] [[docs](https://www.jedsoft.org/slang/doc/html/slang-22.html)]

Users:

- `slrn` [src [JED](https://www.jedsoft.org/snapshots/), [GitHub](https://github.com/jedsoft/slrn),
  [SourceForge](https://sourceforge.net/projects/slrn/)] [[site](https://web.archive.org/web/20140924103420/http://www.slrn.org/index.html)]
  [[FreeBSD Ports](https://ports.freebsd.org/cgi/ports.cgi?query=slrn&stype=all&sektion=news)]
- S-Lang `slsh` glob: converts globs to `SLRegexp`
- JED software (e.g., S-Lang, slrn, most) ported to OpenVMS has older versions
  than available from jedsoft.org [src [v10](https://www.digiater.nl/openvms/freeware/v10/jed097/),
  [v20](https://www.digiater.nl/openvms/freeware/v20/jed/),
  …]

## Mailing list

The relevant messages to the mailing lists from the [archives](https://lists.jedsoft.org/lists/index.html)
are:

- [2010-05-15](https://lists.jedsoft.org/lists/slang-users/2010/0000006.html):
  JED switched to Git “about a year or more ago” and stopped maintaining the SVN
  repo after the 2.2.2 release. The former forge, opensvn.csie.org, is also no
  longer hosting.
- [2005-10-03](https://lists.jedsoft.org/lists/jed-users/2005/0000449.html):
  Added regexp support to `folding.sl`.
- [2005-02-12](https://lists.jedsoft.org/lists/slang-users/2005/0000019.html):
  SLregexp does not support UTF-8 and `SLREGEXP_UTF8` is a placeholder, as it
  will be replaced by PCRE in version 2.2.
- [2005-01-14](https://lists.jedsoft.org/lists/jed-users/2005/0000011.html):
  Mentioned [jedmodes.sourceforge.io](https://jedmodes.sourceforge.io/)
  (jedmodes.sf.net at the time), which is a collection of user-contributed
  S-Lang scripts.
- [2005-03-09](https://lists.jedsoft.org/lists/jed-users/2005/0000119.html):
  Bob Bernstein indexed mailing list messages for searching on his [personal site](https://web.archive.org/web/20090124225243/http://ruptured-duck.com/archives.html),
  including messages from 1999 to 2003 and (at the time) re-indexed daily.
- [2005-01-14](https://lists.jedsoft.org/lists/jed-users/2005/0000010.html):
  Bob Bernstein added a Google site search form for jed-users on his personal
  site. No archive of the site in this state exists.
- [2004-08-01](https://lists.jedsoft.org/lists/slang-users/2004/0000035.html):
  Patch for most `src/search.c`, which was not commented on or accepted.
- [2004-07-08](https://lists.jedsoft.org/lists/jed-users/2004/0000257.html):
  S-Lang, including regexp syntax, is documented in [slang.pdf](https://web.archive.org/web/20071027074925/http://www.s-lang.org/doc/pdf/slang.pdf).
- [2004-07-08](https://lists.jedsoft.org/lists/jed-users/2004/0000254.html):
  Mentions the [Jed Intrinsic Function Reference Manual](https://www.jedsoft.org/jed/doc/jedfuns.html).
- [2004-07-03](https://lists.jedsoft.org/lists/jed-users/2004/0000253.html):
  Patch for jed `search.c` to fix replacements in `replace_match` during
  backreferences. It seems to have been fixed sometime before the current
  Git/SVN history.
- [2002-12-01 (1)](https://lists.jedsoft.org/lists/jed-users/2002/0000440.html),
  [(2)](https://lists.jedsoft.org/lists/jed-users/2002/0000441.html):
  Literal `.` is written as `\\.` and `\.` is still a metacharacter within a
  pattern string passed to jed `dfa_define_highlight_rule`.

## TODO

- Evaluate jed editor, including its syntax highlighting.
- Evaluate whether most ever had its own regexp engine.
- Evaluate `man 7 regex` on Unix (referenced in [2004-07-09](https://lists.jedsoft.org/lists/jed-users/2004/0000256.html))
- Evaluate NEdit editor (not a part of S-Lang) (referenced in [2002-07-05](https://lists.jedsoft.org/lists/jed-users/2002/0000240.html))
- Evaluate SciTE editor (not a part of S-Lang) (referenced in [2004-07-08](https://lists.jedsoft.org/lists/jed-users/2004/0000255.html))

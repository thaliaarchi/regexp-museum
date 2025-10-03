# Unix gre

Author: Andrew Hume[^hume-tuhs]

A successor to [grep](unix_grep.md), [egrep](unix_egrep.md), and [fgrep](unix_fgrep.md),
which first appeared in Unix V10.

From its man page:

> <u>Gre</u> supplants three classic programs, which are still available:
>
> <u>Grep</u> handles only <u>ed</u>(1)-like regular expressions. It uses `\(\)`
> instead of `()`.
>
> <u>Egrep</u> handles the same patterns as gre except for back-referencing with
> `\1`, `\2`, ...
>
> <u>Fgrep</u> handles no operators except newline (alternation).

## Versions

- Unix V10 [/usr/src/cmd/gre/](https://www.tuhs.org/cgi-bin/utree.pl?file=V10/cmd/gre)

## Emails

<a href="hume-tuhs"></a>
**From:** Andrew Hume \
**Subject:** [TUHS] Unix gre, forgotten successor to grep (was: forth on early unix) \
**Date:** [Fri, 26 Sep 2025 15:28:11 -0700](https://www.tuhs.org/pipermail/tuhs/2025-September/032600.html)

> gre was written by me, although these days, i use a local link to grep.
>
> [ken’s comment](plan9.md#ken-tuhs) below is likely true now, but at the time gre was written,
> it was not true. boyer-moore filtering, as i called it, made a substantial
> difference. in fact, it saved (in a documented way) millions of dollars per year
> in the 5ESS programming project (during the mid to late 1980s).
>
> it is, of course, dependent on the string being searched for, but once that string
> had a literal substring of length 4 or more, it definitively sped things up.
> it all depends on the relative speed of CPU versus I/O efficiency.
> i also published a paper on this in “Software Practice and Experience” with Dan Sunday.

**From:** Noel Hunt \
**Subject:** [TUHS] Re: Unix gre, forgotten successor to grep (was: forth on early unix) \
**Date:** [Tue, 23 Sep 2025 14:50:57 +1000](https://www.tuhs.org/pipermail/tuhs/2025-September/032564.html)

> I will tentatively suggest that it was Andrew Hume. I suspect
> his major contribution was the addition of Boyer-Moore.

[^hume-tuhs]: “[TUHS] Unix gre, forgotten successor to grep (was: forth on early
  unix)”, Andrew Hume, 2025-09-26 email (see above)

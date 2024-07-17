# ed

[[Wikipedia](https://en.wikipedia.org/wiki/Ed_(software))]

Author: Ken Thompson[^rsc-regexp1] [^computerphile-bwk]

First appeared in PDP-7 Unix, before First Edition.

`grep` was created by extracting regular expression search from `ed`[^computerphile-bwk].

## Unix in 1971

From [“DRAFT: The UNIX Time-Sharing System”](https://www.tuhs.org/Archive/Distributions/Research/McIlroy_v0/UnixEditionZero-OCR.pdf),
Dennis M. Ritchie, 1971:

> <u>A2</u>.<u>4</u> <u>ed</u>
>
> <u>Ed</u> is nearly a subset of QED [reference]. When called by
>
>     ed name
>
> <u>ed</u> performs an automatic "r" (read) command on file <u>name</u>. The
> major differences between <u>ed</u> and QED are:
>
> 1. There is no "\f" character; input mode is left by typing
>    "." alone on a line.
> 2. There are no buffers and hence no "\b" stream directive.
> 3. The commands are limited to:
>
>        a c d i p q r s w = !
>
> 4. The only special characters in regular expressions are:
>
>        * ^ $ [ .
>
>    which have the usual meanings. However, "^" and "$" are
>    only effective if they are the first or last character
>    respectively of the regular expression. Otherwise
>    suppression of special meaning is done by preceding the
>    character by "\", which is not otherwise special.
> 5. In the substitute command, only the leftmost occurrence of
>    the matched regular expression is substituted.

Additionally, on its performance:

> the editor
> <u>ed</u> (8.9 and A2.4 below) was originally written, for simplicity,
> to do I/O one character at a time; it increased its speed by a
> factor of about two when it was rewritten to use 128-byte units.

## Versions

- PDP-7 Unix /cmd/{[ed1.s][pdp7-ed1.s],[ed2.s][pdp7-ed2.s]} [[restored](https://github.com/DoctorWkt/pdp7-unix/tree/master/src/cmd)]
  [[scan](https://www.tuhs.org/Archive/Distributions/Research/McIlroy_v0/08-rest.pdf)]
- Unix V1 (not extant)
- Unix V2 /cmd/{[ed2.s][v2-ed2.s],[ed3.s][v2-ed3.s]}
- Unix V3 (not extant)
- Unix V4 (not extant)
- Unix V5 /usr/source/{[ed1.s][v5-ed1.s],[ed2.s][v5-ed2.s],[ed3.s][v5-ed3.s]}
- Unix V6 [/usr/source/s1/ed.c](https://www.tuhs.org/cgi-bin/utree.pl?file=V6/usr/source/s1/ed.c)
- Unix V7 [/usr/src/cmd/ed.c](https://www.tuhs.org/cgi-bin/utree.pl?file=V7/usr/src/cmd/ed.c)
- Unix V8 [/usr/src/cmd/ed/](https://www.tuhs.org/cgi-bin/utree.pl?file=V8/usr/src/cmd/ed)
- Unix V9 [cmd/ed.c](https://www.tuhs.org/cgi-bin/utree.pl?file=V9/cmd/ed.c)
- Unix V10 [cmd/ed.c](https://www.tuhs.org/cgi-bin/utree.pl?file=V10/cmd/ed.c),
  [cmd/ed/](https://www.tuhs.org/cgi-bin/utree.pl?file=V10/cmd/ed)

[pdp7-ed1.s]: https://www.tuhs.org/cgi-bin/utree.pl?file=PDP7-Unix/cmd/ed1.s
[pdp7-ed2.s]: https://www.tuhs.org/cgi-bin/utree.pl?file=PDP7-Unix/cmd/ed2.s
[v2-ed2.s]: https://www.tuhs.org/cgi-bin/utree.pl?file=V2/cmd/ed2.s
[v2-ed3.s]: https://www.tuhs.org/cgi-bin/utree.pl?file=V2/cmd/ed3.s
[v5-ed1.s]: https://www.tuhs.org/cgi-bin/utree.pl?file=V5/usr/source/s1/ed1.s
[v5-ed2.s]: https://www.tuhs.org/cgi-bin/utree.pl?file=V5/usr/source/s1/ed2.s
[v5-ed3.s]: https://www.tuhs.org/cgi-bin/utree.pl?file=V5/usr/source/s1/ed3.s

[^rsc-regexp1]: https://swtch.com/~rsc/regexp/regexp1.html#History
[^computerphile-bwk]: https://www.youtube.com/watch?v=NTfOnGZUZDk

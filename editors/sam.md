# sam

[[src](https://github.com/plan9foundation/plan9/tree/main/sys/src/cmd/sam/regexp.c)]
[[Wikipedia](https://en.wikipedia.org/wiki/Sam_(text_editor))]

Author: Rob Pike

Introduced Pike VM [history [vm](https://swtch.com/~rsc/regexp/regexp2.html#pike),
[submatch](https://swtch.com/~rsc/regexp/regexp2.html#ahu74)]

In Unix, sam first appeared in the Ninth Edition[^mcilroy-history].

From [“Regular Expression Matching: the Virtual Machine Approach”](https://swtch.com/~rsc/regexp/regexp2.html)
by Russ Cox (2009):

> In a “threaded” implementation like thompsonvm above, we simply add the
> saved pointer set to the thread state. Rob Pike first used this
> approach, in the text editor sam.

> The most interesting technique in this article is the one of storing
> submatch information in the regular expression thread state. The
> earliest instance I know of this technique in a regular expression
> engine is in Rob Pike's sam editor, written around 1985. (The
> modifications to store submatches were contributed by Bruce Janson a
> couple of years after the original implementation.) The technique makes
> a cameo in a textbook in 1974 but then seems to get lost until its
> reappearance in sam.

## Versions

- Unix V9 5620 tools [jtools/src/sam/](https://www.tuhs.org/cgi-bin/utree.pl?file=V9/jtools/src/sam)

## Descendants

- Plan 9 from User Space `sam` [[src](https://github.com/9fans/plan9port/blob/master/src/cmd/sam/regexp.c)]:
  ported to Unix by Russ Cox
- Plan 9 `libregexp` [[src](https://github.com/plan9foundation/plan9/tree/main/sys/src/libregexp)]
  [docs [regexp(2)](https://github.com/plan9foundation/plan9/blob/main/sys/man/2/regexp),
  [regexp(6)](https://github.com/plan9foundation/plan9/blob/main/sys/man/6/regexp)]
  - Plan 9 from User Space `libregexp` [[src](https://github.com/9fans/plan9port/tree/master/src/libregexp)]
    [docs [regexp(3)](https://9fans.github.io/plan9port/man/man3/regexp.html),
    [regexp(7)](https://9fans.github.io/plan9port/man/man7/regexp.html)]:
    ported to Unix by Russ Cox
    - tylov/regexp9 [[src](https://github.com/tylov/regexp9)]: fork with more
      modern features
  - 9legacy `libregexp-fixes.diff` [[src](http://9legacy.org/9legacy/patch/libregexp-fixes.diff)]:
    patch by David du Colombier
  - Inferno `libregexp` [[src](https://github.com/inferno-os/inferno-os/tree/master/utils/libregexp)]
    [docs [regex(2)](https://github.com/inferno-os/inferno-os/blob/master/man/2/regex),
    [regexp(6)](https://github.com/inferno-os/inferno-os/blob/master/man/6/regexp)]:
    copied to Inferno
- A library in Eighth Edition Unix: extracted by Dave Presotto[^rsc-history]

[^rsc-history]: [“History and References”](https://swtch.com/~rsc/regexp/regexp1.html#History),
  “Regular Expression Matching Can Be Simple And Fast (but is slow in Java,
  Perl, PHP, Python, Ruby, ...)”, Russ Cox, 2007
[^mcilroy-history]: [“A Research UNIX Reader: Annotated Excerpts from the
  Programmer’s Manual, 1971-1986”](https://www.cs.dartmouth.edu/~doug/reader.pdf),
  M. Douglas McIlroy, 1987

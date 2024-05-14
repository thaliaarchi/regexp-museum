# sam

[[src](https://github.com/plan9foundation/plan9/tree/main/sys/src/cmd/sam/regexp.c)]

Author: Rob Pike

Introduced Pike VM [history [vm](https://swtch.com/~rsc/regexp/regexp2.html#pike),
[submatch](https://swtch.com/~rsc/regexp/regexp2.html#ahu74)]

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
- A library in Eighth Edition Unix [[history][rsc-history]]:
  extracted by Dave Presotto

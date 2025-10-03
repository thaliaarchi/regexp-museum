# Plan 9 grep

[[src](https://github.com/plan9foundation/plan9/tree/main/sys/src/cmd/grep)]
[docs [grep(1)](https://github.com/plan9foundation/plan9/blob/main/sys/man/1/grep)]

Author: Ken Thompson[^rsc4]

- Plan 9 from User Space `grep` [[src](https://github.com/9fans/plan9port/tree/master/src/cmd/grep)]

## Emails

<a name="ken-tuhs"></a>
**From:** Ken Thompson \
**Subject:** Re: [TUHS] Re: Unix gre, forgotten successor to grep (was: forth on early unix) \
**Date:** [Tue, 23 Sep 2025 10:40:52 -0700](https://www.tuhs.org/pipermail/tuhs/2025-September/032567.html)

```
i think the plan9 grep is the fastest.
it is grep, egrep, fgrep also.
i think it is faster than boyer-moore.
the whole program is a jit dfa

  read block
  for c in block
  {
     s=s.state[c]
     if s == nil do something occasionally
  }

it is a very few cycles per byte. all of the
time is reading a block. i cant imagine b/m
could be faster. the best b/m could do is
calculate the skip and then jump over
bytes that you have already read.


russ cox used it to do the (now defunct) code
search in google.
```

[^regehr]

[^rsc4]: https://swtch.com/~rsc/regexp/regexp4.html
[^regehr]: John Regehr at [23 Sep 2025 12:31:49 -0600](https://mastodon.social/@regehr/115255037726924744):

    > did Ken Thompson respond to a question my student asked???
    >
    > https://www.tuhs.org/pipermail/tuhs/2025-September/032567.html

# *The Practice of Programming*

[[book](https://archive.org/details/practiceofprogra0000kern)]
[[exegesis](https://www.cs.princeton.edu/courses/archive/spr09/cos333/beautiful.html)]

Author: Rob Pike

- Ben Hoyt ported it to Go in [“Rob Pike’s simple C regex matcher in Go”](https://benhoyt.com/writings/rob-pike-regex/)
  (2022) [[code](https://github.com/benhoyt/repike/tree/master)] [[HN](https://news.ycombinator.com/item?id=32434412)]
  - A commenter patched it to make the runtime runtime
    *O(len(pattern) \* len(text))* instead of exponential by memoizing failures
    [[HN](https://news.ycombinator.com/item?id=32434412#32436442)]
- Shaya Potter ported it [to Java](https://github.com/sjpotter/regex) (2016) and
  [to Go](https://github.com/sjpotter/regex-go) (2019)
- [“Collapsing Towers of Interpreters”](https://www.cs.purdue.edu/homes/rompf/papers/amin-popl18.pdf)
  by Nada Amin and Tiark Rompf (2018) implements this matcher with binding-time
  polymorphism

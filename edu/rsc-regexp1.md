# “Regular Expression Matching Can Be Simple And Fast”

Author: Russ Cox (2007)

Russ Cox's article [“Regular Expression Matching Can Be Simple And Fast”](https://swtch.com/~rsc/regexp/regexp1.html)
includes supporting programs demonstrating linear-time matching.

- Supporting programs: [NFA](https://swtch.com/~rsc/regexp/nfa.c.txt) |
  [DFA](https://swtch.com/~rsc/regexp/dfa0.c.txt) |
  [bounded-memory DFA](https://swtch.com/~rsc/regexp/dfa1.c.txt) |
  [timing scripts](https://swtch.com/~rsc/regexp/timing1.tar.gz)
- NFAs with submatch tracking: [Perl rules](https://swtch.com/~rsc/regexp/nfa-perl.y.txt) |
  [POSIX rules](https://swtch.com/~rsc/regexp/nfa-posix.y.txt)
- Transliteration of Thompson's code for [bytecode machine](https://swtch.com/~rsc/regexp/regexp-bytecode.c.txt)
  and [x86](https://swtch.com/~rsc/regexp/regexp-x86.c.txt), by Jan Burgy.

## Descendants

- BurntSushi/rsc-regexp [[src](https://github.com/BurntSushi/rsc-regexp)]:
  Four translations to Rust, dumb, safe, idiomatic, and using Rust `regex`

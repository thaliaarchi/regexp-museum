# Doug McIlroy

Engines:
- [McIlroy `regex`](../libs/mcilroy.md)

Papers:
- [“Enumerating the strings of regular languages”](https://www.cs.dartmouth.edu/~doug/nfa.pdf).
  Doug McIlroy. Journal of Functional Programming 14 (2004) [[Haskell code](https://www.cs.dartmouth.edu/~doug/nfa.hs)]

On Mon, 22 Sep 2025 13:09:04 -0400, Doug McIlroy wrote (private correspondence):

> Thalia,
>
> Spurred by [your inquiry to Rob](rob_pike.md#thalia-tuhs):
>
> Buried in the following paper is a construction for a nondeterministic
> finite state machine simpler than Ken Thompson's classic model. The
> machine has no epsilon transitions and n states, where n is the number
> of terminal symbols in a full regular expression (i.e. a regular
> expression that supports alternation). In this paper the machine is
> used as a generator; I have not used it as a recognizer. Though the
> state count is minimal, the transition table can be quite large. Russ
> Cox has pointed out that tradeoffs between counts of states and
> transitions can result in more efficient machines.
>
> M. D. McIlroy, Enumerating the strings of regular languages, J.
> Functional Programming 14 (2004) 503-518. PDF preprint
> https://www.cs.dartmouth.edu/~doug/nfa.pdf, Haskell code
> https://www.cs.dartmouth.edu/~doug/nfa.hs.
>
> I have also built a recognizer of POSIX regular expressions augmented
> with alternation (infix |), intersection (infix &) and complement
> (postfix !). The recognizer uses continuation-passing. Glen Fowler
> converted the original C++ program to C for inclusion in the AT&T AST
> Toolkit. Although it is well known that regular languages are closed
> under intersection and complement, I am not aware of other recognizers
> that support these operations.
>
> Doug

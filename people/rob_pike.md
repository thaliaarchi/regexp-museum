# Rob Pike

Engines:
- [sam](../editors/sam.md)
- [Go](../langs/go.md)
- [*The Practice of Programming*](../edu/tpop.md)

On [Mon, 22 Sep 2025 03:23:55 +0000](https://www.tuhs.org/pipermail/tuhs/2025-September/032533.html),
Rob Pike wrote:

> **Subject:** [TUHS] forth on early unix
>
> I wrote a lot of forth as a student programming radio telescopes, often
> inside the telescope base itself. That was a thing back then, much to my
> surprise. The regexp implementation BWK has celebrated was likely rooted in
> a similar thing I did one hot summer day baking underneath a dish, annoyed
> at the difficulty of doing what I wanted to do. That version fit inside a
> 512-byte block (that was a forth thing back then), probably two or three
> times over.
>
> I survived forth.
>
> -rob

<a name="thalia-tuhs">On [Mon, 22 Sep 2025 08:05:39 +0000](https://www.tuhs.org/pipermail/tuhs/2025-September/032540.html),
Thalia Archibald wrote</a>:

> Rob,
>
> Which regexp implementation was that? It sounds like one I haven't heard of. Are
> you referring to the one in The Practice of Programming that you did with bwk?
> Besides that, I know you wrote the ones for sam and Go; were there others? I've
> been working on tracing historical development of regexp engines
> (https://github.com/thaliaarchi/regexp-museum) and would be interested in any
> you were involved with.
>
> Thanks, \
> Thalia

On [Mon, 22 Sep 2025 10:00:37 +0000](https://www.tuhs.org/pipermail/tuhs/2025-September/032541.html),
Rob Pike wrote:

> That's the one, yes. Brian Kernighan wrote an exegesis of it that became
> the first chapter of the book Beautiful Code. He didn't say enough about
> its potentially pathological performance, but then it was pretty much the
> same algorithm as what ed(1) did, and unlikely to occur in non-brutal
> practice.
>
> I wrote the well-behaved, truly linear one in sam, which presotto extracted
> to create the Plan 9 regexp library. I did the early Go library, but Russ
> replaced it with a much more efficient, capable and (for better or worse)
> modern implementation. Those are the only two that saw the light of day,
> although I also made some "improvements" (i.e., non-regular additions) to
> the ed code when working on qed, some of which landed unattributed in vi.
>
> -rob

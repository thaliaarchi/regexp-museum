# antirez `stringmatch`

Author: Salvatore Sanfilippo, aka antirez

It first appeared in Jim, a Tcl interpreter, as an implementation of the
`string match` Tcl function. It was then reused in other projects by antirez[^old-projects],
in a succession from Visitors to Strabo, Redis, then Disque. The function has
evolved separately in Redis to fix security issues and in Jim to add features
like UTF-8 support. Forks of Redis, Valkey and KeyDb, have not changed it.

Of particular note, it was vulnerable to a denial-of-service from pathological
patterns that caused exponential time complexity, until it was reported in
[CVE-2022-36021](https://nvd.nist.gov/vuln/detail/CVE-2022-36021) (and earlier
on [Hacker News](https://news.ycombinator.com/item?id=32436743)) and fixed in
Redis in [dcbfcb916](https://github.com/redis/redis/commit/dcbfcb916ca1a269b3feef86ee86835294758f84)
(String pattern matching had exponential time complexity on pathological
patterns (CVE-2022-36021) (#11858), 2023-02-28).

[^old-projects]: [Comment by antirez, 2018-12-11](https://github.com/redis/redis/issues/5632#issuecomment-446186753)
    > This function is very old and was cut&pasted into several different
    > projects, I expect broken versions of it to be now in other projects

## Versions

- Jim `JimGlobMatch` (formerly `JimStringMatch`) [[src](https://github.com/msteveb/jimtcl/blob/3a23947a6d6e794b50c8d48497849a05415f1b3f/jim.c#L287)]
  Jim is a lightweight Tcl interpreter by antirez.
- Visitors `vi_match` [[src](https://github.com/antirez/visitors/blob/master/visitors.c#L647)]:
  Visitors is a web log analyzer by antirez.
- Strabo `stringmatch` [[src](https://github.com/antirez/strabo/blob/master/strabo.c#L141)]:
  Strabo by antirez generates images and models from elevation maps.
- Redis `stringmatch` [[src](https://github.com/redis/redis/blob/unstable/src/util.c)]:
  Redis is an in-memory, distributed key-value database by antirez.
  Prominent forks include [Valkey](https://github.com/valkey-io/valkey) and
  [KeyDB](https://github.com/Snapchat/KeyDB).
- Disque `stringmatch` [[src](https://github.com/antirez/disque/blob/master/src/util.c)]:
  Disque is an in-memory, distributed job queue by antirez, which started as a
  hard fork of Redis.

The glob matchers from these projects are all extracted and tracked in
[thaliaarchi/antirez-stringmatch](https://github.com/thaliaarchi/antirez-stringmatch).

## Archaeology

It was created for Jim as `Jim_StringMatch` in its initial commit on
[2005-02-26](https://github.com/msteveb/jimtcl/blob/401d9ed4ec74ed5729cfa3ae8bc022bb58150539/jim.c#L153).

Visitors version 0.7 added `vi_match_len` and `vi_match` on [2006-03-30](https://github.com/thaliaarchi/antirez-stringmatch/commit/0d2f88bd2886e7699c7fbd9e3717ae854f515560),
identical to the last Jim revision on [2005-09-19](https://github.com/msteveb/jimtcl/commit/e905d79b0e426fc17b2578c63760ba5e6c654736),
but renamed `JimStringMatch` to `vi_match_len` and added `vi_match`.

Strabo copied `stringmatchlen` and `stringmatch` from Visitors sometime in
2008-2009 and retains the comment referring to `vi_match_len`, even though it
was renamed.

Redis added `stringmatchlen` (but not `stringmatch`) in its initial commit on
[2009-03-22](https://github.com/redis/redis/blob/ed9b544e10b84cd43348ddfab7068b610a5df1f7/redis.c#L341).
It seems to have been sourced from Strabo, as it shares the name, but that could
have developed independently.

Disque copied scaffolding, including `stringmatchlen` and `stringmatch` from
Redis in its initial commit on [2014-11-06](https://github.com/antirez/disque/blob/be8fa8acfad0e57c2a906df94925a55409050703/src/util.c#L45).

Jim revisions from [2005-04-11](https://github.com/msteveb/jimtcl/commit/116e3c15ce7fd800aab2af6b4e7d0fa854b66875)
until [2009-10-08](https://github.com/msteveb/jimtcl/commit/a0ccba0dbbc8ab8e8461ced52919804ef34ba4f9)
and the initial revisions of Visitors, Strabo, Redis, and Disque all have
identical length-based string match functions, except for the names. No further
changes are made later in Visitors, Strabo, or Disque.

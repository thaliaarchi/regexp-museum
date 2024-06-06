# antirez `stringmatch`

Author: Salvatore Sanfilippo

## Visitors

## Jim

## Redis `stringmatch`

[[src](https://github.com/redis/redis/blob/0e1de78fca849c135fd00cd85b5b87920e46e50d/src/util.c#L57)]

After Salvatore [mentioned `stringmatch`](https://news.ycombinator.com/item?id=32436743)
on Hacker News, a commenter demonstrated that it has exponential time complexity
for pathological patterns, which (seems to have) led to [CVE-2022-36021](https://nvd.nist.gov/vuln/detail/CVE-2022-36021)
being reported and [fixed](https://github.com/redis/redis/commit/dcbfcb916ca1a269b3feef86ee86835294758f84).

Descendants:
- Disque `stringmatch` [[src](https://github.com/antirez/disque/blob/master/src/util.c)]:
  Disque is an in-memory, distributed job queue by Salvatore Sanfilippo, which
  started as a hard fork of Redis. It makes no changes to `stringmatch`.

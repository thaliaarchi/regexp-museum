# Rand NED editor

[[Source](https://web.archive.org/web/20080406113333/http://perrioll.web.cern.ch/perrioll/Rand_Editor/)]
[[Manual](https://www.rand.org/pubs/reports/R2176.html)]
[[TextEditors.org](https://texteditors.org/cgi-bin/wiki.pl?NED)]

NED is a text editor developed at Rand, which was later maintained by Fabien
Perriollat. Its regular expression engine, in `e19/e.re.c`, was last modified
1996-12-08 and its copyright states “Copyright abandoned, 1983, The Rand
Corporation”. Several changes are marked with “Added Purdue CS 10/18/82 MAB”. It
claims possible lineage from the original V6 ed.

Versions:
- [Rand editor E19.55](https://web.archive.org/web/20080406164503/http://perrioll.web.cern.ch/perrioll/Rand_Editor/source_tar/Rand-E19.55.tgz)
- Rand editor E19.56 (not archived)
- Rand editor E19.57 (not archived)
- [Rand editor E19.58](https://web.archive.org/web/20080406165339/http://perrioll.web.cern.ch/perrioll/Rand_Editor/source_tar/Rand-E19.58.tgz)

## Documentation

From `e19/e.re.c` (same in both available versions):

```
   swiped from regex.c (and modified slightly)

   routines to do regular expression matching

   Entry points:

        re_comp(s)
                char *s;
         ... returns 0 if the string s was compiled successfully,
                     a pointer to an error message otherwise.
             If passed 0 or a null string returns without changing
             the currently compiled re (see note 11 below).

        re_exec(s)
                char *s;
         ... returns 1 if the string s matches the last compiled regular
                       expression,
                     0 if the string s failed to match the last compiled
                       regular expression, and
                    -1 if the compiled regular expression was invalid
                       (indicating an internal error).

   The strings passed to both re_comp and re_exec may have trailing or
   embedded newline characters; they are terminated by nulls.

   The identity of the author of these routines is lost in antiquity;
   this is essentially the same as the re code in the original V6 ed.

   The regular expressions recognized are described below. This description
   is essentially the same as that for ed.

        A regular expression specifies a set of strings of characters.
        A member of this set of strings is said to be matched by
        the regular expression.  In the following specification for
        regular expressions the word `character' means any character but NUL.

        1.  Any character except a special character matches itself.
            Special characters are the regular expression delimiter plus
            \ [ . and sometimes ^ * $.
        2.  A . matches any character.
        3.  A \ followed by any character except a digit or ( )
            matches that character.
        4.  A nonempty string s bracketed [s] (or [^s]) matches any
            character in (or not in) s. In s, \ has no special meaning,
            and ] may only appear as the first letter. A substring
            a-b, with a and b in ascending ASCII order, stands for
            the inclusive range of ASCII characters.
        5.  A regular expression of form 1-4 followed by * matches a
            sequence of 0 or more matches of the regular expression.
        6.  A regular expression, x, of form 1-8, bracketed \(x\)
            matches what x matches.
        7.  A \ followed by a digit n matches a copy of the string that the
            bracketed regular expression beginning with the nth \( matched.
        8.  A regular expression of form 1-8, x, followed by a regular
            expression of form 1-7, y matches a match for x followed by
            a match for y, with the x match being as long as possible
            while still permitting a y match.
        9.  A regular expression of form 1-8 preceded by ^ (or followed
            by $), is constrained to matches that begin at the left
            (or end at the right) end of a line.
        10. A regular expression of form 1-9 picks out the longest among
            the leftmost matches in a line.
        11. An empty regular expression stands for a copy of the last
            regular expression encountered.
```

From `help/helpkey` (same in both available versions):

```
`regexp
REGEXP - enter regular expression mode for searching & replacing;
    While in regular expression mode, "RE" is displayed at the bottom
    of the screen.

`-regexp
-REGEXP - exits regular expression mode.
    While in regular expression mode, "RE" is displayed at the bottom
    of the screen.
```

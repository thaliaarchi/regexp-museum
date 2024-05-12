# Blackbeard

Author: James K. Powers (1985–1987)

Blackbeard is a shareware programmer's editor with regular expression search and
“normal” search. The Blackbeard regular expression documentation in `RE.HLP` and
`BB.DOC` matches that of DECUS grep, word for word (after the intro paragraph),
even with the `\"` and `\\` escape sequences from the C source, but is rewrapped
to fit a narrower width. `BB.DOC` includes `RE.HLP` in its entirety, but with
different wrapping. In both versions `RE.HLP` and the relevant section of
`BB.DOC` are identical. `BB725.ZIP:RE.HLP` was modified 1981-01-02 00:05:00.

Its source is not available. The executables work in DOSBox-X.

Versions:
- Blackbeard 2.25 002 in [Chestnut Shareware Overload - 1992](http://annex.retroarchive.org/cdrom/chst-swoverload/WP/BB725.ZIP)
  (listed date: 1987-04-21)
- Blackbeard 7.34 in [NightOwl 004 - 1991](http://annex.retroarchive.org/cdrom/nightowl-004/004A/BLACKBRD.ZIP)
  and [Chestnut Shareware Overload - 1992](http://annex.retroarchive.org/cdrom/chst-swoverload/WP/BLACKBRD.ZIP)
  (listed date: 1988-01-07)

From `RE.HLP`:

```
Regular Expression Search
   The following characters are used to perform reqular
expression searching.  This set matches the grep utility very
closely. We will be integrating a help facility in to the
search function very soon now. For now this is what you get.
This search information is also contained on the distribution
diskette in the file re.hlp.

   x     An ordinary character (not mentioned below) matches that
         character.

   \     The backslash quotes any character.  \"\\$\" matches a
         dollar-sign.

   ^     A circumflex at the beginning of an expression matches
         the beginning of a line.

   $     A dollar-sign at the end of an expression matches the
         end of a line.

   .     A period matches any character except \"new-line\".

   :a    A colon matches a class of characters described by the
         following

   :d    character.  \":a\" matches any alphabetic, \":d\"
         matches digits,

   :n    \":n\" matches alphanumerics, \": \" matches spaces,
         tabs, and

   :    other control characters, such as new-line.

   *    An expression followed by an asterisk matches zero or
        more occurrances of that expression: \"fo*\" matches
        \"f\", \"fo\" \"foo\", etc.

   +    An expression followed by a plus sign matches one or more
        occurrances of that expression: \"fo+\" matches \"fo\",
        etc.

   -    An expression followed by a minus sign optionally matches
        the expression.

   []   A string enclosed in square brackets matches any
        character in that string, but no others.  If the first
        character in the string is a circumflex, the expression
        matches any character except \"new-line\" and the
        characters in the string.  For example, \"[xyz]\"
        matches \"xx\" and \"zyx\", while \"[^xyz]\" matches
        \"abc\" but not \"axb\".  A range of characters may be
        specified by two characters separated by \"-\".  Note
        that, [a-z] matches alphabetics, while [z-a] never
        matches.

The concatenation of regular expressions is a regular expression.
```

# DECUS grep

DECUS grep is a grep implementation distributed by Digital Equipment Corporation
Users' Society. It was first written in 1980 to run with the DECUS compiler or
on VMS and has been modified and distributed in DOS and Unix circles since. The
Z88DK version notes that the original authors are David Conroy and Martin Minow.

The [Z88DK project wiki](https://github.com/z88dk/z88dk/wiki/grep) has more
information on its history, including mentions of earlier versions:

> This 'grep' command implementation is a piece of history. It was originally
> developed for the PDP-11 and then ported to several targets (CP/M, VAX,
> earlier MS DOS compilers, etc..). Due to the very simple operating systems it
> had run on, some of its earlier implementations included internal tricks to
> simulate the file redirection and other similar workarounds which inspired
> some z88dk feature.

## Limitations

It has no alternation or grouping. Pattern syntax is case-insensitive (even
`:a`, `:d`, and `:n` can be equivalently written as `:A`, `:D`, and `:N`,
respectively) and matching is case-insensitive. When `\` appears at the end of a
line, instead of escaping the (missing) following character, it matches a
literal `\`. Named classes cannot appear in a character class.

Each character class is limited to at most 255 parsed bytes. All possible ranges
can still be expressed with ranges; only those with grossly inefficient
encodings would be limited. Since it matches bytes, and never can match NUL or
LF, this leaves 254 possible bytes, so all possible classes can be represented
using just chars. Using ranges, the worst case is ranges of two chars, because
each range is parsed to 3 bytes yet matches 2 chars. A class of 85 2-char
ranges, costs 255 bytes and spans 254 chars, so still works.

## Bugs

The SO control character (i.e., U+000E or ^N) is parsed incorrectly when in a
character class. It has the decimal value 14, which is the same as `RANGE`, so
`pmatch` interprets it and the following two characters as a range. It can
instead be written as a single-character range, `␎-␎` (within a character
class), to match correctly.

Dashes after ranges in character classes are parsed erroneously. When the parser
encounters a dash and it's not the first or last character in the class, it pops
the previous character from the pattern (the range start) and pushes `RANGE`,
the range start, and the next character (the range end). This doesn't account
for when the previous element was part of a range and it substitutes the range
end with 14 (`RANGE`).

Empty character classes, `[]` and `[^]`, are not properly forbidden and matching
assumes they are impossible. In `compile`, the length of the character class
includes the length byte itself, so it will never be less than 1 and the error
for an empty character class is unreachable. In `pmatch`, it only checks the
length after reading the first character or range, leading to an incorrect
interpretation and a possible buffer overrun.

## Optimizations

Syntactic optimizations that are possible with this dialect:

- Combine ranges in char classes, while keeping input order: Combine ranges with
  any later chars and ranges that adjoin it. Explode any ranges that match less
  than 4 chars, to save compiled and source space.
- Remove duplicate chars from char classes when included in prior ranges.
- Join ranges in char classes when they are at least 3
- Replace equivalent ad hoc char classes with named char classes.
- Replace SO in char classes with `␎-␎`.
- Unescape superfluous escapes.
- If anything precedes `^` or follows `$`, the entire pattern can be replaced
  with `.^` or `$.`.

## Documentation

When run as `grep ?`, it prints:

```
grep searches a file for a given pattern.  Execute by
   grep [flags] regular_expression file_list

Flags are single characters preceeded by '-':
   -c      Only a count of matching lines is printed
   -f      Print file name for matching lines switch, see below
   -n      Each line is preceeded by its line number
   -v      Only print non-matching lines

The file_list is a list of files (wildcards are acceptable on RSX modes).

The file name is normally printed if there is a file given.
The -f flag reverses this action (print name no file, not if more).

The regular_expression defines the pattern to search for.  Upper- and
lower-case are always ignored.  Blank lines never match.  The expression
should be quoted to prevent file-name translation.
x      An ordinary character (not mentioned below) matches that character.
'\'    The backslash quotes any character.  "\$" matches a dollar-sign.
'^'    A circumflex at the beginning of an expression matches the
       beginning of a line.
'$'    A dollar-sign at the end of an expression matches the end of a line.
'.'    A period matches any character except "new-line".
':a'   A colon matches a class of characters described by the following
':d'     character.  ":a" matches any alphabetic, ":d" matches digits,
':n'     ":n" matches alphanumerics, ": " matches spaces, tabs, and
': '     other control characters, such as new-line.
'*'    An expression followed by an asterisk matches zero or more
       occurrances of that expression: "fo*" matches "f", "fo"
       "foo", etc.
'+'    An expression followed by a plus sign matches one or more
       occurrances of that expression: "fo+" matches "fo", etc.
'-'    An expression followed by a minus sign optionally matches
       the expression.
'[]'   A string enclosed in square brackets matches any character in
       that string, but no others.  If the first character in the
       string is a circumflex, the expression matches any character
       except "new-line" and the characters in the string.  For
       example, "[xyz]" matches "xx" and "zyx", while "[^xyz]"
       matches "abc" but not "axb".  A range of characters may be
       specified by two characters separated by "-".  Note that,
       [a-z] matches alphabetics, while [z-a] never matches.
The concatenation of regular expressions is a regular expression.
```

[$$DOC](https://github.com/mainframed/CBTTAPE/blob/0af043012b18a7a645b430db861950abaca02a25/CBT419/CBT.V500.FILE419.PDS/%24%24DOC.txt)
from CBT TAPE writes:

> The C source code for a grep clone,
> originally taken from the DECUS tape.  Modified
> for running under OS/390.

[`$DIGNUS`](https://github.com/mainframed/CBTTAPE/blob/main/CBT419/CBT.V500.FILE419.PDS/%24DIGNUS.txt)
from CBT TAPE documents info on its distribution by Dignus and how it can be used
with TSO (a version control system?):

```
                      Free Programs for OS/390

  ----------------------------------------------------------------

The following programs are available for *free* download from
Dignus, LLC.

Each has been compiled with Systems/C - usually in a cross-platform
environment. Systems/C has no runtime library requirements, there is
nothing more to download to run these programs.

They are made available free of charge, and unless otherwise noted, are
copyright Dignus, LLC.

Dignus provides NO WARRANTY, whatsoever, to these programs. Use them at
your own discretion.

We will update this page as more downloads become available.

Of course, nothing is totally free - while you're here, we hope you'll
take a moment and look at the information provided in these web pages
for Systems/C.

   * printps - a program to convert text to postscript.
   * indent - a program to "pretty print" C source.
   * grep - the standard GREP utility.
   * what - the WHAT utility for object versions.
   * byacc - the Berkely YACC utility for parser generation.
   * flex - the Berkely Fast LEXical generator.

Note that the files are provided in TSO XMIT format. When downloading,
you should ensure that the file is copied in BINARY mode. Also, when
up-loading to your mainframe, you should ensure the up-loaded data set
is Fixed with an LRECL of 80, e.g. DCB=(RECFM=FB,LRECL=80,BLKSIZE=80*n).

A good way to ensure the data set is correct is to pre-allocate it.

Once the file has been properly transferred to your mainframe, the TSO
RECEIVE command is used to unload the data set on OS/390. e.g.:

     RECEIVE INDS(file-name)

  ----------------------------------------------------------------

[…]

grep

This is a version of the GREP (General Regular Expression Processor)
program, taken from http://www.snippets.org.

GREP will be familiar to UNIX and OE/MVS users, however, there isn't a
convenient version supplied for TSO or BATCH processing.

You can download the TSO Transmit file for GREP here .

[…]

Here is some example JCL which shows how GREP can be used to locate
specific lines in output.

     //GREP JOB
     //GREP1 EXEC PGM=GREP,PARM='-n,bar.*('
     //STEPLIB  DD DSN=grep.load.module,DISP=SHR
     //SYSPRINT DD SYSOUT=*
     //SYSTERM  DD SYSOUT=*
     //STDOUT   DD SYSOUT=*,LRECL=133,RECFM=FB
     //STDERR   DD SYSOUT=*,LRECL=133,RECFM=FB
     //STDIN    DD *,LRECL=80

     This line will not match
     This line has bar(  and will match
     This line also has bar....(  and will match

     //

Or, you can call it from TSO. In this example, we are examining the file
MY.TEXT.FILE for lines that contain the string "help".

     CALL grep.load.module(GREP) 'help,//DSN:MY.TEXT.FILE' ASIS

Note that GREP expects the STDOUT and STDIN DD's to be allocated.
```

## Descendants

- [Blackbeard](../editors/blackbeard.md): The Blackbeard Programmer's Editor
  uses DECUS grep (or some variant) and its regular expression docs, which were
  copied from DECUS grep, were modified 1981-01-02 00:05:00.
- [Zeus](../editors/zeus.md): Early versions of the Zeus Programmers Editor
  bundled DECUS grep with modifications to adjust the output format for Zeus.
- [decus-grep-rust](https://github.com/thaliaarchi/decus-grep-rust): A close
  port of DECUS grep to Rust by Thalia Archibald (2024).

## Traces of the source

Roughly ordered from least-to-most changed:

- comp.sources.unix [[archive](https://sources.vsta.org/comp.sources.unix/volume3/decus_grep)]
  [[mirror](https://github.com/Cutlery-Drawer/comp.sources.unix/blob/master/volume3/decus_grep)]
- Dominic Shields' [C code](https://github.com/dominicshields/C/blob/master/GREP.C)
- [AROS contrib](https://github.com/aros-development-team/contrib/blob/master/fish/grep/grep.c)
- [Zeus 2.15](../editors/zeus.md)
- [SNIPPETS collection](https://web.archive.org/web/19971221055229/http://snippets.org/),
  first added in the [1992-04 release](http://annex.retroarchive.org/cdrom/cotc-1/PROGRAM/SNIP0492.ARJ)
- [CBT TAPE](https://www.cbttape.org/), also includes assembly for grep
  generated with the System/C compiler [[mirror](https://github.com/mainframed/CBTTAPE/blob/main/CBT419/CBT.V500.FILE419.PDS/GREP%40C.txt)]
- [HPSource Archive](https://github.com/noczero/PASCAL-DAP/blob/master/Tubes/References/HPSource/Source16/C/grep.c)
- [PicoC](https://gitlab.com/zsaleeba/picoc/-/blob/master/tests/46_grep.c)
- [Tiny C Compiler](https://repo.or.cz/tinycc.git/blob/HEAD:/tests/tests2/46_grep.c)
- [Z88DK](https://github.com/z88dk/z88dk/wiki/grep) (development kit for Z80)
  project wiki

## Comparative version history

This orders grep versions hierarchically to make the least changes. Only bolded
versions have been located.

- (1980) Initial version for the DECUS compiler or on VMS

  - (1980-01-20) Converted for BDS compiler (under CP/M-80) by Chris Kern

    - (1983-06) Converted to IBM PC with CI-C86 C Compiler by David N. Smith

      - (?) The version Ray Davis submitted to comp.sources.unix

        - (?) **comp.sources.unix**

          Changes:
          - Added `#ifdef BSD` block to define `islower` for BSD by moderator
            John P. Nelson.

        - (1985-09-04) **Dominic Shields**

          Changes:
          - Write “dns added extra '*'” next to `char **hp` parameter to `help`.
            This dns could be David N. Smith, an author listed in all these
            versions, or possibly Dominic Shields. Since signing changes with
            dns is not a convention used by Dominic in other files, I presume it
            was by David.
          - Add file header. It is not written by the code authors, because it
            states: “The typist of this heading does not have equipment to run
            this program and prepared this header from comments within the
            source code or companion files.”
          - Convert tab stops to spaces and add more line breaks.

        - (1998-08-25) **AROS**

          Changes:
          - Change `main` to `return (0);` in all cases.
          - Remove unused `int gotcha` in `main` and `register int c` in
            `badpat`.
          - Assign the `lp` last pattern pointer at the start of `compile`.
            (However, it was impossible to read an unassigned `lp` before.)
          - Change `pp >= &pbuf[PMAX]` to `pp > &pbuf[PMAX-1]` in `store`.

        - (1996-04-10) **Zeus**

          Changes:
          - Expand filename wildcards with `findfirst` and `findnext` from
            `<dir.h>`.
          - Adjust printing to be to stdout and tailer output for Zeus.
          - Change the parameter to `help` from `char **` (good) to `char *`
            (incorrect). This could be an earlier fix that only the others have.
          - Add SUB control character at the end of the file.

        - (1991-09-30) **SNIP0492/SNIP0792**

          Changes:
          - Convert prototypes from K&R- to ANSI-style and note “Converted to
            ANSI-style C (Zortech C++) compiler by Bob Jarvis”.
          - Indent with 6 spaces.
          - Change `documentation` and `patdoc` from arrays to lexically
            concatenated strings with `\n`, change `help` to just `fputs`.
          - Remove the commented VMS defines.
          - Add forward declarations.
          - Compare against `NULL`/`0` instead of implicitly and use `NULL`
            instead of `0` for pointers.
          - Expand DOS filename wildcards with `findfirst` and `findnext` from
            `<dos.h>`.
          - Remove “Give good help” comment for `help` and parameter docs for
            `cclass`, `badpat`, `grep`, and `pmatch`.
          - Move post-increments into preceding statements when possible.
          - Mark empty loops with “null statement to avoid warning”.

        - (1994-04-03) **SNIP9404/SNIP9503**

          A year of SNIPPETS releases do not include GREP.C. Then, when it is
          added back, it seems to be from another source as many changes have
          been reverted.

          Changes:
          - Remove Chris Kern and David N. Smith change lines. It seems like a
            deletion, because it is replaced with a comma, which is not
            grammatically correct.
          - Expand tabs to spaces with 8-space tab stops.
          - Align variable, parameter, and comment groups in columns.
          - Remove `#include <ctypes.h>`.
          - Replace empty strings in documentation with `\n`.
          - Remove the commented VMS defines.
          - Move `cclass` and `pmatch` forward declarations to the top.
          - Specify implicit parameter types (in K&R style).
          - Remove unused `int gotcha` in `main` and `register int c` in
            `badpat`.
          - Move post-increments into preceding statements when possible.
          - Add descriptions to asterisk dividers.

          Descendants:

          - (1995-11-02) **SNIP9510**: Changes: Use named exit codes.

            - (1996-11-24) **SNIP9611**: Changes: Add “+++Date last modified:
              02-Nov-1995” comment (probably from TLIB).
              - (1997-07-05) **SNIP9707**: Changes: Change comment to “+++Date
                last modified: 05-Jul-1997”.
                - (2003-08-17) **snip-c**: Changes: Remove “+++Date last
                  modified” comment.
                - (?) **CBT TAPE**

                  Changes:
                  - Remove “(wildcards are acceptable on RSX modes)” from
                    `documentation`.
                  - Do not print `\n` after matched lines.

            - (?) **HPSource**: Changes: Remove all blank lines. Add SUB control
              character and extra text at the end of the file.

          - (2011-02-10) **PicoC**

            Changes:
            - Enclose `documentation` and `patdoc` in `#ifdef 0`.
            - Remove `extern` from forward declarations.
            - Move `main` to the end of the file.
            - Convert prototypes from K&R- to ANSI-style, but keep commented
              parameters as comments.
            - Remove `register` from variables.

            Descendants:
            - (2012-06-18) **tinycc**

              Changes in the initial commit:
              - Adjust indentation, primarily indenting `case`s, keeping 3-space
                indentation.
              - Change `main` to `return 0;` instead of `return;` or implicit.
              - Add `/* vim: set expandtab ts=4 sw=3 sts=3 tw=80 :*/` to end.

              Changes in later commits:
              - Remove `#ifdef 0` around `documentation` and `patdoc`.
              - Fix typos in printed text.
              - Add forward declarations for `store`, `error`, `badpat`, and
                `match`.
              - Change `%d` to `%ld`.
              - Fix `match` return type.
              - Avoid `STAR` from temporarily seeking under the allocation.

          - (?) **Z88DK**

            Changes:
            - Note that the original authors are David Conroy and Martin
              Minow.
            - Describe building with Z88DK.
            - Abbreviate docs and move it to grep.txt.
            - Print errors to stderr.
            - Change usage prefix from `?GREP-E-` to `Error: ` and exit with 0.

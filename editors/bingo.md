# Bingo

Bingo 2.01 added regular expression search. The Bingo 2.10a Reference Manual
(BINGO.DOC) states that “the regular expression subsystem is going to be
completely rewritten for the next release”.

Versions:
- Bingo 2.01 in [NightOwl 004 - 1991](http://annex.retroarchive.org/cdrom/nightowl-004/004A/BINGO201.ZIP)
- Bingo 2.10a in [NightOwl 005 - 1990/91](http://www.retroarchive.org/cdrom/nightowl-005/041A/BINGO21A.ZIP)
- Bingo 3.10 in [Shareware Overload Trio - 1993](http://annex.retroarchive.org/cdrom/chst-strio-93/DIR32/index.html)

From the Bingo 3.10 Reference Manual:

> ```
>                       Bingo 3.10 Reference Manual
>
>                                Searching
>                                ---------
>
>      There are two search algorithms present in Bingo.  One is very
> simple and very fast, and part of it is hand-coded in assembler for a
> bit more speed yet.  For 95% of what you want to do, it is just right.
>      However, with the advent of version 2.01, a second search
> algorithm was added; a regular-expression method.  Regular expressions
> are a mathematical way to describe strings of text, and are very
> powerful.  Bingo's algorithm is reliable but not overly speedy; I
> suggest you keep this in mind when using it.
>      If you are not familiar with regular expressions, I am not going
> to attempt to explain them to you here.  If, however, you have used
> them before, I will explain the notations I used in coding Bingo's
> algorithm.
>      To perform a regexp search, use the 'R' modifier on you search
> (or replace).  If you use this modifier, the string will be
> interpreted as follows:
>
>      -    classes, i.e. [0-9] and 'not' classes, i.e. [~0-9]
>      -    occurrences of once, once or none (?), one or more (+), none
>           or more (*)
>      -    grouping  {}
>      -    ORing of {} groups |
>      -    wild card character .
>      -    match begin and end of lines with ^ and $, respectively
>      -    support for debugging regular expression search
>           patterns
>      -    along with regular expression searches, you can specify the
>           replacement in terms of the matched text.  '@n' in the
>           replacement pattern places the text matching the nth group.
>           '@@' matches the entire matched text. This allows you to do
>           some nifty text manipulation.
>
>      For some simple examples, see below.
>
>      It is easy to limit the search area to a specific range by
> marking a range of text in any of Bingo's three modes.  Then use the
> 'M' modifier to say you wish to match text only within the Marked
> area.
>      The 'C' option in the 'search' function will count the number of
> occurrences of the target string in the rest of the search area.
>      The 'G'lobal option for search and replace operations starts from
> the current cursor position, not from the top of the file.
>      Try the Search and Macro capability -- it is sharp.
>
>
> Regular Expression Search and Replace Examples
> ----------------------------------------------
>      Here are some examples of regular example search and replace.
>
> Search for --> [a-z]+/.
>      would match any sequence of one or more letters between 'a' and
>      'z' followed by a single period.
>
> Search for --> help[a-z]+/.
>      would match a sequence of 'help' followed by one or more letters
>      then a single period.  It would match 'helpoooooo.' and 'helpp.'
>      but not 'help.'
>
> Search for --> 19{87}|{88}
>      would match '19' followed by one occurrence of either '87' or
>      '88'.
>
> Search for --> 19{87}*|{88}
>      would match '19' followed by none or more occurrences of '87' or
>      a single occurrence of '88'.  Thus it would match '19',
>      '1987878787', or '1988'.
>
> Search for --> .
>      matches any single character. (Note: /. would match a an actual
>      period.)
>
> Search for --> ^[a-z]+
>      matches a sequence of 1 or more letters, provided it starts a
>      line.
>
> Search for --> ^[a-z]+$
>      matches a sequence of 1 or more letters, provided it starts a
>      line and ends a line.
>
> Search for --> ^[a-z]+/.[a-z]+
>      basically matches file names made up of alpha characters, which
>      are found at the beginning of a line.
>
> Search for --> ^$
>      matches a blank line.
>
> Search for --> ^.
>      matches a non-blank line.
>
> These last two allow you to do some neat stuff using
> the macro capability, i.e., apply a macro to every
> non-blank line.
>
> Search for --> {[a-z]+}{/.}{[a-z]+}
> Replace with -->  @3.@1
>      This will match a sequence of one or more letters, followed by a
>      period, followed by one or more letters (a file name,
>      essentially).  The replace will put the text matching the 3rd
>      group first, then a period, then the text matching the 1st group.
>      On a file name, this will have the effect of reversing the order
>      of the name and the extension, i.e:
>
>           filename.txt
>
>      would become
>
>           txt.filename
>
>      since 'filename' would match the first group and 'txt' matches
>      the third group.
>
>
> Incremental Searching
> ---------------------
>      Version 3.10 adds an incremental search facility.  This searches
> forward, finding a match as you extend the string.  Hitting the <TAB>
> key will cause it to find the next match.  Pressing <Backspace> will
> backup one match.    Pressing <Return> will end the search and leave
> you at your current position; Pressing <Escape> will return to where
> the search began.
>
>                              Function List
> ----------------------------------------------------------------------
>
>                                                                  Again
> ----------------------------------------------------------------------
> Repeat the last search operation.  If none has yet been done, works
> just like search.  If the last search operation done was a search and
> replace, only the search portion is done.
>
>                                                                 Search
> ----------------------------------------------------------------------
> Search for text.  Will ask for the target text, and then the
> modifiers:
>                          A Accent
>                          B Backwards
>                          C Count
>                          D Debug
>                          F search through all Files
>                          I Ignore case
>                          M Marked
>                          R Regexp
>                          T start at the Top of the workspace
>      The 'A' option tells Bingo to highlight the 'found' text until
> the next keystroke arrives.
>      The 'B' modifier will search backwards.
>      The 'C' option simply counts the number of occurrences.
>      The 'D' option tells Bingo that, if you also specify regular
> expression searching, before searching display Bingo's interpretation
> of your regular expression.
>      The 'F' option tells Bingo to treat all the loaded files as the
> search space.  This allows Bingo to find the next occurrence, even if
> it is in another file.
>      The 'I' option tells Bingo to ignore case when searching.
>      The 'M' option tells Bingo to only matched text *completely*
> within marked text.
>      The 'R' option tells Bingo to interpret the input string as a
> regular expression.  See the section on searching for more details.
>      The 'T' option tells Bingo to start at the beginning of the
> search space.  If the 'I' option is also used, this is the bottom of
> the file; if not, the top of the file.  If the 'F' option is also
> used, it is the last/first file.
>
>                                                                Isearch
> ----------------------------------------------------------------------
> Incremental search.  Searches for a match to the target string
> interactively, as you type in each character, Bingo searches for a
> match and moves there.  Pressing <TAB> finds the next search; pressing
> <Backspace> backs up one match.  Pressing <Return> will end the search
> and leave you at your current position; Pressing <Escape> will return
> to where the search began.
>
>                                                          Isearch_files
> ----------------------------------------------------------------------
> Works just like Isearch, only it will search across files.  If a match
> is not found in the current file, it will look in the next, and so on.
>
>                                                                Replace
> ----------------------------------------------------------------------
> Search and replace text.  Will ask for target, replacement text, and
> three modifiers:
>                          B Backwards
>                          D Debug
>                          F search across Files
>                          G Global Search/Replace
>                          I Ignore Case
>                          M Marked
>                          P Preserve
>                          R Regexp
>                          T Top of search space
>      If Global is selected, Bingo will simply replace all matching
> occurrences with the replacement text.  If not, Bingo will stop at
> each match and ask:
>                     Yes:      replace and continue.
>                     No:       don't replace, but continue search.
>                     Only:     Replace this and stop
>                     Quit:     stop, no replacement.
>                     Global:   Continue with global replacement
>
>      'M', 'R', 'F', 'T' and 'A' options work as in the search case.
>      'P' tells Bingo to preserve the original cursor location and
> return to it when done with the replace operation.
>      'D' is useful for regular expression work.  It tells Bingo to
> display its conception of the target string (grouping, classes,
> occurrence, etc).
>
>                                                           Search_apply
> ----------------------------------------------------------------------
> Will act like the 'search' function, but will ask for either:
>      - a key to apply.
>      - a Bingo command line to execute (as if it were used with the
>      'cmd_line' function).
>      - a Chess command (as if it were used with the 'exec_chess'
>      function).
> when found.  It will work like the replace function, but instead of
> replacing, it will execute the given key.  DO NOT use this function
> while recording a macro.
>
>                                                        Mark_last_found
> ----------------------------------------------------------------------
> His will unmark the file and mark the last found text if you have not
> moved.
> ```

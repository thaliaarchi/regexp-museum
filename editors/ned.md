# NED

Author: David L. Dight (1987-1993)

NED has regular expression search and replace.

Versions:
- NED v1.7a from [garbo.uwasi.fi](http://www.retroarchive.org/cdrom/garbo_dos/editor/nedit17a.zip)

From the NED v1.7a User's Guide (NED.DOC):

> ```
> NED v1.7a User's Guide
> Section 5.6    Regular Expression Reference
>
> Introduction
> This section  describes the  Regular Expression  Language
> used with  the SPECIFY  command. See section 5.1 for more
> details on this command. Regular expressions are a way of
> representing text  patterns in  a symbolic shorthand. The
> symbols used  to define  these expressions fall into five
> categories:
>
> Symbols that match a specific character
> Symbols that match any character
> Symbols that match a character's position on the line
> Symbols that match any of a set of characters or anything
> except a set of characters
> Symbols that let you match the previous symbol any number
> of times
>
> An expression  may be  made up of any or all of the above
> categories.
>
> CARAT (^)                                      Start line
>
> This symbol  matches any text at the beginning of a line.
> For example:
>
>      ^cat
>
> will match  the string "cat" only if it is located at the
> beginning of a line so that:
>
>      the cat
>
> would not be matched.
>
> DOLLAR ($)                                       End line
>
> This symbol  matches any  text at  the end of a line. For
> example:
>
>      cat$
>
> will match  the string "cat" only if it is located at the
> end of a line so that:
>
>      cat nap
>
> would not be matched.
>
> PERIOD (.)                                  Any character
>
> This symbol  matches any  one character.  Generally  this
> symbol by  itself will  always find  a match.  Its use is
> usually as a placeholder. For example:
>
>      c.t
>
> will match:
>
>      cat, cot, cut
>
> but will not match:
>
>      coot, coat or couch etc.
>
> ASTERISK (*)                        Match last expression
>
> This symbol matches zero or more matches of the preceding
> expression. For example:
>
>      c.*t
>
> will match:
>
>      cat, coat, chart, compliment
>
> Here the  preceding expression  is the  period. Therefore
> NED searches for any word starting with 'c' and ending in
> 't'.
>
> SQUARE BRACKETS ([])                      Character class
>
> The square brackets define a set of characters known as a
> character class.  NED will  then match  any character  in
> that  set.   Character  classes   are  usually   used  in
> conjunction with other language elements. For example:
>
>      c[aou]t
>
> will match:
>
>      cat, cot, cut
>
> but will not match:
>
>      cet, cit, cyt
>
> If the  first character  in the  brackets is  a carat (^)
> then  patterns  with  characters  not  appearing  in  the
> brackets will be searched for. For example:
>
>      c[^aou]t
>
> will not match:
>
>      cat, cot, cut
>
> but will match:
>
>      cit, cet, cft, czt
>
> The brackets  may also  be used  to specify ASCII ordered
> ranges by specifying the beginning and end of the range.
> For example:
>
>      c[a-z][A-Z]t
>
> matches any upper or lower case letter so that:
>
>      cat,cIt,crt,cGt
>
> will all be matched.
>
> SPECIAL CHARACTERS
>
> The regular  expression language allows you to search for
> the following special characters:
>
>      \t   tab
>      \s   space
>      \b   backspace
>
> The backslash  tells NED  that the character that follows
> is to  be treated  literally except  with the above three
> characters. Therefore  to search  for characters  used in
> the language, prefix them with the backslash as follows:
>
>      \\   backslash
>      \*   asterisk
>      \.   period
>      \^   carat
>      \[   left bracket
>      \]   right bracket
>      \$   dollar
>
> for example:
>
>      if\snot\s\[\*2\]
>
> will match:
>
>      if not [*2]
>
> EXAMPLES
>
> You can  form many  expressions using  the language. Here
> are a few examples:
>
>      [a-z][a-z]*ism
>
> Matches any  'ism' word e.g. 'prism'. In this example you
> must repeat  the character  class range twice to match it
> any number of times.
>
>      /\*.*\*/
>
> Matches any  comment line in a C program, for example: /*
> this is a comment */
>
> will be matched.
>
>      ^[\s\t]*REM.*$
>
> Matches any comment line in a BASIC program.
> The following expression:
>
>      ^[a-z][a-z]*[\s\t]*.*([^;]*)[^;]*$
>
> will find  any C function declaration with function body.
> The expression  searches for  beginning  of  a  line  (^)
> followed by  one or  more occurrences of any character in
> the range a to z ([a-z][a-z]*) followed by either a space
> or a  tab repeated zero or more times ([\s\t]*), followed
> by any  character  repeated  zero  or  more  times  (.*),
> followed by  an open  parenthesis  (()  followed  by  any
> character except a semi-colon repeated zero or more times
> ([^;]*), followed by a close parenthesis ()), followed by
> any character  except a  semi-colon repeated zero or more
> times ([^;]*)  followed  by  an  end  of  line  ($).  For
> example, the above expression would match:
>
>      WINDOW *get_window(int start,int finish,char *store)
>
> but not match:
>
>      WINDOW *get_window (int, int, char *);
>
> The above  example only  matches 'C'  function bodies and
> not function  prototypes. It  is useful  for compiling  a
> cross-reference of  all of  the functions in a module. As
> you can  see expressions  can  be  very  complicated  yet
> extremely powerful filters can be created.
> ```

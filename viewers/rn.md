# `rn`

[[site](https://web.archive.org/web/19970401040656/http://www.academ.com/academ/rn.html)]
[[history](https://web.archive.org/web/20140227213900/http://www.faqs.org:80/faqs/usenet/software/part1)]
[[Wikipedia](https://en.wikipedia.org/wiki/Rn_(newsreader))]

Author: Larry Wall

`rn` used regular expressions for searching and introduced [KILL files](https://en.wikipedia.org/wiki/Kill_file)
to match email subjects. It was first released in 1984, while Perl was in 1987,
so its engine was likely influential.

Its regular expression engine is in `search.c`.

Larry Wall used RCS for version control of `rn` [^rn-hackers] and distributed
patches with `patch`.

From the [rn site](https://web.archive.org/web/19970401040656/http://www.academ.com/academ/rn.html):

> The RN Newsreader was part of the second generation of newsreaders for USENET
> news. Originally developed by the author of Perl, Larry Wall, the RN news
> reader was developed to minimize the amount of time the user was kept waiting
> for news articles to be displayed. It did this by using cache techniques. RN
> was also developed to minimize the use of computer resources when running on
> computers with limited memory capabilities at the sacrifice of some speed.
>
> Larry wanted to move on to bigger and better things (like creating Perl) and
> so passed the maintenance duties for RN to Stan Barber around 1987. Stan
> proceeded to assemble patches for RN until the early 1990's when threaded
> newsreaders began to be developed. Stan hopes to get more patches from the
> threaded varients into the non-threaded version in the future.

From [“Usenet Software: History and Sources”](https://web.archive.org/web/20140227213900/http://www.faqs.org:80/faqs/usenet/software/part1):

> A second, more versatile interface, "rn", was developed by Larry Wall (the
> author of Perl) and released in 1984. This interface also uses full-screen
> display with direct positioning, but it includes many other useful features
> and has been very popular with many regular net readers. The interface
> includes reading, discarding, and/or processing of articles based on
> user-definable patterns, and the ability of the user to develop customized
> macros for display and keyboard interaction. "rn" is currently at release
> 4.4.4. It is being maintained by Stan Barber <sob@academ.com>. "rn" is not
> provided with the standard news software release, but is very widely available
> because of its popularity.

## Features using regular expressions

### Pager commands

`g`, `G`, `^G`, and `TAB` pager commands use regular expressions to search lines
in the article and jump forward to the next matching line. (`^G` denotes Ctrl+G
or Ctrl+g and `TAB` denotes tab, Ctrl+I, or Ctrl+i.)

As documented by the `h` command (`help.c:help_page`):

    g pat   Go to (search forward within article for) pattern.
    G       Search again for current pattern within article.
    ^G      Search for next line beginning with "Subject:".
    TAB     Search for next line beginning with a different character.

`g` executes the given pattern (with an optional, ignored space separating the
pattern and `g`). `^G` uses the pattern `^Subject:`. `TAB` uses the pattern
`^[^%c]`, where `%c` is substituted for the first character on the current line.

(Commands handled in `art.c:page_switch`.)

### Line filtering

The user can supply patterns to suppress matching lines or define the end of the
page with the `HIDELINE` and `PAGESTOP` environment variables, respectively.

(Patterns parsed in `ng.c:do_newsgroup` and executed in `art.c`.)

### man.1

#### `/pattern`

Scan forward for a newsgroup matching `pattern`.
Patterns do globbing like filenames, i.e., use `?` to match a single
character, `*` to match any sequence of characters, and `[]` to specify a list
of characters to match.
(`all` may be used as a synonym for `*`.)
Unlike normal filename globbing, newsgroup searching is not anchored to
the front and back of the filename, i.e. `/jok` will find
net.jokes.
You may use `^` or `$` to anchor the front or back of the search:
`/^test$` will find newsgroup test and nothing else.
If you want to include newsgroups with 0 unread articles, append `/r`.
If the newsgroup is not found between the current newsgroup and the last
newsgroup, the search will wrap around to the beginning.

#### `?pattern`

Same as `/`, but search backwards.

…

#### `o pattern`

Only display those newsgroups whose name matches `pattern`.
Patterns are the same as for the `/` command.
Multiple patterns may be separated by spaces, just as on the
command line.
The restriction will remain in effect either until there are no articles
left in the restricted set of newsgroups, or another restriction command
is given.
Since `pattern` is optional, `o` by itself will remove the
restriction.

#### `a pattern`

Add new newsgroups matching `pattern`.
Newsgroups which are already in your `.newsrc` file, whether subscribed to or
not, will not be listed.
If any new newsgroups are found, you will be asked for each one whether
you would like to add it.
After any new newsgroups have been added, the `a` command also
restricts the current set of newsgroups just like the `o` command
does.

…

#### `^K`

Edit the global KILL file.
This is a file which contains `/pattern/j` commands (one per line) to be
applied to every newsgroup as it is started up, that is, when it is
selected on the newsgroup selection level.
The purpose of a KILL file is to mark articles as read on the basis of some
set of patterns.
This saves considerable wear and tear on your `n` key.
There is also a local KILL file for each newsgroup.
Because of the overhead involved in searching for articles to kill, it is
better if possible to use a local KILL file.
Local KILL files are edited with a `^K` on the article selection level.
There are also automatic ways of adding search commands to the local KILL
file—see the `K` command and the K search modifier on the
article selection level.

If either of the environment variables `VISUAL` or `EDITOR` is set, the
specified editor will be invoked; otherwise a default editor (normally *vi(1)*)
is invoked on the KILL file.

…

#### `/pattern`

Scan forward for article containing `pattern` in the subject.
See the section on Regular Expressions.
Together with the escape substitution facility described later, it becomes
easy to search for various attributes of the current article, such as
subject, article ID, author name, etc.
The previous pattern can be recalled with `<esc>/`.
If `pattern` is omitted, the previous pattern is assumed.

#### `/pattern/h`

Scan forward for article containing `pattern` in the header.

#### `/pattern/a`

Scan forward for article containing `pattern` anywhere in article.

#### `/pattern/r`

Scan read articles also.

#### `/pattern/c`

Make search case sensitive.
Ordinarily upper and lower case are considered the same.

#### `/pattern/modifiers:command{:command}`

Apply the commands listed to articles matching the search command (possibly
with `h`, `a`, or `r` modifiers).
Applicable commands include `m` (mark as unread), `M`
(delayed mark as unread), `j` (mark as read), `s dest`
(save to a destination), `!command` (shell escape), `=`
(print the subject) and `C` (cancel).
If the first command is `m` or `M`, modifier `r` is assumed.
A `K` may be included in the modifiers (not the commands) to cause the
entire command (sans `K`) to be saved to the local KILL file, where it will
be applied to every article that shows up in the newsgroup.

For example, to save all articles in a given newsgroup to the line printer
and mark them read, use `/^/\||\|lpr:j`.
If you say `/^/K\||\|lpr:j`, this will happen every time you enter the
newsgroup.

#### `?pattern`

Scan backward for article containing `pattern` in the subject.
May be modified as the forward search is: `?pattern?modifiers[:commands]`.
It is likely that you will want an r modifier when scanning backward.

…

#### `^K`

Edit the local KILL file for this newsgroup.
Each line of the KILL file should be a command of the form /pattern/j.
(With the exception that *rn*
will insert a line at the beginning of the form `THRU <number>`,
which tells *rn*
the maximum article number that the KILL file has been applied to. You
may delete the `THRU` line to force a rescan of current articles.)
You may also have reason to use the `m`, `h`, or `a` modifiers.
Be careful with the M modifier in a kill file—there are more efficient
ways to never read an article.
You might have reason to use it if a particular series of articles is posted
to multiple newsgroups.
In this case, `M` would force you to view the article in a different newsgroup.

To see only newgroup articles in the control newsgroup, for instance, you
might put

    /^/j
    /newgroup/m

which kills all subjects not containing `newgroup`.
You can add lines automatically via the `K` command and `K` search modifiers,
but editing is the only way to remove lines.
If either of the environment variables `VISUAL` or `EDITOR` is set, the
specified editor will be invoked; otherwise a default editor (normally vi)
is invoked on the KILL file.

The KILL file may also contain switch setting lines beginning with `&`.
Additionally, any line beginning with `X` is executed on exit
from the newsgroup rather than on entrance.
This can be used to set switches back to a default value.

…

#### `&`

Print out the current status of command line switches.

#### `&switch {switch}`

Set additional ~command line switches.

…

#### `gpattern`

Goto (search forward for) `pattern` within current article.
Note that there is no space between the command and the pattern.
If the pattern is found, the page containing the pattern will be displayed.
Where on the page the line matching the pattern goes depends on the value
of the `-g` switch.
By default the matched line goes at the top of the screen.

#### `G`

Search for `g` pattern again.

#### `^G`

This is a special version of the `g` command that is for skipping
articles in a digest.
It is equivalent to setting `-g4` and then executing the command
`g^Subject:`.

#### `TAB`

This is another special version of the `g` command that is for
skipping inclusions of older articles.
It is equivalent to setting `-g4` and then executing the command
`g^[^c]`, where `c` is the first character of the last line
on the screen.
It searches for the first line that doesn't begin with the same character
as the last line on the screen.

…

#### Regular Expressions

The patterns used in article searching are regular expressions such as
those used by *ed(1)*.
In addition, `\w` matches an alphanumeric character and `\W` a nonalphanumeric.
Word boundaries may be matched by `\b`, and non-boundaries by `\B`.
The bracketing construct `\(\ ...\ \)` may also be used, and `\digit` matches
the digit'th substring, where digit can range from `1` to `9`.
`\0` matches whatever the last bracket match matched.
Up to 10 alternatives may given in a pattern, separated by `\|`, with the
caveat that `\( ... \| ... \)` is illegal.

…

#### `%(test_text=pattern?then_text:else_text)`

If `test_text` matches `pattern`, has the value `then_text`,
otherwise `else_text`.
The `:else_text` is optional, and if absent, interpolates the null string.
The `=` may be replaced with `!=` to negate the test.
To quote any of the metacharacters `=`, `?`, `:`, or `)`),
precede with a backslash.

#### `%digit`

The digits `1` through `9` interpolate the string matched by the nth bracket
in the last pattern match that had brackets.
If the last pattern had alternatives, you may not know the number of the
bracket you want—`%0` will give you the last bracket matched.

## Versions

- rn version 4.1 (parts [1](https://groups.google.com/g/net.sources/c/xUGB_4Meno8),
  [2](https://groups.google.com/g/net.sources/c/XUBHx73xK7s),
  [3](https://groups.google.com/g/net.sources/c/X78CZnttHqg),
  [4](https://groups.google.com/g/net.sources/c/U8wjLYgZ9XQ),
  [5](https://groups.google.com/g/net.sources/c/9MA0hI3j4iI),
  [6](https://groups.google.com/g/net.sources/c/FFbGY5bbixE),
  [7](https://groups.google.com/g/net.sources/c/iLF8GYR36k8),
  and [8](https://groups.google.com/g/net.sources/c/g8oUj9EgApA))
  on net.sources, 1984-09-24
- rn version 4.3 (parts [0](https://groups.google.com/g/mod.sources/c/ZGohbRfEi2w),
  [1](https://groups.google.com/g/mod.sources/c/hJok66uiWTU),
  [2](https://groups.google.com/g/mod.sources/c/H7mx3N-0jk4),
  [3](https://groups.google.com/g/mod.sources/c/27eQUTed3J0),
  [4](https://groups.google.com/g/mod.sources/c/QzOejfSBrdQ),
  [5](https://groups.google.com/g/mod.sources/c/hvSc-jCBMmY),
  [6](https://groups.google.com/g/mod.sources/c/RM9voSBl-98),
  [7](https://groups.google.com/g/mod.sources/c/WAihOBJZf7A),
  [8](https://groups.google.com/g/mod.sources/c/jLfBDURu-_8),
  and [9](https://groups.google.com/g/mod.sources/c/0xMLaQS6V5s))
  on mod.sources, 1985-05-09
- rn version 4.4.4, 1992-02-23 [[mention](https://web.archive.org/web/19970401040656/http://www.academ.com/academ/rn.html)]

## Descendants

- rrn "remote rn": Patches to rn by Stan O. Barber which enable communicating
  with an NNTP server [^wikipedia].

- trn "Threaded Read News": A code fork of rn by Wayne Davison that organizes
  messages into threads [^usenet-faq].

  [[src](https://sourceforge.net/projects/trn/)] [[site](https://trn.sourceforge.net/)]
  [[usage](https://kb.iu.edu/d/abxg)] [[FreeBSD Ports](https://ports.freebsd.org/cgi/ports.cgi?query=trn&stype=all&sektion=news)]
  [[Void Linux package](https://github.com/void-linux/void-packages/blob/master/srcpkgs/trn/template)]

- strn: A code fork of trn that adds scoring and was later integrated into trn
  [^wikipedia].

- [slrn](../langs/slang.md): A newsreader implemented in S-Lang that supports rn
  killfiles.

- xrn: Supports rn killfiles [^usenet-faq]; unclear whether it shares code with
  rn.

- xvnews: Compatible with rn-style commands [^usenet-faq]; unclear whether it
  shares code with rn.

[^wikipedia]: https://en.wikipedia.org/wiki/Rn_(newsreader)
[^usenet-faq]: https://web.archive.org/web/20140227213900/http://www.faqs.org:80/faqs/usenet/software/part1
[^rn-hackers]: `HACKERSGUIDE` in rn distribution

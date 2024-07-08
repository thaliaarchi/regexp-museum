# Viewers using regular expressions

## xrn

The [xrn](https://www.mit.edu/people/jik/software/xrn.html) newsreader uses the
system's C regexp engine, choosing POSIX `<regex.h>` (`regcomp` and `regexec`),
Unix System V (`regcmp` and `regex`), or otherwise `re_comp` and `re_exec`, in
that order. It uses regular expressions for KILL files, watching and ignoring
newsgroups, and marking articles as read. It has one interesting syntactic
introduction: [`stringToRegexp`](https://github.com/jikamens/xrn/blob/6614864591ebbc5c14a9bec179be885d2cd24d75/internals.c#L1108)
converts a string to a pattern which matches it literally by escaping `/` `\`
`[` `]` `.` `^` `*` `$` with a backslash and enclosing `{` `}` `?` `+` `(` `)`
in a character class. xrn is now maintained on [GitHub](https://github.com/jikamens/xrn),
was discussed [news.software.readers](https://groups.google.com/g/news.software.readers/c/gV38od1Pkeg),
and was [compared to other newsreaders](https://web.archive.org/web/20140227213900/http://www.faqs.org:80/faqs/usenet/software/part1).

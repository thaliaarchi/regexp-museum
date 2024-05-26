# Sortle

Author: Scott Feeney

Sortle is an esoteric programming language based on insertion sort and string
rewriting.

[[Esolang wiki](https://esolangs.org/wiki/Sortle)]

Implementations:
- Interpreter in C by Scott Feeney (2005) [[0.8.2](https://github.com/graue/esofiles/blob/master/sortle/impl/sortle-0.8.2.tar.gz)]
  [[1.0](https://github.com/graue/esofiles/blob/master/sortle/impl/sortle-1.0.tar.gz)]
- [Interpreter in Perl](https://github.com/graue/esofiles/blob/master/sortle/impl/sortle.pl)
  by Scott Feeney (2012)

The Perl interpreter is the recommended implementation and the C interpreter has
“hopelessly broken regex support”. [^_readme]

Sortle is distributed in [the Esoteric File Archive](https://esolangs.org/wiki/The_Esoteric_File_Archive),
which is maintained by the same author. It is now [on GitHub](https://github.com/graue/esofiles),
but was previously available on a [file server](https://web.archive.org/web/20160826042551/http://esoteric.voxelperfect.net/files/)
and managed [with Subversion](https://esolangs.org/w/index.php?title=The_Esoteric_File_Archive&oldid=35510).
The revision history was truncated and old versions of implementations were
dropped when it [transitioned to Git](https://github.com/graue/esofiles/commit/03eb1ca764e28e9e1f8f2fdce2f96523728f8675).

Sortle regular expressions use `(`…`)` for capture groups (Perl `(`…`)`),
`[`…`]` for non-capture groups (Perl `(?:`…`)`), `.` for any byte (Perl
`(?-u:.)`), `@` for optional (Perl `?`), and `!` for one-or-more repetition
(Perl `+`).

From the [specification](https://github.com/graue/esofiles/blob/master/sortle/doc/sortle.pdf)
(inline code annotations mine):

> **Regex Matching**
>
> *Regex matching* involves comparing a series of strings against a pattern and producing
> either the first string that matches, or, depending on the pattern, a substring of the first
> match. Regex matching is done with the `?` operator.
>
> Patterns are strings, but with some enhancements. Instead of matching a byte, you can
> group several bytes and match an element. To do this, enclose the element in brackets.
> “`[fun]d`” looks for the element fun, followed by the element d. This could also be written
> “`[fun][d]`”. Element groups may not be nested.
>
> This feature becomes more useful when elements are repeated. The `!` modifier allows the
> element that preceded it to appear any number of times, provided it appears at least once.
> “`[fun]!d`” will match “funfund”, for instance. The `@` modifier allows the element that
> preceded it to appear either once or not at all. Thus “`[fun]@d`” will match “fund” or “d”.
> Note that the regex matcher is generally lazy, and it will match elements as few times as
> it can get away with.
>
> A dot “`.`” can be used to match any byte. Dots may be used within element groups.
>
> Parentheses specify special groups that will be captured, rather than the full string being
> captured. For instance, if “`[f.n]!d`” matches “finfund”, the result produced will be
> “finfund”, but if “`(f.n)!d`” is used instead, the result will be “fin”. Parenthetical groups
> form elements just like bracketed groups, so they cannot be used within brackets.
>
> The regex match operator `?` uses *op2* as its pattern. If *op1* is the null string, every
> expression name other than that of the current expression is tested. Otherwise, every
> substring of *op1* is tested, starting with one-byte substrings from left to right.

From `sortle.txt` in the C implementation:

```
The regular expression matcher, ?, merits special discussion. If op1 is "",
every expression's name is tested against the regular expression in op2,
starting with the expression preceding the current expression and going
backwards, looping around if necessary, until either every expression but the
current expression has been tested, or until there is a match. If there is a
match, the first substring enclosed in parentheses in the regular expression
results, or the whole string results if no substring is enclosed in
parentheses. If there is no match, "" results.

If op1 is a non-empty string, the same applies, except that substrings of op1
are tested, rather than names of expressions. First all one-character
substrings are tested from left to right, then all two-character substrings,
and so on, until all of op1 is tested at once.

Regular expressions can contain the following sequences:

    (n)         Captures n for use as a result; n can be any series of
                sequences, and is also grouped
    [n]         Groups n without capturing
    @           Matches either 0 or 1 instances of the previous element
    !           Matches 1 or more instances of the previous element
    .           Matches any byte

An element is the previous byte, or the previous group if a group was just
matched before. It is not possible to specifically match a literal (, ), [, ],
@, !, or . character; escape sequences are evaluated before the regular
expression is.

If a regular expression contains unbalanced parentheses or brackets, if it
attempts to nest parentheses or brackets (which is not allowed), if it uses
more than one parenthetical group (which is also not allowed), or if it
contains a @ or ! as the first byte or inside parentheses or brackets, it is
termed invalid. The result of using the ? operator with an invalid regular
expression is always "".

The regular expression matcher uses a minimal munch technique, matching as
little of the search string as it can get away with. This means, for instance,
that matching "foofoofoofoofoobar" with the string "[foo]!foobar" will work.
As soon as the matcher can match "foobar", it stops trying to match "foo".
Also, matching "foobar" with "[foo]@foobar" will work. "foo" will not be
matched at all.
```

[^_readme]: https://github.com/graue/esofiles/blob/master/sortle/_readme.txt

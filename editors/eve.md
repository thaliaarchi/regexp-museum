# EVE

[[Wikipedia](https://en.wikipedia.org/wiki/EVE_(text_editor))]
[[TextEditors.org](https://texteditors.org/cgi-bin/wiki.pl?EVE)]

From the [Extensible Versatile Editor Reference Manual](https://web.archive.org/web/20191110205706/http://h30266.www3.hpe.com/odl/vax/opsys/vmsos73/vmsos73/6021/6021pro_014.html)
(with a nested table combined):

> **EVE OpenVMS-Style Wildcards**
>
> | Patterns | Matches... |
> | -- | -- |
> | `%` | Any single character within a line. |
> | `*` | Any amount of text within a line. |
> | `**` | Any amount of text, crossing lines. |
> | `\<` | Start of a line. |
> | `\>` | End of a line. |
> | `\[abc]` | Any character in the specified set. For example, `\[aeiou]` is the set of all vowels. |
> | `\[a--z]` | Any character in the specified range. For example, `\[1--9]` is the set of digits from 1 through 9. A hyphen (`--`) at the beginning or end of a set is treated as a literal character, not as a wildcard. |
> | `\[~abc]` | Any character not in the specified set. For example, `\[~aeiou]` excludes all the vowels. A tilde (`~`) that is not the first character in the bracketed set is treated as a literal character, not as a wildcard. |
> | `\[~a--z]` | Any character not in the specified range. For example, `\[~1--9]` excludes the digits from 1 through 9. |
> | `\A` | Any alphabetic character, including supplementals. |
> | `\D` | Any decimal digit. |
> | `\F` | Any formatting character, such as BS , CR , FF , HT , LF , or VT . |
> | `\L` | Any lowercase letter. Makes the entire search case exact. |
> | `\N` | Any alphanumeric character (letter or digit). |
> | `\O` | Any octal digit. |
> | `\P` | Any punctuation character. |
> | `\S` | Any symbol constituent (alphanumeric, dollar sign, or underscore). |
> | `\U` | Any uppercase letter. Makes the entire search case exact. |
> | `\W` | Any amount of white space---spaces, tabs, or up to one line break. |
> | `\X` | Any hexadecimal digit. |
> | `\^` | Any control character. |
> | `\+` | Any character with bit 7 set. |
> | `\.` | Repeats the previous pattern zero or more times, including the original. |
> | `\:` | Repeats the previous pattern at least once, including the original; that is, it does not match a null occurrence. |
> | `\*` | Literal asterisk. |
> | `\%` | Literal percent sign. |
> | `\[` | Literal left bracket. |
> | `\~` | Literal tilde. |
> | `\\` | Literal backslash. |

TODO: Read more of the [Reference Manual](https://web.archive.org/web/20191110205742/http://h30266.www3.hpe.com/odl/vax/opsys/vmsos73/vmsos73/6021/6021pro_index.html).

# Rust `regex`

[[src](https://github.com/rust-lang/regex)] [[docs](https://docs.rs/regex/latest/regex/)]

Author: Andrew Gallant

On [converting](https://docs.rs/regex-syntax/latest/regex_syntax/utf8/index.html#lineage)
from ranges of Unicode codepoints to ranges of UTF-8 bytes:

> I got the idea and general implementation strategy from Russ Cox in his
> [article on regexps](https://web.archive.org/web/20160404141123/https://swtch.com/~rsc/regexp/regexp3.html)
> and RE2. Russ Cox got it from Ken Thompson’s `grep` (no source, folk lore?). I
> also got the idea from [Lucene](https://github.com/apache/lucene-solr/blob/ae93f4e7ac6a3908046391de35d4f50a0d3c59ca/lucene/core/src/java/org/apache/lucene/util/automaton/UTF32ToUTF8.java),
> which uses it for executing automata on their term index.

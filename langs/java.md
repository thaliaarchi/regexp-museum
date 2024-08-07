# Java `java.util.regex`

`java.util.regex` was added in Java 1.4.0[^1.4-features].

Docs: [1.4](https://web.archive.org/web/20010609183413/http://java.sun.com/j2se/1.4/docs/api/java/util/regex/package-summary.html),
[1.4.1](https://web.archive.org/web/20021216125232/http://java.sun.com/j2se/1.4.1/docs/api/java/util/regex/package-summary.html),
[1.4.2](https://web.archive.org/web/20111126092902/http://docs.oracle.com/javase/1.4.2/docs/api/java/util/regex/package-summary.html),
[5.0](https://docs.oracle.com/javase/1.5.0/docs/api/java/util/regex/package-summary.html),
[6](https://docs.oracle.com/javase/6/docs/api/java/util/regex/package-summary.html),
[7](https://docs.oracle.com/javase/7/docs/api/java/util/regex/package-summary.html),
[8](https://docs.oracle.com/javase/8/docs/api/java/util/regex/package-summary.html),
[9](https://docs.oracle.com/javase/9/docs/api/java/util/regex/package-summary.html),
[10](https://docs.oracle.com/javase/10/docs/api/java/util/regex/package-summary.html),
[11](https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/util/regex/package-summary.html),
[12](https://docs.oracle.com/en/java/javase/12/docs/api/java.base/java/util/regex/package-summary.html),
[13](https://docs.oracle.com/en/java/javase/13/docs/api/java.base/java/util/regex/package-summary.html),
[14](https://docs.oracle.com/en/java/javase/14/docs/api/java.base/java/util/regex/package-summary.html),
[15](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/util/regex/package-summary.html),
[16](https://docs.oracle.com/en/java/javase/16/docs/api/java.base/java/util/regex/package-summary.html),
[17](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/package-summary.html),
[18](https://docs.oracle.com/en/java/javase/18/docs/api/java.base/java/util/regex/package-summary.html),
[19](https://docs.oracle.com/en/java/javase/19/docs/api/java.base/java/util/regex/package-summary.html),
[20](https://docs.oracle.com/en/java/javase/20/docs/api/java.base/java/util/regex/package-summary.html),
[21](https://docs.oracle.com/en/java/javase/21/docs/api/java.base/java/util/regex/package-summary.html)

[ICU4J](../libs/icu4j.md) influenced the JDK; however it needs to be established
whether this includes anything related to regular expressions.

[^1.4-features]: https://web.archive.org/web/20030405095255/http://java.sun.com/j2se/1.4.2/docs/relnotes/features.html

## Clojure re

Clojure uses `java.util.regex` for its regular expression support.

[[src](https://github.com/clojure/clojure/blob/clojure-1.11.3/src/clj/clojure/core.clj#L4865-L4935)]

## Scala `scala.util.matching.Regex`

Scala `scala.util.matching.Regex` delegates to `java.util.regex.Pattern`.

[[docs](https://www.scala-lang.org/api/current/scala/util/matching/Regex.html)]

### Scala.js

Scala.js [compiles](https://github.com/scala-js/scala-js/tree/main/javalib/src/main/scala/java/util/regex#readme)
Java regex patterns to semantically equivalent JavaScript patterns, so that the native `RegExp` can be used, with all the browser
optimizations that come with it. This redesign was done in [ed71c83e3](https://github.com/scala-js/scala-js/commit/ed71c83e3c0b6d7e89cb47aa0c17ba62e2d69d1a)
(Fix #1201: Correct regex support, 2021-07-07) by Sébastien Doeraene, [presented](https://youtu.be/luEmOvCx0WU?t=1648)
at ScalaCon, and [released](https://www.scala-js.org/news/2021/08/04/announcing-scalajs-1.7.0/)
in Scala.js 1.7.0.

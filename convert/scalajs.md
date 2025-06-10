# Scala.js

Scala.js [compiles](https://github.com/scala-js/scala-js/tree/main/javalib/src/main/scala/java/util/regex#readme)
Java regex patterns to semantically equivalent JavaScript patterns, so that the
native `RegExp` can be used, with all the browser optimizations that come with
it. This redesign was done in commit [ed71c83e3](https://github.com/scala-js/scala-js/commit/ed71c83e3c0b6d7e89cb47aa0c17ba62e2d69d1a)
(Fix #1201: Correct regex support, 2021-07-07) by Sébastien Doeraene,
[presented](https://youtu.be/luEmOvCx0WU?t=1648) at ScalaCon 2021, and
[released](https://www.scala-js.org/news/2021/08/04/announcing-scalajs-1.7.0/)
in Scala.js 1.7.0.

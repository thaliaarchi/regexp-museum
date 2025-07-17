# JavaScript `RegExp`

Regular expression literals and `RegExp` were first introduced in JavaScript
1.2, which corresponds to ECMAScript 3.

[List of engines](https://test262.fyi/)

Test262 has tests for `RegExp` in [built-ins/RegExp](https://github.com/tc39/test262/tree/main/test/built-ins/RegExp).

- V8 Irregexp
  - SpiderMonkey Irregexp [[src](https://github.com/mozilla/gecko-dev/tree/master/js/src/irregexp)]

    SpiderMonkey switched from YARR to Irregexp [in 2014](https://bugzilla.mozilla.org/show_bug.cgi?id=976446).

  - Node.js Irregexp [[src](https://github.com/nodejs/node/tree/main/deps/v8/src/regexp)]

    TODO: Is Node's V8 sufficiently different?

- V8 Experimental (non-backtracking RegExp engine) [[blog](https://v8.dev/blog/non-backtracking-regexp)]
- JavaScriptCore YARR [src [engine](https://github.com/WebKit/WebKit/tree/main/Source/JavaScriptCore/yarr),
  [object](https://github.com/WebKit/WebKit/blob/main/Source/JavaScriptCore/runtime/RegExp.h)]

  A [post on performance improvements](https://webkit.org/blog/8685/introducing-the-jetstream-2-benchmark-suite/)
  describes some of its architecture.

  - SpiderMonkey YARR (formerly)
  - Samsung YARR [[src](https://github.com/Samsung/yarr)]: YARR extracted as a
    library (unknown if modified)

- ChakraCore [src [parser](https://github.com/chakra-core/ChakraCore/blob/master/lib/Parser/RegexParser.cpp),
  [compiler](https://github.com/chakra-core/ChakraCore/blob/master/lib/Parser/RegexCompileTime.cpp),
  [runtime](https://github.com/chakra-core/ChakraCore/blob/master/lib/Parser/RegexRuntime.cpp)]
- SerenityOS LibJS [[src](https://github.com/SerenityOS/serenity/blob/master/Userland/Libraries/LibJS/Runtime/RegExpPrototype.cpp)]
  - Ladybird LibJS [[src](https://github.com/LadybirdBrowser/ladybird/blob/master/Userland/Libraries/LibJS/Runtime/RegExpPrototype.cpp)]:
    Ladybird officially [forked](https://awesomekling.substack.com/p/forking-ladybird-and-stepping-down-serenityos)
    from SerenityOS on 2024-06-03. The last common commit was [44bb6e8390](https://github.com/SerenityOS/serenity/commit/44bb6e8390898ebd132fa379d8f3e32229f2812f)
    (LibWeb: Handle the cssFloat and cssOffset keyframe properties properly,
    2024-06-02).

- Hermes [src [engine](https://github.com/facebook/hermes/tree/main/lib/Regex),
  [object c](https://github.com/facebook/hermes/blob/main/lib/VM/JSLib/RegExp.cpp),
  [object h](https://github.com/facebook/hermes/blob/main/include/hermes/VM/JSRegExp.h)]
  [[docs](https://github.com/facebook/hermes/blob/main/doc/RegExp.md)]
- QuickJS libregexp [src [c](https://github.com/bellard/quickjs/blob/master/libregexp.c),
  [h](https://github.com/bellard/quickjs/blob/master/libregexp.h),
  [opcodes](https://github.com/bellard/quickjs/blob/master/libregexp-opcode.h)]

  Author: Fabrice Bellard

  - QuickJS NG [src [c](https://github.com/quickjs-ng/quickjs/blob/master/libregexp.c),
    [h](https://github.com/quickjs-ng/quickjs/blob/master/libregexp.h),
    [opcodes](https://github.com/quickjs-ng/quickjs/blob/master/libregexp-opcode.h)]
  - PrimJS [src [cc](https://github.com/lynx-family/primjs/blob/develop/src/interpreter/quickjs/source/libregexp.cc),
    [h](https://github.com/lynx-family/primjs/blob/develop/src/interpreter/quickjs/include/libregexp.h),
    [opcodes](https://github.com/lynx-family/primjs/blob/develop/src/interpreter/quickjs/include/libregexp-opcode.h)]

- XS [[src](https://github.com/Moddable-OpenSource/moddable/blob/public/xs/sources/xsRegExp.c)]
- Rhino [[src](https://github.com/mozilla/rhino/tree/master/src/org/mozilla/javascript/regexp)]
- Nashorn JDK and [Joni](../libs/oniguruma.md) engines [[src](https://github.com/openjdk/nashorn/tree/main/src/org.openjdk.nashorn/share/classes/org/openjdk/nashorn/internal/runtime/regexp)]:
- [regress](../libs/regress.md)
  - Boa: implemented with regress
- Kiesel [[src](https://codeberg.org/kiesel-js/kiesel/src/branch/main/src/builtins/reg_exp.zig)]
- Porffor Rhemyn [[src](https://github.com/CanadaHonk/porffor/tree/main/rhemyn)]
- engine262 [src [parser](https://github.com/engine262/engine262/tree/main/src/parser/RegExpParser.mts),
  [prototype](https://github.com/engine262/engine262/tree/main/src/intrinsics/RegExpPrototype.mts)]
- DMDScript [[src](https://github.com/DigitalMars/DMDScript/blob/master/engine/source/dmdscript/dregexp.d)]:
  implemented with `undead.regexp`

Wikipedia has a [list of JavaScript engines](https://en.wikipedia.org/wiki/List_of_JavaScript_engines#List),
which includes several not evaluated here:
- JKS
- JScript
- Linear B
- Futhark
- Carakan
- Graal.js
- JScript .NET
- Tamarin
- GNU Guile
- iv
- CL-JavaScript
- BESEN
- Continuum
- InScript
- Jint
- Narcissus
- JS-Interpreter
- QtScript
- V4 (QJSEngine)
- YAJI
- Microvium
- Duktape
- XS JavaScript Engine
- Jsish
- Espruino
- MuJS
- mJS
- Tiny-JS
- JerryScript
- njs
- ScriptEase

## Extensions

- [XRegExp](../convert/xregexp.md) extends ECMAScript 5 `RegExp` with
  additional features.
- [RegExp+](../convert/regexplus.md) extends ECMAScript 2025 `RegExp` with
  additional features.

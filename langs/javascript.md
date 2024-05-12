# JavaScript `RegExp`

[List of engines](https://test262.fyi/)

- V8 Irregexp
  - SpiderMonkey Irregexp [[src](https://github.com/mozilla/gecko-dev/tree/master/js/src/irregexp)]

    SpiderMonkey switched from YARR to Irregexp [in 2014](https://bugzilla.mozilla.org/show_bug.cgi?id=976446).

  - Node.js Irregexp [[src](https://github.com/nodejs/node/tree/main/deps/v8/src/regexp)]

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

- XS [[src](https://github.com/Moddable-OpenSource/moddable/blob/public/xs/sources/xsRegExp.c)]
- Rhino [[src](https://github.com/mozilla/rhino/tree/master/src/org/mozilla/javascript/regexp)]
- Nashorn JDK and Joni engines [[src](https://github.com/openjdk/nashorn/tree/main/src/org.openjdk.nashorn/share/classes/org/openjdk/nashorn/internal/runtime/regexp)]:
- `reress` [[src](https://github.com/ridiculousfish/regress)]
  - Boa [[src](https://github.com/boa-dev/boa/blob/main/core/engine/src/builtins/regexp/mod.rs)]:
    implemented with `reress`
- Kiesel [[src](https://codeberg.org/kiesel-js/kiesel/src/branch/main/src/builtins/reg_exp.zig)]
- porffor Rhemyn [[src](https://github.com/CanadaHonk/porffor/tree/main/rhemyn)]
- engine262 [src [parser](https://github.com/engine262/engine262/tree/main/src/parser/RegExpParser.mts),
  [prototype](https://github.com/engine262/engine262/tree/main/src/intrinsics/RegExpPrototype.mts)]
- DMDScript [[src](https://github.com/DigitalMars/DMDScript/blob/master/engine/source/dmdscript/dregexp.d)]:
  implemented with `undead.regexp`
# REC

REC and CONVERT are symbol manipulation languages implemented on a variety of
microprocessors, including REC86, the version of REC for MS-DOS on 8086
[^ci89].

REC86 CLI usage [^ci89].

## Syntax and semantics

> **REC Syntax and Semantics.**
>
> REC is a compact language with a simple control structure
> based on four control symbols [5]:
>
> - *(EXP)* left and right parenthesis are used to specify
>   expressions to be evaluated. If the evaluation of a
>   expression is True, then a function associated with
>   that expression is executed (the association of
>   functions to execute to expressions to evaluate is
>   described shortly). If the expression is False, no
>   funtion is executed and the REC program control
>   continues after the right parentheses.
> - *EXP*; semicolon is used to specify the evaluation of
>   an expression (and the execution of its associated
>   function) and continue.
> - *EXP*: colon is used to specify the repeated
>   evaluation of an expression (and the execution of
>   its associated function), while the evaluation is
>   True.
>
> Some examples will clarify the use of REC. In these, *P* is a
> predicate (condition) to be evaluated, and *W*, *W1* and *W2* are
> operators, which always are evaluated as true:
>
> | REC Expression     | Control Sentence     |
> | ------------------ | -------------------- |
> | (P1; P2; ... Pn; ) | P1 or P2 or ... Pn   |
> | (P1 P2 ... Pn; )   | P1 and P2 and ... Pn |
> | (P W1 ; W2;)       | if P then W1 else W2 |
> | (P W : ;)          | while P do W         |
> | (W P : ;)          | repeat W until P     |
>
> When the compiler finds a predicate (*P*) false, the compiler
> jumps to the right and continues with to evaluate the
> expression in the next pair of left-right parentheses. Note
> that a pair of left-right parentheses can contain a compound
> expression using the control symbols colon and semicolon.
>
> In the first example, if *P1* is false, *P2* is evaluated; if *P2* is
> false, *P3* is evaluated, and so on. But if any of *Pi* (1<= *i* <=
> *n*) is true, only that *Pi* is executed (i.e. its associated
> function), and control leaves this pair of left-right
> parentheses.
>
> In the second example, the and operator, all the predicates
> are evaluated, since the semicolon is at the end of the
> expression. Obviously, only the functions associated to the
> predicates that evaluate True will be executed.
>
> The third example is the codification of a typical if-then-else
> sentence. If *P* is true, then *W1* is executed; if *P* is false then
> the compiler executes *W2*.
>
> For the while sentence, fourth example , *P* is first evaluated;
> if it is true, *W* is executed, but colon control causes
> execution to jump to the beginning of the expression and
> start again to evaluate *P* and, if is True, to execute *W*, and so
> on. In the case of the repeat operator, fifth example, the only
> thing that changes is the order: *W* will be repeatedly
> executed until *P* becomes false. [^he05]

> ({("field""table""conditión"&;)}{("field""table"&;)}
> {("*""tabla"&;)})
>
> ({("coleccion""ACRONIMOCAT"&;)}{("*""AISLA"&;)}{
> ("numero""ACRONI" "numero < 629"&;)})

## Versions

- [REC86 and REC86FP](http://www.cpm.z80.de/download/rec.zip) for [CP/M](http://www.cpm.z80.de/binary.html)
  [[mirror](http://cpmarchives.classiccmp.org/cpm/mirrors/www.seanet.com/~klaw/files.htm)]

[^ci89]: [REC and Convert as aids in teaching Automata Theory](https://delta.cs.cinvestav.mx/~mcintosh/cellularautomata/REC_files/eautom.pdf),
  Gerardo Cisneros and Harold V. McIntosh, 1989
[^he05]: [LIDA/REC Visual Language for Databases interface PostgreSQL](https://sci-hub.st/10.1109/ICEEE.2005.1529565),
  A. Hernández-Montoya and S. V. Chapa-Vergara, 2005
[REC language is a live on IBM1130 simulator](https://arxiv.org/abs/0905.0737),
  Ignacio Vega-Paez, Jose Angel Ortega, and Georgina G. Pulido, 2009
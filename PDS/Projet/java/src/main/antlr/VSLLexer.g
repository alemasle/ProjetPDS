lexer grammar VSLLexer;

options {
  language = Java;
}

@header {
  package TP2;
}

WS : (' '|'\n'|'\t') -> skip
   ;

COMMENT : '//' (~'\n')* -> skip
        ;

fragment LETTER : 'a'..'z' ;
fragment DIGIT  : '0'..'9' ;
fragment ASCII  : ~('\n'|'"');

// keywords
LP    : '(' ; // Left parenthesis
RP    : ')' ;
ACCOLADEG	:	'{'	;
ACCOLADED	:	'}'	;
PLUS      : '+'      ;
SOUS      : '-'      ;
MULT      : '*'      ;
DIV      : '/'      ;
AFFECT	: ':='	;
DECINT	:	'INT';
VIRGULE	:	','	;
RETURN	:	'RETURN'	;
IF	:	'IF'	;
THEN	:	'THEN'	;
ELSE	:	'ELSE'	;
FI	:	'FI'	;
WHILE	:	'WHILE'	;
DO	:	'DO'	;
DONE	:	'DONE'	;

// TODO : other keywords

// other tokens (no conflict with keywords in VSL)
IDENT   : LETTER (LETTER|DIGIT)*;
TEXT    : '"' (ASCII)* '"' { setText(getText().substring(1, getText().length() - 1)); };
INTEGER : (DIGIT)+ ;

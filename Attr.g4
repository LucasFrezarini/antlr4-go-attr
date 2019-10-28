grammar Attr;
s: ID '=' aritexpr | ID '=' strexpr;
aritexpr:
	aritexpr '+' aritexpr
	| aritexpr '-' aritexpr
	| aritexpr '*' aritexpr
	| aritexpr '/' aritexpr
	| INT
	| ID;
strexpr: STRING '+' STRING | STRING;

ID: [A-Za-z]+; // Identifier
INT: [0-9]+; // Integers numbers
STRING: '"' ~ ["\r\n]* '"' | '`' ~ ["\r\n]* '`'; // Strings
WS: [ \t\r\n]+ -> skip; // skip spaces, tabs, newlines
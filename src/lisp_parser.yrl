Nonterminals list elems elem.
Terminals '(' ')' '+' '-' '*' '/' int atom.
Rootsymbol list.

list -> '(' ')'       : [].
list -> '(' elems ')' : '$2'.

elems -> elem           : ['$1'].
elems -> elem elems     : ['$1'|'$2'].

elem -> int  : extract_token('$1').
elem -> atom : extract_token('$1').

elem -> '+'  : '+'.
elem -> '-'  : '-'.
elem -> '*'  : '*'.
elem -> '/'  : '/'.

elem -> list : '$1'.

Erlang code.

extract_token({_Token, _Line, Value}) -> Value.

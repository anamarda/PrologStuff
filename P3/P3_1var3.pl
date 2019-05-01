% 1. Se dau N puncte in plan (prin coordonatele lor).
% Se cere sa se determine toate submultimile de
% puncte coliniare.

%calculeaza distanta dintre doua puncte
%distanta(int, int, int, int, int) - (i, i, i, i, o)
distanta(X1, Y1, X2, Y2, D):-
    D is sqrt(((X1-X2)*(X1-X2)+(Y1-Y2)*(Y1-Y2))).

% verifica daca o lista de puncte in plan
% le are pe toate coliniare
% coliniare(list) - (i) det
coliniare([_,_|[]]):- !.
coliniare([[X1,Y1|[]], [X2,Y2|[]], [X3,Y3|[]]|T]):-
    distanta(X1, Y1, X2, Y2, D1),
    distanta(X1, Y1, X3, Y3, D2),
    distanta(X2, Y2, X3, Y3, D3),
    D1 =:= D2+D3,
    coliniare([[X2,Y2|[]], [X3,Y3|[]]|T]), !.
coliniare([[X1,Y1|[]], [X2,Y2|[]], [X3,Y3|[]]|T]):-
    distanta(X1, Y1, X2, Y2, D1),
    distanta(X1, Y1, X3, Y3, D2),
    distanta(X2, Y2, X3, Y3, D3),
    D2 =:= D1+D3,
    coliniare([[X2,Y2|[]], [X3,Y3|[]]|T]), !.
coliniare([[X1,Y1|[]], [X2,Y2|[]], [X3,Y3|[]]|T]):-
    distanta(X1, Y1, X2, Y2, D1),
    distanta(X1, Y1, X3, Y3, D2),
    distanta(X2, Y2, X3, Y3, D3),
    D3 =:= D1+D2,
    coliniare([[X2,Y2|[]], [X3,Y3|[]]|T]), !.
coliniare(_):- fail.

%se genereaza toate combinarile/submultimile
%comb(list, list) - (i, o)
comb([], []).
comb([_|T], S):- comb(T, S).
comb([H|T], [H|S]):- comb(T, S).

%pct_col_aux(L, Rez, Col)
%(list, list, list) - (i, o, i)
pct_col_aux([]).
pct_col_aux([H|T]):-
    coliniare(H),
    write(H), nl,
    pct_col_aux(T), !.
pct_col_aux([_|T]):-
    pct_col_aux(T).

%pct_col(list) (i)
pct_col(L):-
    findall(X, comb(L, X), LComb),
    pct_col_aux(LComb).





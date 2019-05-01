%combinari luate cate K
%comb(list, integer, list) - (i, i, o) nedet
%comb([H|_], 1, [H]).
%comb([_|T], K, C):-
%    comb(T, K, C).
%comb([H|T], K, [H|C]):-
%    K > 1,
%    K1 is K-1,
%    comb(T, K1, C).

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
    D1 is D2+D3,
    coliniare([[X2,Y2|[]], [X3,Y3|[]]|T]), !.
coliniare([[X1,Y1|[]], [X2,Y2|[]], [X3,Y3|[]]|T]):-
    distanta(X1, Y1, X2, Y2, D1),
    distanta(X1, Y1, X3, Y3, D2),
    distanta(X2, Y2, X3, Y3, D3),
    D2 is D1+D3,
    coliniare([[X2,Y2|[]], [X3,Y3|[]]|T]), !.
coliniare([[X1,Y1|[]], [X2,Y2|[]], [X3,Y3|[]]|T]):-
    distanta(X1, Y1, X2, Y2, D1),
    distanta(X1, Y1, X3, Y3, D2),
    distanta(X2, Y2, X3, Y3, D3),
    D3 is D1+D2,
    coliniare([[X2,Y2|[]], [X3,Y3|[]]|T]), !.
coliniare(_):- fail.

% 1. Se dau N puncte in plan (prin coordonatele lor).
% Se cere sa se determine toate submultimile de
% puncte coliniare.


%NU MERGE
%submult_pct_coliniare(list, integer, list) - (i, i, o) nedet
%submult_pct_coliniare(_, 0, []).
%submult_pct_coliniare(L, K, Rez):-
%    comb(L, K, Rez).
    %coliniare(R),
    %K1 is K-1,
    %submult_pct_coliniare(L, K1, Rez).


%candidat(el, list)
candidat(E, [E|_]).
candidat(E, [_|T]):-
    candidat(E, T).


%aux (i, i, o)
subm_pct_col_aux(_, Col, Col):-!.
subm_pct_col_aux(L, Col, Rez):-
    candidat(E, L),
    \+candidat(E, Col),
    coliniare([E|Col]),
    subm_pct_col_aux(L, [E|Col], Rez).

%(i, o)
subm_pct_col(L, Rez):-
    candidat(E, L),
    subm_pct_col_aux(L, [E], Rez).

%a. Sa se scrie un predicat care intoarce diferenta a doua multimi.

%apartine(integer, list) (i, i)
apartine(E, [E|_]):- !.
apartine(E, [_|T]):- apartine(E, T).

scadere([], _, []):- !.
scadere([H|T], L2, [H|Rez]):-
    \+apartine(H, L2),
    scadere(T, L2, Rez),
    !.
scadere([_|T], L2, Rez):-
    scadere(T, L2, Rez).

%b. Sa se scrie un predicat care adauga intr-o lista
%dupa fiecare element par valoarea 1.
insPar([], []):- !.
insPar([H|T], [H, 1|Rez]):-
    mod(H, 2)=:=0,
    insPar(T, Rez), !.
insPar([H|T], [H|Rez]):-
    insPar(T, Rez).

%a. Sa se scrie un predicat care determina cel mai mic
%multiplu comun al elementelor unei liste formate din numere intregi.

%cmmdc(integer, integer, integer) - (i i o)
cmmdc(E, E, E):- !.
cmmdc(A, B, Rez):-
    A > B,
    A1 is A-B,
    cmmdc(A1, B, Rez), !.
cmmdc(A, B, Rez):-
    B1 is B-A,
    cmmdc(A, B1, Rez).

%cmmmc(int, int, int) - (i, i, o)
cmmmc(A, B, X):-
    cmmdc(A, B, M),
    X is (A*B)/M.

%cmmmcLista(list, int) - (i, o)
cmmmcLista([], []):- !.
cmmmcLista([H|[]], H):- !.
cmmmcLista([H|T], Rez):-
    cmmmcLista(T, Rez1),
    cmmmc(H, Rez1, Rez).

%b. Sa se scrie un predicat care adauga dupa 1-ul,
%al 2-lea, al 4-lea, al 8-lea ...element
%al unei liste o valoare v data.

%putere2(Integer) (i)
putere2(1):- !.
putere2(Rez):-
    Rez > 1,
    Rez1 is Rez/2,
    putere2(Rez1).

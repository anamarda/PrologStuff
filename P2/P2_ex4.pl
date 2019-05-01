%interclasare fara dubluri (listele date nu au dubluri)
%interclasare(list, list, list) - (i, i, o)
interclasare([], [], []):- !.
interclasare([], [H2|T2], [H2|Rez]):- interclasare(_, T2, Rez), !.
interclasare([H1|T1], [], [H1|Rez]):- interclasare(T1, _, Rez), !.
interclasare([H1|T1], [H2|T2], [H1|Rez]):-
    H1 < H2,
    interclasare(T1, [H2|T2], Rez), !.
interclasare([H1|T1], [H2|T2], [H1|Rez]):-
    H1=:=H2,
    interclasare(T1, T2, Rez), !.
interclasare([H1|T1], [H2|T2], [H2|Rez]):-

    interclasare([H1|T1], T2, Rez).

%verificare daca un element apartine unei liste
%apartine([E|_], E):-!.
%apartine([_|T], E):- apartine(T, E).

%interclasarea sublistelor dintr-o lista
%interclasare_subliste_aux(list, list, list) - (i, o) det
interclasare_subliste_aux([], []):-!.
interclasare_subliste_aux([H|T], Rez):-
    is_list(H),
    interclasare_subliste_aux(T, Rez2),
    interclasare(H, Rez2, Rez), !.
interclasare_subliste_aux([_|T], Rez):-
    interclasare_subliste_aux(T, Rez).

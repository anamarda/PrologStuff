%a) Sa se determine pozitiile elementului maxim dintr-o lista liniara.
% De ex: poz([10,14,12,13,14], L) va produce L = [2,5].
%

maxx([], Max, Max):-!.
maxx([H|T], Max, Rez):-
    H > Max,!,
    maxx(T, H, Rez).
maxx([_|T], Max, Rez):-
    maxx(T, Max, Rez).

max([H|T], M):- maxx(T, H, M).

%(lista, maxim, pozitie crt, coletoare, rezultat)
poz([], _, _, Col, Col):-!.
poz([M|T], M, Poz, Col, Rez):-!,
    Poz1 is Poz+1,
    poz(T, M, Poz1, [Poz|Col], Rez).
poz([_|T], M, Poz, Col, Rez):-
    Poz1 is Poz + 1,
    poz(T, M, Poz1, Col, Rez).

main(L, Rez):-
    max(L, M),
    poz(L, M, 1, [], Rez).

% b) Sa se inlocuiasca sublistele cu listele formate din pozitiile
% elementului maxim din lista respectiva.

inlocuieste([], []):-!.
inlocuieste([H|T], [R|Rez]):-
    is_list(H),!,
    main(H, R),
    inlocuieste(T, Rez).
inlocuieste([H|T], [H|Rez]):-
    inlocuieste(T, Rez).
%ar mai trebui o functie de inversare a liste rezultat din main

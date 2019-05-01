# PrologStuff
Some prolog exercises.



P1: Lists.
P1_1 
"1.
 a. Sa se scrie un predicat care intoarce diferenta a doua multimi.
 b. Sa se scrie un predicat care adauga intr-o lista dupa fiecare element par
 valoarea 1."

P1_2
"2.
 a. Sa se scrie un predicat care determina cel mai mic multiplu comun al
 elementelor unei liste formate din numere intregi.
 b. Sa se scrie un predicat care adauga dupa 1-ul, al 2-lea, al 4-lea, al
 8-lea ...element al unei liste o valoare v data."
 
 
 
 P2: Lists in lists.
 P2_ex2
 "2.
  a) Sa se sorteze o lista cu pastrarea dublurilor. De ex: [4 2 6 2 3 4] => [2
2 3 4 4 6]
  b) Se da o lista eterogena, formata din numere intregi si liste de numere. Sa
se sorteze fiecare sublista cu pastrarea dublurilor. De ex:
[1, 2, [4, 1, 4], 3, 6, [7, 10, 1, 3, 9], 5, [1, 1, 1], 7] =>
[1, 2, [1, 4, 4], 3, 6, [1, 3, 7, 9, 10], 5, [1, 1, 1], 7]."

P2_5
"5.
a) Sa se determine pozitiile elementului maxim dintr-o lista liniara. De ex:
 poz([10,14,12,13,14], L) va produce L = [2,5].
b) Se da o lista eterogena, formata din numere intregi si liste de numere
intregi. Sa se inlocuiasca fiecare sublista cu pozitiile elementului maxim
din sublista respectiva. De ex:
[1, [2, 3], [4, 1, 4], 3, 6, [7, 10, 1, 3, 9], 5, [1, 1, 1], 7] =>
[1, [2], [1, 3], 3, 6, [2], 5, [1, 2, 3], 7]."

P2_14
"14.
a) Definiti un predicat care determina predecesorul unui numar reprezentat
 cifra cu cifra intr-o lista. De ex: [1 9 3 6 0 0] => [1 9 3 5 9 9]
b) Se da o lista eterogena, formata din numere intregi si liste de cifre.
Pentru fiecare sublista sa se determine predecesorul numarului reprezentat
cifra cu cifra de lista respectiva. De ex:
[1, [2, 3], 4, 5, [6, 7, 9], 10, 11, [1, 2, 0], 6] =>
[1, [2, 2], 4, 5, [6, 7, 8], 10, 11, [1, 1, 9] 6]"



P3: Combinations.
P3_1
"1. Se dau N puncte in plan (prin coordonatele lor). Se cere sa se determine
toate submultimile de puncte coliniare."

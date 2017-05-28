extraBlank(N):- 
    N >0, write(' '),N2 is N - 1 , extraBlank(N2).
extraBlank(_).


drawCell(Hour, M):-
    course(N,G, _),
    member([N,G],M),
    course(N,G, List),
    member(Hour,List),
    write(N), write(' '), write(G), write('                       ').



drawRow(Row, M):-
    RealHour is Row + 7,
    write(RealHour),write(':00                '),
    between(0, 4, Day), 
    Hour is Row + Day * 12,
    \+drawCell(Hour, M),
    extraBlank(28),
    fail.
drawRow(_, _).

drawHeader:-
    nl, nl, 
    write('                      Monday                      Tuesday                     Wednesday                    Thursday                   Friday   ').


displaySchedule(M):-
    drawHeader,
    between(1, 12, Row), 
    nl,
    drawRow(Row, M), 
    fail.


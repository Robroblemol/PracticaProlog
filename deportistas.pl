juega(hector,baloncesto).
juega(miguel,baloncesto).
juega(miguel,rugby).
juega(alicia,baloncesto).
juega(alicia,tenis).
juega(alicia,ajedrez).

mismo_deporte(P1,P2):-
  write(P1),
  aggregate_all(count,juega(P1,_),X),
  write(X),
  write(P2),
  aggregate_all(count,juega(P2,_),X),
  write(X).

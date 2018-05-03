menor(X, Y):-
 X < Y. % "menor" numerico


area_circulo(R):-
 Res is (R*R)*3.14159265,
 write("El area del circulo es: "),
 write(Res).

area_trapecio(H,A,B):-
  Res is H*((A+B)/2),
  write("El area del trapecio es: "),
  write(Res).
  
producto(A,B):-
  Res is A*B,
  write("El producto es: "),
  write(Res).

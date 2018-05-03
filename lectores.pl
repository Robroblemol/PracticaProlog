lectores(nombre("Ana","Garrido","Agirre"),mujer,31).
lectores(nombre("Marta","Cantero","Lasa"),mujer,20).
lectores(nombre("Rodrigo","Duque","Soto"),hombre,30).
lectores(nombre("Lina","Oll","Magin"),mujer,29).
lectores(nombre("Ana","Gaviria","Ocampo"),mujer,25).
lectores(nombre("Roberto","David","Robles"),hombre,29).


hay_lectores:-
  lectores(_,_,_).

quienes_son_lectores:-
  %aggregate_all(nombre,lectores(_,_,_),X),
  lectores(nombre(X,_,_),_,_),
  write(X).

mujeres:-
  lectores(nombre(X,_,_),mujer,_),
  write(X).
hombres:-
  lectores(nombre(X,_,_),hombre,_),
  write(X).

obtener_mombres:-
  lectores(nombre(X,_,_),_,_),
  write(X).
hay_lectores_mismo_nombre_diferente_apellido:-
  lectores(nombre(N1,_,_),_,_),
  lectores(nombre(N2,_,_),_,_),
  nombre_iguales(N1,N2).
  %hay_lectores_mismo_nombre_diferente_apellido.

  % write("X: "),
  % write(X),
  % nl,
  % write("Y: "),
  % write(Y).

nombre_iguales(N1,N2):-
  N1 == N2.

bagof(A,lectores(nombre(A,_,_),_,_),Cs).

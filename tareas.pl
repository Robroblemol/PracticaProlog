encargado_de_tarea(miguel,administracion).
encargado_de_tarea(miguel,control).
encargado_de_tarea(miguel,vigilancia).
encargado_de_tarea(ricardo,planificacion).
encargado_de_tarea(ricardo,acesoramiento).
encargado_de_tarea(alicia,direccion).
encargado_de_tarea(alicia,control).

comparten(miguel,alicia).
comparten(alicia,miguel).

encargada(Tarea):-
    encargado_de_tarea(_,Tarea).
comparten_tarea(P1,P2):-comparten(P1,P2).

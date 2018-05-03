main:-
    write("hola Mundo"),
    nl,
    write("¿Cuál es tu nombre?"),
    nl,
    read_string(user_input,['\n'],[],_,Nombre),
    write("hola "),write(Nombre),nl.

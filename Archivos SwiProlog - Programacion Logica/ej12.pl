medico(m1,rosales).
medico(m2,manni).
paciente(p1,juan).
paciente(p2,ana).
atiende(m1,p1).
atiende(m1,p2).
atiende(m2,p2).
listapacientes(X):- atiende(X,A), paciente(A,Y), write_ln(Y), fail.
listamedicos(X):- atiende(A,X), medico(A,Y), write_ln(Y), fail.
menu:-
    write('*********MENU***********'),nl,
    write('1. Dado un medico, listar los pacientes que atiende'), nl,
    write('2. Dado un paciente, listar los medicos que lo atienden'), nl,
    write('Seleccione una opcion (tres  para terminar): '), read(Opcion),
    ejecutar(Opcion).

ejecutar(1):-

    write('Ingrese el nombre del medico: '), read(NomMedico),
    medico(CodMedico, NomMedico),
    listapacientes(CodMedico),
    menu.
ejecutar(2):-
    write('Ingrese el nombre del paciente: '), read(NomPaciente),
    paciente(CodPaciente, NomPaciente),
    listamedicos(CodPaciente),
    menu.


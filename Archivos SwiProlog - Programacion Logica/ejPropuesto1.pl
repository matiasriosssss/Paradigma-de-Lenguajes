animales(mamifero([vaca,mono])).
animales(reptil([serpiente,coco])).
animales(pez([salmon])).
member(X,[X|_]).
member(X,[_|Z]):- member(X,Z).
es(X):-animales(mamifero(Z)),member(X,Z),write("mamifero").
es(X):-animales(reptil(Z)),member(X,Z),write("reptil").
es(X):-animales(pez(Z)),member(X,Z),write("pez").
es(_):-write("Error"), fail.

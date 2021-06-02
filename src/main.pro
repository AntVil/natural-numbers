num(0).
num(next(X)) :- num(X).
num(num(X)) :- num(X).

num(add(num(X), num(0))) :- num(X).
num(add(num(0), num(X))) :- num(X).
num(add(num(X), num(next(Y)))) :- num(add(num(next(X)), num(Y))).

num(mult(num(X), num(0))) :- num(0).
num(mult(num(0), num(X))) :- num(0).
num(mult(num(X), num(next(Y)))) :- num(add(num(mult(num(X), num(Y))), num(X))).

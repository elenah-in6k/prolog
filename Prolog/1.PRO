predicates
	input(real)
	prog(real, real, real)
	output(real, real)
	
	
clauses

	input(X):-  
	 write("X = "), readreal(X),nl.
	
    prog(X,S,C):- S=sin(X), C=cos(X).
	
	output(S,C):- write("sin = ", S), nl, write("cos = ", C).
       	       
goal
	input(X), prog(X,S,C), output(S,C).
predicates
	input(real, integer)
	prog(real, integer, integer, real)
	func(real, integer, integer, integer, real)
	error1(real)
	error2(real)
	power(real,real,real)
	output(real)
	
	
clauses

	input(X,N):-  
	 write("Calculating."),nl,
	 write("X = "), readreal(X),nl,
	 write("N = "), readreal(N),nl.
	
	error1(X):- sin(X) = 0,
	 write("ERROR! sin(X) can't = 0. Change X.").
	
	error2(X):- cos(X) = 0,
	 write("ERROR! cos(X) can't = 0. Change X.").
	
	power(X,1,X):-!.
	power(X,B,Power):-
		B1=B-1,
		power(X,B1,Power1),
		Power=X*Power1.
	
	func(X,N,A,S,F):- A mod 2 = 1, not(error1(X)),
	 Temp=sin(X), power(Temp,S,Power),
	 F= (cos(X-N-A)/Power).	
	
	func(X,N,A,S,F):- A mod 2 = 0, not(error2(X)),
	 Temp=cos(X), power(Temp,S,Power),
	 F= -1*(sin(X-N-A)/Power).	
	 
    prog(_,_,0,R):- R=0,!.
	
    prog(X,N,A,R):- A1=A-1, S=A*2-1, prog(X,N,A1,R1), func(X,N,A,S,F), R=R1+F.
	
	output(R):- write("R = ", R).
       	       
goal
	clearwindow,input(X,N), prog(X,N,N,R), output(R).
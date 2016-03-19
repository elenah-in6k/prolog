predicates
	input(integer)
	fact(integer, integer)
	output(integer)
	
clauses

	input(N):-  
	 write("Factorial calculating."),nl,
	 write("N = "), readreal(N),nl.
	
    fact(1,1):-!.
    fact(N,R):-N1=N-1,fact(N1,R1),R=R1*N.
	
	output(R):- write("R = ", R).
       	       
goal
	clearwindow,input(N), fact(N,R), output(R).
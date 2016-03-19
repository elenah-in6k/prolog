predicates
	input(real)
	y(real, real)
	error1(real)
	error2(real)
	error3(real)
	output(real)
clauses
	input(X):- clearwindow, 
	write("Function calculating."),nl,
	 write("X = "), readreal(X),nl.
	 
	error1(X):- sin(7*X) = 0,
	 write("ERROR! sin(7*X) can't = 0. Change X.").
	 
	error1(X):- (1-0.7*X*0.7*X)<0,
	 write("ERROR! 1-0.7*X*0.7*X can't = 0. Change X.").
	 
	error1(X):-  ((cos(7*X)/sin(7*X))-arctan(sqrt(1-0.7*X*0.7*X)/0.7*X)) <= 0,
	 write("ERROR! (cos(7*X)/sin(7*X) - arccos(0.7*X) can't <= 0. Change X.").
	
	error2(X):- (2*X-1) <= 0,
     write("ERROR! (2*X-1) must be > 0 . Change X.").
	
	error2(X):- Temp=2*X-1,((X-5)*log(Temp)) = 0,
     write("ERROR! (X-5)*lg(2*X-1) can't = 0. Change X.").

	error3(X):- X>=-1,
     write("ERROR! X must be <=-1 or >0. Change X.").

	error3(X):- X<0, 
     write("ERROR! X must be <=-1 or >0. Change X."). 
	
	y(X,F):-  X<=-1, not(error1(X)), 
	 F=(sqrt((cos(7*X)/sin(7*X)) - arctan(sqrt(1-0.7*X*0.7*X)/0.7*X))).
		
	y(X,F):- X>0, not(error2(X)), Temp=2*X-1,
	 F=cos(X)/((X-5)*log(Temp)).

	y(X,F):- not(error3(X)).
	
	output(F):- write("y = ", F).
	
goal
	input(X), y(X,F), output(F).
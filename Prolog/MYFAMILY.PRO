predicates
   mother(string,string)
   father(string,string)
   parents(string,string, string)
   man(string)
   woman(string)
   granddaughter(string,string).
   grandmother(string,string).
   grandfather(string,string).
   
clauses
	parents(X, Y, Z):-
		mother(X, Z),
		father(Y, Z).
	parents(X, Y, Z):-
		father(X, Z),
		mother(Y, Z).
	
	granddaughter(X, Y):-
		mother(Y, Z),
		mother(Z, X),
		woman(X).
	granddaughter(X, Y):-
		father(Y, Z),
		mother(Z, X).
	granddaughter(X, Y):-
		mother(Y, Z),
		father(Z, X),
		woman(X).
	granddaughter(X, Y):-
		father(Y, Z),
		father(Z, X),
		woman(X).
		
	grandmother(X,Y):-
		mother(X, Z),
		mother(Z, Y),
		woman(X). 
	grandmother(X, Y):-
		mother(X, Z),
		father(Z, Y),
		woman(X).
		
	grandfather(X, Y):-
		father(X, Z),
		mother(Z, Y),
		man(X). 
	grandfather(X, Y):-
		father(X, Z),
		father(Z, Y),
		man(X).

   mother("Nadia", "Olena").
   mother("Elena", "Nadia").
   mother("Anna", "Viktor").
   father("Viktor", "Olena").
   father("Volodimir", "Nadia").
   father("Anatolii", "Viktor").
   man("Viktor").
   man("Volodimir").  
   man("Anatolii").   
   woman("Nadia").
   woman("Olena").
   woman("Elena").
   woman("Anna").
domains
      list = real*
      namelist=name*
      name=symbol
predicates
    string_namelist(string,namelist)
	input(string)
	output(string, real)
	output(string, namelist)
	prog(string,char)
	find_n(list,real,real,real)
	add(symbol)
	subtract(symbol)
	multiply(symbol)
	divide(symbol)
	func(list, real)
	length(list,real)
	f(list,real,real,real)

clauses
	input(X):-
		write("String function = "),
		readln(X).
		
	add(X):- X = "+".
	subtract(X):- X = "-".
	multiply(X):- X = "*".
	divide(X):- X = "/".
	
	find_n([],_,0,_):-!.
	find_n([_|T],N,K,F):- N<>K,K1=K+1,find_n(T,N,K1,F).
	find_n([H|_],_,_,F):- F=H,nl,!.
	
	output(Name, Value):- 
		write(Name," = ", Value),
		nl.

	
	length([], 0). 
	length([X|L], N):-length(L, M), N is M+1.
	func(X,R):-  length(X,N), f(X,N,1,0,Fr).
	
	f(X,N,K,R,Fr):- N<>K, 
		find_n(X,K,1,F), float(F), 
		K1=K+1, f(X,N,K1,F,Fr1), R=Fr1.
		find_n(X,K1,1,R1), add(R1),
		K2=K1+1, find_n(X,K2,1,F2), float(F2),
		R=F1+F2, K3=K2+1, f(X,N,K3,R,Fr1), Fr=Fr1.
	f(X,N,K,R):- N<>K, K1=K+1, find_n(X,K,1,F), add(F), 
    prog(X,Result):- str_char(X,F), func(F,Result)
	.

	string_namelist(S,[H |T]):-
		fronttoken(S,H,S1),!, 
		string_namelist(S1,T).
	string_namelist(_, []).
goal
	clearwindow,
	X=[5,3,1,7],
	find_n(X,3,1,F),
	output("Result",F)
.
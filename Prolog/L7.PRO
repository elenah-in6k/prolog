domains
	list = real*
	index = integer
	index_list = list*
	
predicates
	input(list)
	input_element(list)
	find_min(list, real, index)
	find_max(list, real, index)
	prog(list, list, index_list)
	output(string, list)
	output(string, index_list)
	output(string, real)
	input_real(real)
	input_int(integer)
clauses
	input_real(X):-
		write("Real = "),
		readreal(X).
	
	input_int(X):-
	write("Int = "),
		readinteger(X).	
		
	input(List):-
		write("Enter element value or empty string to finish: "),
		nl,
		input_element(List).

	input_element([Head|Tail]):-
		readreal(Head),
		!,
		input_element(Tail).
	input_element([]).

		
	output(Name, Value):- 
		write(Name," = ", Value),
		nl.
		
	find_min([H],H,1).
	find_min([H|T],H,1):- 
		find_min(T,Q,_), 
		Q>H,!. 
	find_min([_|T],Q,N):- 
		find_min(T,Q,N1), 
		N=N1+1.
	
	find_max([H],H,1).
	find_max([H|T],H,1):- 
		find_max(T,Q,_), 
		Q<H,!. 
	find_max([_|T],Q,N):- 
		find_max(T,Q,N1), 
		N=N1+1.
	
    prog(X,Arr_elem,Arr_elem_with_index):- 
		find_max(X,Max,Max_index), 
		find_min(X,Min,Min_index),  
		Arr_elem = [Max, Min],
		Arr_elem_with_index = [[Max,Max_index],[Min,Min_index]],
		!.

		iiinp()
    
goal
	clearwindow,
	input_real(R),
	Rf = float(R),
	output(Rf),
	input_int(I),
	Rff = float(I),
	output(Rff)
.
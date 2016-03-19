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
	
clauses

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

    
goal
	clearwindow,
	input(X),
	prog(X,List,List_index),
	output("Input list",X),
	output("List of max and min value",List),
	output("List of [[max value, index],[min value, index]]",List_index).
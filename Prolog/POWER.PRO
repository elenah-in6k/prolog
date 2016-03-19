Predicates
	power_of_two(integer)
Clauses
	power_of_two(10):-!.
	power_of_two(Expon):-
		Exp1=Expon+1,
		Num=exp(Exp1*ln(2)),
		write("\t",Exp1,"\t\t",Num,"\n"),
		power_of_two(Exp1).
Goal
	makewindow(1,2,3,"Table degrees 2",0,0,25,80),
	write("\n\tPower\t\tResult\n",
		"\t=======\t\t=========\n"),
	power_of_two(0),nl.
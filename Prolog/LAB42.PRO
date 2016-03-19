domains
	Word=string
	T1=string
	T2=string
	T3=string
	T4=string
	
predicates
	translate(Word,T1,T2,T3,T4)
	repeat
	stop
	check(string)
	
clauses
	translate("answer","reply", "respond","retort", "acknowledge").
	translate("beauty","pretty","lovely","fine","elegant").
	translate("end","stop","finish","close","terminate").
	
	repeat.
	repeat:-repeat.
	stop:-repeat,nl,
	  write("INPUT TRANSLATE for word: end"),nl,
	  readln(New),nl,
	  check(New),!.
		
       check(New):- 
				translate(_,New,T2,T3,T4),
       		      write(T2," ",T3," ",T4),
       		      nl.
       check(New):- 
				translate(_,T1,New,T3,T4),
       		      write(T1," ",T3," ",T4),
       		      nl.
				  
	   check(New):- 
				translate(_,T1,T2,New,T4),
       		      write(T1," ",T2," ",T4),
       		      nl.
       check(New):- 
				translate(_,T1,T2,T3,New),
       		      write(T1," ",T2," ",T3),
       		      nl.      
       	       
goal
	clearwindow,stop.
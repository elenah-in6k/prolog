/* Програма: Родина */
/* Призначення: Програма про родиннi вiдноsunи */
domains
   mother, father=string /* мама, батько */
   son, daughter, child=string /* sun, doch,  child */
   grandmo, granddad, grandch=string /* grendma, grendpa, onuk */

predicates
   mother(mother,daughter)
   father(father,son)
   parents(mother,father, child)
   man(string)
   woman(string)
   grandson(grandch, string). /* onuk - boy */
   granddaughter(grandch,string). /* onuchka */
   grandmother(grandmo,grandch)
   grandfather(granddad,grandch)

clauses
	parents("Masha", "Kola", "Natasha"). /* Masha i Kola - батьки Наташi. */
	grandson("Petia", "Vova"). /* Petia - onuk Володi. */
	granddaughter("Masha", "Vira"). /* Masha - onuchka Вiри. */ 
	grandmother("Vira", "Natasha"). /* Vira - grendma Наташi. */
	grandmother("Vira", "Tana"). /* Vira - grendma Танi. */
	grandfather("Vova", "Natasha"). /* Vova - grendpa Наташi */
	mother("Masha", "Natasha"). /* Masha - мама Наташi. */
	father("Kola", "Natasha"). /* Kola - батько Наташi. */
	father("Vova","Kola"). 
	man("Kola"). /* Kola - чоловiк. */
	woman("Masha"). /* Masha - жiнка. */
	woman("Natasha"). /* Natasha - жiнка. */
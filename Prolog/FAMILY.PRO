/* �ணࠬ�: ������ */
/* �ਧ��祭��: �ணࠬ� �� த���i �i���sun� */
domains
   mother, father=string /* ����, ���쪮 */
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
	parents("Masha", "Kola", "Natasha"). /* Masha i Kola - ���쪨 ����i. */
	grandson("Petia", "Vova"). /* Petia - onuk �����i. */
	granddaughter("Masha", "Vira"). /* Masha - onuchka �i�. */ 
	grandmother("Vira", "Natasha"). /* Vira - grendma ����i. */
	grandmother("Vira", "Tana"). /* Vira - grendma ���i. */
	grandfather("Vova", "Natasha"). /* Vova - grendpa ����i */
	mother("Masha", "Natasha"). /* Masha - ���� ����i. */
	father("Kola", "Natasha"). /* Kola - ���쪮 ����i. */
	father("Vova","Kola"). 
	man("Kola"). /* Kola - 箫��i�. */
	woman("Masha"). /* Masha - �i���. */
	woman("Natasha"). /* Natasha - �i���. */
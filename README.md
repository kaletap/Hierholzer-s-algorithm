# Hierholzer-s-algorithm

Algorytm Fleury’ego 
wyszukiwania cyklu Eulera w grafie
Opis
Niech v będzie dowlonym wierzchołkiem w grafie Eulera. Algorytm polega na przechodzeniu po grafie, zapisując kolejno odwiedzane wierzchołki na stosie i usuwając krawędzie po których przechodzimy, do momentu gdy powrócimy do tego samego wierzchołka. Następnie dla zapisanych na stosie wierzchołków, jeżeli mają one jeszcze jakieś wychodzące krawędzie postępujemy rekurencyjnie i robimy to samo co z wierzchołkiem v. Te ścieżki możemy teraz połączyć w jeden cykl, który bedzie naszym cyklem Eulera.
Pseudokod z polskiej Wikipedii (https://pl.wikipedia.org/wiki/Algorytm_Fleury%E2%80%99ego):
1. IF NOT   G jest grafem eulerowskim   THEN   END
2. Przypisz   G’ = G
3. Dopisz do rozwiązania wierzchołek v
4. WHILE   wierzchołek v nie jest izolowany   DO
     5. Przypisz   w indeks dowolnego wierzchołka incydentnego z v
     6. S.PUSH   v
     7. Usuń z G’ krawędź w – v
     8. Przypisz   v = w
     END DO
9. IF NOT   S.EMPTY   THEN
     10. Przypisz   v = S.POP
     11. Dopisz do rozwiązania wierzchołek v
     12. GO TO   4.
   ELSE
END

Uzasadnienie poprawności
Zakładamy, że dany jest spójny graf Eulera G=(V,E). Stąd stopień każdego wierzchołka jest parzysty (twierdzenie Eulera). 
W krokach 4-8 algorytmu startujemy z wierzchołka v i przechodzimy po grafie usuwając krawędzie dopóki z wierzchołka w którym akturalnie jesteśmy wychodzą jakieś krawędzie. Zwróćmy uwagę, że wierzchołek na którym skończymy musi być tym samym wierzchołkiem v. Przypuśćmy, że tak nie jest i zakończyliśmy na wierzchołku u różnym niż v. Stąd ponieważ w wyjściowym grafie G wszystkie wierzchołki były parzystego stopnia, to u oraz v muszą być nieparzystego stopnia. Ale skoro tak, to wierzchołek u ma jeszcze jakąś krawędź i naszą ścieżkę możemy przedłużyć. Stąd po wykonaniu kroków 4-8 otrzymujemy cykl.
Jeżeli otrzymany cykl jest cyklem Eulera, to po powyższej procedurze nie ma już żadnych krawędzi w grafie (pętla while do której wracamy w kroku 12 się nie wykonuje). Stąd w krokach 9-12 następuje przypisanie do rozwiązania ścieżki po której przeszliśmy i algorytm działa.
W przeciwnym przypadku wszystkie wierzchołki, które pozostały mają parzyste, dodatnie stopnie (gdyż z każdego wierzchołka usunęliśmy parzystą liczbę krawędzi, musieliśmy do niego wejść i wyjść). Spójne składowe powstałego grafu są więc grafami Eulera, które w wyjściowym grafie były połączone ścieżką, którą usunęliśmy. Zatem pytanie czy algoytm działa sprowadza się to pytania czy działa tych spójnych podgrafów.
Przypuśćmy, że algorytm nie działa. Skoro nie działa, to istnieje niepusty zbiór grafów, dla których wykonanie opisanej procedury zawodzi. Weźmy jeden z takich grafów o najmniejszej liczbie krawędzi. Ale ponieważ podgrafy po usunięciu pierwszego cyklu mają z pewnością mniejszą liczbę krawędzi to dla nich algorytm zwraca cykl Eulera. Stąd z wcześniejszego uzasadnienia algorytm musi działać też dla wyjściowego grafu.

Analiza złożoności
Załóżmy, że usuwanie krawędzi grafu oraz wyszukiwanie incydentnych wierzchołków jest wykonywane w czasie O(1). Wtedy bloki 5-8 oraz 9-12 są wykonywane w czasie O(1). Policzmy ile jest iteracji wykonania tych bloków. 
Zauważmy że wykonanie bloku 5-8 wymaga istnienia krawędzi w grafie oraz blok nie przegląda żadnej krawędzi 2 razy, ponieważ od razu usuwa jej z grafu. Stąd wnioskujemy, że sumaryczna liczba iteracji po wszystkich v, które spełnią warunek pętli WHILE, nie przekracza |E|. 
Blok 9-12 wypisuje gotowe rozwiązanie, więc będzie wykonywany równo |E| razy. 
Zatem algorytm działa w czasie O(|E|).
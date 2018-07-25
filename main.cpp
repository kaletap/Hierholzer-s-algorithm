#include <iostream>
#include <stack>
#include "node/Node.h"
#include "graph/Graph.h"

using namespace std;


int main()
{
	Graph G(9);
	G.addEdge(0,1);
	G.addEdge(1,2);
	G.addEdge(2,3);
	G.addEdge(3,4);
	G.addEdge(4,5);
	G.addEdge(5,0);
	G.addEdge(2,6);
	G.addEdge(6,7);
	G.addEdge(7,8);
	G.addEdge(8,2);
	G.Euler();
	return 0;
}
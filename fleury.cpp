#include <iostream>
#include <stack>

using namespace std;

struct Node
{
	int nr;
	Node* left;
	Node* right;
	Node* jump;

	Node(int number=0, Node*left=NULL, Node*right=NULL, Node*jump=NULL);
	void remove();
};

class Graph
{
	int V;
	Node**Edges;
public:
	Graph(int V);
	~Graph();
	void addEdge(int u, int v);
	void Euler();
	bool isIsolated(int v);
};

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

Node::Node(int number, Node*left, Node*right, Node*jump)
{
	this->nr = number;
	this->left = left;
	this->right = right;
	this->jump = jump;
}

void Node::remove()
{
	this->left->right = this->right;
	if(this->right == NULL)
		;
	else
		this->right->left = this->left;
	//Usuwamy te krawedz zapisana w innym miejscu:
	this->jump->left->right = this->jump->right;
	if(this->jump->right == NULL)
		return;
	else
		this->jump->right->left = this->jump->left;
}

Graph::Graph(int V)
{
	this->V = V;
	Edges = new Node*[V];
	for(int i=0; i<V; i++)
		Edges[i] = new Node(i);
}

Graph::~Graph()
{
	for(int i=0; i<V; i++)
		delete[] Edges[i];
	delete[] Edges;
}

void Graph::addEdge(int u, int v)
{
	Node* current = Edges[u];
	Node* next = current->right;
	while(next != NULL)
		{
			current = next;
			next = current->right;
		}
	Node* last1 = new Node(v, current, NULL);
	current->right = last1;

	current = Edges[v];
	next = current->right;
	while(next != NULL)
		{
			current = next;
			next = current->right;
		}
	Node* last2 = new Node(u, current, NULL, last1);
	current->right = last2;
	last1->jump = last2;
}

void Graph::Euler()
{
	stack<Node*> S;
	Node* v = Edges[0];
	cout << 0 <<" ";
	Node* w;
	while(true)
	{
		while(!isIsolated(v->nr))
		{
			w = v->right;
			S.push(v);
			int w_nr = w->nr;
			//cout << " " << '\'' << w_nr << '\'' <<" ";
			w->remove();
			v = Edges[w_nr];
		}
		if (S.empty())
			return;
		else
		{
			int v_nr = S.top()->nr;
			v = Edges[v_nr]; 
			S.pop();
			cout << v_nr << " ";
		}
	}
}

bool Graph::isIsolated(int v)
{
	return Edges[v]->right == NULL;
}
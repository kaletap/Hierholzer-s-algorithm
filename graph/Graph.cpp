//
// Created by Kira on 5/16/2018.
//

#include <iostream>
#include <stack>
#include "Graph.h"

using namespace std;

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

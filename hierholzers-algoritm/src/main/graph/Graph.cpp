//
// Created by Kira on 5/16/2018.
//

#include <iostream>
#include <stack>
#include "Graph.h"

using namespace std;

Graph::Graph(int V) {
    this->vertexesCount = V;
    edges = new Edge *[V];
    degrees = new int[V];
    for (int i = 0; i < V; i++){
        edges[i] = new Edge(i);
        degrees[i]=0;
    }
}

Graph::~Graph() {
    for (int i = 0; i < vertexesCount; i++)
        delete[] edges[i];
    delete[] edges;
}

void Graph::addEdge(int u, int v) {
    edgesPairs.push_back(make_pair(u,v));
    Edge* newEdgeFromU = addAfterAndGetNewEdge(edges[u], v);
    Edge* newEdgeFromV = addAfterAndGetNewEdge(edges[v], u);
    newEdgeFromU->oppositeDirection = newEdgeFromV;
    newEdgeFromV->oppositeDirection = newEdgeFromU;
    degrees[u]++;
    degrees[v]++;
}

vector<int> Graph::getEulerCycleStartingWith(int startVertex) {
    vector<int> eulerCycle;
    stack<Edge *> S;
    Edge *v = edges[startVertex];

    if(v->right == nullptr)
        return vector<int>();

    eulerCycle.push_back(startVertex);
    Edge *w;
    while (true) {
        while (!isIsolatedVertex(v->vertex)) {
            w = v->right;
            S.push(v);
            int w_nr = w->vertex;
            removeEdge(v->vertex, w);
            v = edges[w_nr];
        }
        if (S.empty())
            return eulerCycle;
        else {
            int v_nr = S.top()->vertex;
            v = edges[v_nr];
            S.pop();
            eulerCycle.push_back(v_nr);
        }
    }
}

bool Graph::isIsolatedVertex(int v) {
    return edges[v]->right == nullptr;
}

bool Graph::isEulerGraph() {
    int oddVertexesCount = 0;
    for (int i = 0; i < vertexesCount; i++) {
        oddVertexesCount += degrees[i] % 2;
        if (oddVertexesCount > 0) return false;
    }
    return true;
}

void Graph::removeEdge(int startVertex, Edge *edge) {
    degrees[startVertex]--;
    degrees[edge->vertex]--;
    edge->oppositeDirection->remove();
    edge->remove();
}

int* Graph::getDegrees() {
    return degrees;
}

Edge* Graph::addAfterAndGetNewEdge(Edge *after, int vertex) {
    Edge *newEdge = new Edge(vertex, after, after->right);
    if(after->right != nullptr) after ->right->left = newEdge;
    after->right = newEdge;
    return newEdge;

}

int Graph::getVertexCount() {
    return vertexesCount;
}

int Graph::getEdgesCount() {
    return edgesPairs.size();
}

vector<int> Graph::getEulerCycle() {
    return getEulerCycleStartingWith(0);
}


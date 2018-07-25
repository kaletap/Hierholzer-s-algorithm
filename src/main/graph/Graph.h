//
// Created by Kira on 5/16/2018.
//
#include <vector>
#include <set>
#include "../edge/Edge.h"

#ifndef HEIRHOLZERS_ALGORITHM_GRAPH_H
#define HEIRHOLZERS_ALGORITHM_GRAPH_H


class Graph
{
private:
    int vertexesCount;
    Edge**edges;
    int* degrees;
    vector<pair<int,int>> edgesPairs;
    Edge* addAfterAndGetNewEdge(Edge *, int);
    bool isIsolatedVertex(int);
    void removeEdge(int,Edge*);
public:
    Graph(int);
    ~Graph();
    int getVertexCount();
    int getEdgesCount();
    int* getDegrees();
    void addEdge(int, int);
    vector<int> getEulerCycle();
    vector<int> getEulerCycleStartingWith(int);
    bool isEulerGraph();
};

#endif HEIRHOLZERS_ALGORITHM_GRAPH_H

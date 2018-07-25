//
// Created by Kira on 5/16/2018.
//
#include "../node/Node.h"

#ifndef HEIRHOLZERS_ALGORITHM_GRAPH_H
#define HEIRHOLZERS_ALGORITHM_GRAPH_H


class Graph
{
    int V;
    Node**Edges;
public:
    Graph(int);
    ~Graph();
    void addEdge(int, int);
    void Euler();
    bool isIsolated(int);
};

#endif HEIRHOLZERS_ALGORITHM_GRAPH_H

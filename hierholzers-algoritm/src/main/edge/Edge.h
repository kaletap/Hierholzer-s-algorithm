//
// Created by Kira on 5/16/2018.
//


#ifndef HEIRHOLZERS_ALGORITHM_EDGE_H
#define HEIRHOLZERS_ALGORITHM_EDGE_H

#include <iostream>

using namespace std;

struct Edge {
    int vertex;
    Edge *left;
    Edge *right;
    Edge *oppositeDirection;

    Edge(int = 0, Edge * = nullptr, Edge * = nullptr, Edge * = nullptr);

    void remove();
};


#endif// HEIRHOLZERS_ALGORITHM_EDGE_H

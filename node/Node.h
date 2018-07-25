//
// Created by Kira on 5/16/2018.
//


#ifndef HEIRHOLZERS_ALGORITHM_NODE_H
#define HEIRHOLZERS_ALGORITHM_NODE_H

#include <iostream>

using namespace std;

struct Node
{
    int nr;
    Node* left;
    Node* right;
    Node* jump;

    Node(int = 0, Node* = NULL, Node* = NULL, Node* = NULL);
    void remove();
};


#endif HEIRHOLZERS_ALGORITHM_NODE_H

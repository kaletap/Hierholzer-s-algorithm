//
// Created by Kira on 5/16/2018.
//
#include <iostream>
#include "Edge.h"

Edge::Edge(int number, Edge *left, Edge *right, Edge *jump) :vertex(number),left(left),right(right),oppositeDirection(jump){};

void Edge::remove() {
    this->left->right = this->right;
    if(this->right != nullptr)
        this->right->left = this->left;
    delete this;
}




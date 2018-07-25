//
// Created by Kira on 5/16/2018.
//
#include <iostream>
#include "Node.h"

Node::Node(int number, Node *left, Node *right, Node *jump) :nr(number),left(left),right(right),jump(jump){};


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




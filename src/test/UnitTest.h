//
// Created by Kira on 5/17/2018.
//

#ifndef HEIRHOLZERS_ALGORITHM_UNITTEST_H
#define HEIRHOLZERS_ALGORITHM_UNITTEST_H


#include "../main/graph/Graph.h"

static class UnitTest {
private:
    static int const numberOfTests=10;
    static int const numberOfTestsWithMoreVertexes=5;
    static int const maxCyclesNumber=1000;
    static int const maxCyclesLength=1000;

    static bool test(Graph *graph);

    static Graph *getRandomEulerGraph(int);

public:
    static void runAllTests();

    static void addCycle(Graph *edges, int &vertex);
};


#endif //HEIRHOLZERS_ALGORITHM_UNITTEST_H

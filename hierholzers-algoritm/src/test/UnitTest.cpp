//
// Created by Kira on 5/17/2018.
//

#include "UnitTest.h"
#include<chrono>
#include <algorithm>
#include <cstdlib>


using namespace std;
using namespace chrono;


bool UnitTest::test(Graph *graph) {

    //cout << "Graph has " << graph->getVertexCount() << " vertexes and " << graph->getEdgesCount() << " edges" << endl;
    cout << graph->getEdgesCount() << " ";

    auto start = system_clock::now();
    vector<int> eulerCycle = graph->getEulerCycle();
    auto end = system_clock::now();

//    auto print = [](const int &n) { std::cout << n << " "; };
//    for_each(eulerCycle.begin(), eulerCycle.end(), print);
//    cout<<endl;

    //cout<<"Euler cycle size :"<<eulerCycle.size()<<endl;

    duration<double> elapsed_seconds = end - start;
    //cout << "Finished computation with elapsed time: " << elapsed_seconds.count() << "s\n";
    cout << elapsed_seconds.count();
    return eulerCycle.size() == graph->getEdgesCount()+1;
}

void UnitTest::runAllTests() {
    srand(1);

    int countSuccessfulTests = 0;

    for (int i = 0; i < numberOfTests; i++) {
        int vertexesCount;
        if(i<numberOfTestsWithMoreVertexes){
            //cout << "Starting test number with more vertexes: " << i << endl;
            vertexesCount = (rand()%32768)*50 + 1;                                        ///
        } else {
           // cout << "Starting test number with less vertexes: " << i << endl;
            vertexesCount = (rand()%32768)*20 + 1;                                       ///
        }
        bool success = test(getRandomEulerGraph(vertexesCount));
        //cout << "Test completed with: ";
        if (success) {
           // cout << "SUCCESS";
            countSuccessfulTests++;
        } else cout << "FAILURE";
        cout << "\n";
    }
    cout << "Tests completed with success: " << countSuccessfulTests << "/" << numberOfTests << endl;
}

Graph *UnitTest::getRandomEulerGraph(int vertexesCount) {
    //cout << "Initializing graph..." << endl;
    Graph *graph = new Graph(vertexesCount);

    int cyclesNumber = rand()%maxCyclesNumber+1;
    int connectionVertex = 0;

    for (int i = 0; i < cyclesNumber; i++)
        addCycle(graph, connectionVertex);

    return graph;
}

void UnitTest::addCycle(Graph *graph, int &connectionVertex) {
    int length = rand()%maxCyclesLength+2;
    int newConnectionVertexIndex = rand()%length;
    int vertexCount = graph->getVertexCount();

    int currentVertex = connectionVertex;
    for (int i = 0; i < length; i++) {
        int nextVertex = rand()%vertexCount;
        graph->addEdge(currentVertex,nextVertex);
        if(i == newConnectionVertexIndex) connectionVertex = nextVertex;
        currentVertex = nextVertex;
    }
}

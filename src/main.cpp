// (C) Copyright 2023 @cocoazawa
#include <rocketeerGUI.hpp>
using namespace std;

// This is the only set of lines that the code needs to run. 
// The rest happens in the rocketeerGUI header file. 
int main() {
    rocketeerApp app;

    try {
        app.run();
    } catch (const exception &e) {
        cerr << e.what() << endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
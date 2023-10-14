#include <rocketeerGUI.hpp>
using namespace std;

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
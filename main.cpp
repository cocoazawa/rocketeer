#include <iostream>
#include <GLFW/glfw3.h>
#include <math.h>
using namespace std;

int main() {
    GLFWwindow* window;

    /* Initialize the library */
    if (!glfwInit()) {
        printf("Error: Couldn't initialize GLFW");
        return -1; 
    }

    window = glfwCreateWindow(640, 480, "Rocketeer (DX)", NULL, NULL);
    if (!window) {
        printf("Error: Couldn't initialize GLFW window");
        glfwTerminate();
        return -1;
    } else {
        glfwMakeContextCurrent(window);
    }

    while (!glfwWindowShouldClose(window)) {
        printf("Alert: Closing window...");

        glfwSwapBuffers(window);
        glfwPollEvents();

        glDrawPixels(100, 100, GL_RGB, )
    }

    glfwTerminate();
    return 0;
}
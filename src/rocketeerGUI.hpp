#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>
#include <vulkan/vulkan.h>
#include <vector>

#include <iostream>
#include <stdexcept>
#include <cstdlib>

const uint32_t windowWidth = 800;
const uint32_t windowHeight = 600;


class rocketeerApp {
    public:
        void run() {
            initWindow();
            initVulkan();
            mainLoop();
            cleanup();
        }

    private:
        GLFWwindow* window;

        VkInstance instance;

        void initWindow() {
            glfwInit();

            glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
            glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);

            window = glfwCreateWindow(windowWidth, windowHeight, "Rocketeer", nullptr, nullptr);
        }

        void initVulkan() {
            createInstance();
        }

        void mainLoop() {
            while (!glfwWindowShouldClose(window)) {
                glfwPollEvents();
            }
        }

        void cleanup() {
            glfwDestroyWindow(window);

            glfwTerminate();
        }

        void createInstance() {
            VkApplicationInfo appInfo{};
            appInfo.sType = VK_STRUCTURE_TYPE_APPLICATION_INFO;  // sType means "structure type"
            appInfo.pApplicationName = "Rocketeer";
            appInfo.applicationVersion = VK_MAKE_VERSION(1, 0, 0);
            appInfo.pEngineName = "No Engine";
            appInfo.engineVersion = VK_MAKE_VERSION(1, 0, 0);
            appInfo.apiVersion = VK_API_VERSION_1_0;

            VkInstanceCreateInfo createInfo{};
            createInfo.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
            createInfo.pApplicationInfo = &appInfo;
            

            uint32_t glfwExtensionCount = 0;
            const char** glfwExtensions;
            
            glfwExtensions = glfwGetRequiredInstanceExtensions(&glfwExtensionCount);

            std::vector<const char*> requiredExtensions;

            for(uint32_t i = 0; i < glfwExtensionCount; i++) {
                requiredExtensions.emplace_back(glfwExtensions[i]);
            }

            requiredExtensions.emplace_back(VK_KHR_PORTABILITY_ENUMERATION_EXTENSION_NAME);

            createInfo.flags |= VK_INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR;
            
            createInfo.enabledExtensionCount = (uint32_t) requiredExtensions.size();
            createInfo.ppEnabledExtensionNames = requiredExtensions.data();
            createInfo.enabledLayerCount = 0;

            VkResult result = vkCreateInstance(&createInfo, nullptr, &instance);
            // https://registry.khronos.org/vulkan/specs/1.3-extensions/man/html/VkResult.html
            if (vkCreateInstance(&createInfo, nullptr, &instance) != VK_SUCCESS) {
                std::cout << "Error Code/" << result << "\n";
                throw std::runtime_error("Error/Failed to create instance.");
            }
        }
};

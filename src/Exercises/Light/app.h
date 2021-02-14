//
// Created by pbialas on 05.08.2020.
//


#pragma once

#include <vector>

#include <glm/mat4x4.hpp>
#include "Application/application.h"
#include "Application/utils.h"

#include "glad/glad.h"
#include "camera.h"
#include "CameraControler.h"
#include "quad.h"
#include <memory>
#include <chrono>

struct Light {
    glm::vec4 position;
    glm::vec4 color;
    glm::vec4 a;
    glm::vec4 ambient;
};
class SimpleShapeApplication : public xe::Application {
public:
    SimpleShapeApplication(int width, int height, std::string title, int major = 4, int minor = 1) :
            Application(width, height, title, major, minor) {}

    void init() override;;

    void frame() override;
    void framebuffer_resize_callback(int w, int h) override;

    void set_camera(Camera *camera) { camera_ = camera; }
    void set_controler(CameraControler *controler){controler_ = controler;}
    Camera *camera() { return camera_; }
    ~SimpleShapeApplication() {
        if (camera_) {
            delete camera_;
        }
    }

    void scroll_callback(double xoffset, double yoffset) override;
    void mouse_button_callback(int button, int action, int mods) override;
    void cursor_position_callback(double x, double y) override;
    std::shared_ptr<Quad> quad_;

    private:
    GLuint vao_;
    Camera *camera_;
    GLuint u_pvm_buffer_;
    CameraControler *controler_;
    std::chrono::steady_clock::time_point  start_;
    float rotation_period;
    Light light_;
    GLuint light_buffer;
};

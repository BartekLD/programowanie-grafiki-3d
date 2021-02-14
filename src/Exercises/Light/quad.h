//
// Created by Bartek on 14.02.2021.
//

#ifndef INC_3DGRAPHICSEXAMPLES_QUAD_H
#define INC_3DGRAPHICSEXAMPLES_QUAD_H
#pragma once

#include "glad/glad.h"


class Quad  {
public:
    Quad();
    ~Quad();
    void draw();
    Quad(const Quad& rhs) = delete;
    Quad &operator=(const Quad& rhs) = delete;

    void operator=(Quad&& rhs) = delete;
    Quad(Quad&& rhs) = delete;
private:
    GLuint vao_;
    GLuint idx_buffer_handle;
    GLuint v_buffer_handle;
    GLuint diffuse_texture_;

};
#endif //INC_3DGRAPHICSEXAMPLES_QUAD_H

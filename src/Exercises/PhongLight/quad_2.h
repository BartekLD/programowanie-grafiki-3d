//
// Created by Bartek on 08.02.2021.
//

#ifndef INC_3DGRAPHICSEXAMPLES_QUAD_2_H
#define INC_3DGRAPHICSEXAMPLES_QUAD_2_H
#pragma once

#include "glad/glad.h"
class Quad_2 {
public:
    Quad_2();
    ~Quad_2();
    void draw();
    Quad_2(const Quad_2& rhs)=delete;
    Quad_2 &operator =(const Quad_2& rhs) = delete;
    void operator=(Quad_2&& rhs)=delete;
    Quad_2(Quad_2 &&rhs)=delete;

private:
    GLuint vao_;
    GLuint  buffers_[2];
    GLuint diffuse_texture_;

};
#endif //INC_3DGRAPHICSEXAMPLES_QUAD_2_H

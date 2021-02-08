//
// Created by Bartek on 07.02.2021.
//

#ifndef INC_3DGRAPHICSEXAMPLES_PYRAMID_H
#define INC_3DGRAPHICSEXAMPLES_PYRAMID_H
#pragma once

#include "glad/glad.h"


class Pyramid {
public:
    Pyramid();
    ~Pyramid();
    void draw();
    Pyramid(const Pyramid& rhs)=delete;
    Pyramid &operator =(const Pyramid& rhs) = delete;
    void operator=(Pyramid&& rhs)=delete;
    Pyramid(Pyramid &&rhs)=delete;

private:
    GLuint vao_;
    GLuint  buffers_[2];
    GLuint diffuse_texture_;

};
#endif //INC_3DGRAPHICSEXAMPLES_PYRAMID_H

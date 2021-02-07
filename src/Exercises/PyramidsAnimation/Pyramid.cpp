//
// Created by Bartek on 07.02.2021.
//
#include "pyramid.h"
#include <vector>

Pyramid::Pyramid() {
    std::vector<GLfloat> vertices = {
            -1.0f, -1.0f, 0.0, 1.0, 1.0, 1.0,
            1.0f, -1.0f, 0.0, 1.0, 1.0, 1.0,
            -1.0f, 1.0f, 0.0, 1.0, 1.0, 1.0,
            1.0f, 1.0f, 0.0, 1.0, 1.0, 1.0, //bottom
            0.0f, 0.0f, 1.0f, 0.5, 0.5, 1.0,
            -1.0f, -1.0f, 0.0, 0.5, 0.5, 1.0,
            1.0f, -1.0f, 0.0f, 0.5, 0.5, 1.0, //first wall
            0.0f, 0.0f, 1.0f, 1.0, 0.0, 0.0,
            -1.0f, -1.0f, 0.0, 1.0, 0.0, 0.0,
            -1.0f, 1.0f, 0.0, 1.0, 0.0, 0.0, //second wall
            0.0f, 0.0f, 1.0f, 1.0, 1.0, 0.0,
            1.0f, 1.0f, 0.0, 1.0, 1.0, 0.0,
            -1.0f, 1.0f, 0.0, 1.0, 1.0, 0.0, //third wall
            0.0f, 0.0f, 1.0f, 0.81, 0.0, 0.5,
            1.0f, 1.0f, 0.0, 0.81, 0.0, 0.5,
            1.0f, -1.0f, 0.0, 0.81, 0.0, 0.5, //fourth wall
    };

    glGenBuffers(2, this->buffers_);
    glBindBuffer(GL_ARRAY_BUFFER, this->buffers_[0]);
    glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(GLfloat), vertices.data(), GL_STATIC_DRAW);
    glBindBuffer(GL_ARRAY_BUFFER, 0);

    std::vector<GLushort> indices = {
            0,2,1,3,1,2,4,5,6,9,8,7,10,11,12,13,15,14 };

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, this->buffers_[1]);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(GLushort), indices.data(), GL_STATIC_DRAW);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);

    glGenVertexArrays(1, &this->vao_);
    glBindVertexArray(this->vao_);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,this->buffers_[1]);
    glBindBuffer(GL_ARRAY_BUFFER, this->buffers_[0]);
    glEnableVertexAttribArray(0);
    glEnableVertexAttribArray(1);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(GLfloat), reinterpret_cast<GLvoid *>(0));
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(GLfloat),reinterpret_cast<GLvoid *>(3*sizeof(GL_FLOAT)));
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
}

Pyramid::~Pyramid() {
    glDeleteVertexArrays(1, &this->vao_);
    glDeleteBuffers(2, this->buffers_);
}

void Pyramid::draw() {
    glBindVertexArray(this->vao_);
    glDrawElements(GL_TRIANGLES, 18, GL_UNSIGNED_SHORT,reinterpret_cast<GLvoid *>(0));
    glBindVertexArray(0);
}

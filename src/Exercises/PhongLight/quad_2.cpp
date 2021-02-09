//
// Created by Bartek on 08.02.2021.
//
#include "quad_2.h"
#include <vector>
/*#define STB_IMAGE_IMPLEMENTATION*/
#include <3rdParty/src/stb/stb_image.h>
#include <string>
#include <iostream>

Quad_2::Quad_2() {
    std::vector<GLfloat> vertices = {
            -1.0f,  -1.0f, 0.0f, 0.0f, 1.0f, 0.0f,0.0f,1.0f,
            1.0f,   -1.0f, 0.0f, 1.0f, 1.0f, 0.0f,0.0f,1.0f,
            1.0f,   1.0f,  0.0f, 1.0f, 0.0f, 0.0f,0.0f,1.0f,
            -1.0f,  1.0f,  0.0f, 0.0f, 0.0f, 0.0f,0.0f,1.0f, //bottom
           // 0.0f, 0.0f, 1.0f, 0.0, 1.0,
            /*-1.0f, -1.0f, 0.0, 0.5, 0.5, 1.0,
            1.0f, -1.0f, 0.0f, 0.5, 0.5, 1.0,*/ //first wall
            //0.0f, 0.0f, 1.0f, 1.0, 1.0,
            /*-1.0f, -1.0f, 0.0, 1.0, 0.0, 0.0,
            -1.0f, 1.0f, 0.0, 1.0, 0.0, 0.0,*/ //second wall
           // 0.0f, 0.0f, 1.0f, 1.0, 0.0,
            /*1.0f, 1.0f, 0.0, 1.0, 1.0, 0.0,
            -1.0f, 1.0f, 0.0, 1.0, 1.0, 0.0,*/ //third wall
            //0.0f, 0.0f, 1.0f, 1.0, 1.0,
            /* 1.0f, 1.0f, 0.0, 0.81, 0.0, 0.5,
             1.0f, -1.0f, 0.0, 0.81, 0.0, 0.5, *///fourth wall
    };

    glGenBuffers(2, this->buffers_);
    glBindBuffer(GL_ARRAY_BUFFER, this->buffers_[0]);
    glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(GLfloat), vertices.data(), GL_STATIC_DRAW);
    glBindBuffer(GL_ARRAY_BUFFER, 0);

    std::vector<GLushort> indices = {
            0,1,2,
            0,2,3, //bottom
             };

    int width, height, n_channels;
    auto texture_filename = std::string(PROJECT_DIR) + "/Textures/silver.png";
    uint8_t  *data = stbi_load(texture_filename.c_str(), &width, &height, &n_channels, 0);
    if (*data)
    {
        std::cout << width << std::endl;
        std::cout << height << std::endl;
    }
    else {
        std::cout << "Cannot load file" << std::endl;
    }
    glBindTexture(GL_TEXTURE_2D, diffuse_texture_);
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA, width, height,0, GL_RGBA,GL_UNSIGNED_BYTE,data);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST);
    glBindTexture(GL_TEXTURE_2D,0);


    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, this->buffers_[1]);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER,indices.size() * sizeof(GLushort),indices.data(),
                 GL_STATIC_DRAW);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,0);

    /*std::vector<GLushort> indices = {
            0,2,1,3,1,2, //bottom
            4,5,6,
            9,8,7,
            10,11,12,
            13,15,14 };*/

    glGenVertexArrays(1,&this->vao_);
    glBindVertexArray(this->vao_);
    glBindBuffer(GL_ARRAY_BUFFER, this->buffers_[0]);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(GLfloat), reinterpret_cast<GLvoid *>(0));
    glEnableVertexAttribArray(1);
    glVertexAttribPointer(1,3,GL_FLOAT,GL_FALSE, 8* sizeof(GLfloat),reinterpret_cast<GLvoid *>(3*sizeof(GL_FLOAT)));
    glEnableVertexAttribArray(2);
    glVertexAttribPointer(2,3,GL_FLOAT, GL_FALSE,8*sizeof(GL_FLOAT),reinterpret_cast<GLvoid *>(5*sizeof(GL_FLOAT)));
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,this->buffers_[1]);
    glBindVertexArray(0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,0);
}

Quad_2::~Quad_2() {
    glDeleteVertexArrays(1, &this->vao_);
    glDeleteBuffers(2, this->buffers_);
}

void Quad_2::draw() {
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D,diffuse_texture_);
    glBindVertexArray(this->vao_);
    glDrawElements(GL_TRIANGLES, 18, GL_UNSIGNED_SHORT,reinterpret_cast<GLvoid *>(0));
    glBindVertexArray(0);

}

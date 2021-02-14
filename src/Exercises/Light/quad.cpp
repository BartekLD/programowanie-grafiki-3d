
//
// Created by Bartek on 14.02.2021.
//

#include "quad.h"
#include <vector>
#define STB_IMAGE_IMPLEMENTATION
#include <3rdParty/src/stb/stb_image.h>
#include <string>
#include <iostream>


Quad::Quad() {
    std::vector<GLfloat> vertices = {

            -1.0f,  -1.0f, 0.0f, 0.0f, 1.0f,0.0f,0.0f,1.0f,
            1.0f,   -1.0f, 0.0f, 1.0f, 1.0f,0.0f,0.0f,1.0f,
            1.0f,   1.0f,  0.0f, 1.0f, 0.0f,0.0f,0.0f,1.0f,
            -1.0f,  1.0f,  0.0f, 0.0f, 0.0f,0.0f,0.0f,1.0f,
               };



    GLuint v_buffer_handle;
    glGenBuffers(1, &v_buffer_handle);
    glBindBuffer(GL_ARRAY_BUFFER, v_buffer_handle);
    glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(GLfloat), vertices.data(), GL_STATIC_DRAW);
    glBindBuffer(GL_ARRAY_BUFFER, 0);

    std::vector<GLushort> indices = {
            0,1,2,
            0,2,3,
    };
           /* 0,2,1,3,1,2, //bottom
            4,2,0,
            5,3,2,
            6,1,3,
            7,0,1 };*/

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

    GLuint idx_buffer_handle;
    glGenBuffers(1,&idx_buffer_handle);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, idx_buffer_handle);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(GLushort), indices.data(), GL_STATIC_DRAW);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);


    glGenVertexArrays(1, &vao_);
    glBindVertexArray(vao_);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,idx_buffer_handle);
    glBindBuffer(GL_ARRAY_BUFFER, v_buffer_handle);
    glEnableVertexAttribArray(0);
    glEnableVertexAttribArray(1);
    glEnableVertexAttribArray(2);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(GLfloat), reinterpret_cast<GLvoid *>(0));
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(GLfloat),reinterpret_cast<GLvoid *>(3*sizeof(GL_FLOAT)));
    glVertexAttribPointer(2,3,GL_FLOAT, GL_FALSE,8*sizeof(GL_FLOAT),reinterpret_cast<GLvoid *>(5*sizeof(GL_FLOAT)));
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,0);

}

Quad::~Quad() {
    //Tu usuwamy VAO i bufory
    glDeleteVertexArrays(1, &this->vao_);
    glDeleteBuffers(2, reinterpret_cast<const GLuint *>(this->idx_buffer_handle));
    glDeleteBuffers(2, reinterpret_cast<const GLuint *>(this->v_buffer_handle));
}

void Quad::draw() {
    //Tu wywolujemy polecenie glDrawElements
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D,diffuse_texture_);
    glBindVertexArray(this->vao_);
    glDrawElements(GL_TRIANGLES, 18, GL_UNSIGNED_SHORT,reinterpret_cast<GLvoid *>(0));
    glBindVertexArray(0);
}
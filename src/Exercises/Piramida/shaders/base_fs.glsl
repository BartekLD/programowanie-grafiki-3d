#version 410
layout(std140) uniform Modifiers {
    float strength;
    vec3 light;
};

layout(location=0) out vec4 vFragColor;
 in vec3 vertex_color;
void main() {
    vFragColor.a = 1.0;
    vFragColor.rgb = strength*light*vertex_color.rgb;

}

#version 410
/*
layout(std140) uniform Modifiers {
    float light_intensity;
    vec3 light_color;
};
*/
layout(std140) uniform Light {
    vec3 position_in_vs;
    vec3 color;
    vec3 a;
vec3 ambient;
} light;

layout(location=0) out vec4 vFragColor;
in vec2 texture_coords;
in vec3 vertex_normal_in_vs;
in vec3 vertex_position_in_vs;
uniform sampler2D diffuse_map;
void main() {
    vFragColor = texture(diffuse_map, texture_coords);
    vec3 normal = normalize(vertex_normal_in_vs);
    if (!gl_FrontFacing) {
        normal = -normal;
    }
    vec3 light_vector = normalize(light.position_in_vs - vertex_position_in_vs);

    /*vec3 light_vector = light.position_in_vs - vertex_position_in_vs;*/
    /*float light_in = max(0.0,dot(normal, light_vector));*/



    vec4 diffuse_color = texture(diffuse_map, texture_coords);

    float r =length(light.position_in_vs - vertex_position_in_vs);
    light_vector/=r;
    float attenaution = 1.0/(light.a[0] + light.a[1]*r+light.a[2]*r*r);
    float light_in = max(0.0,dot(normal,light_vector))*attenaution;


    vFragColor.a = diffuse_color.a;
    vFragColor.rgb = diffuse_color.rgb * light.ambient.rgb;;
    vFragColor.rgb += light_in * diffuse_color.rgb*light.color;

    /*vFragColor.rgb = normal;*/
    /*vFragColor.rgb = light.a;*/
    /*FragColor.rgb = vertex_position_in_vs;*/
    }

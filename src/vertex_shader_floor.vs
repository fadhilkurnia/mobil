#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 colors;
layout (location = 2) in vec2 aTexCords;

out vec3 FragPos;
out vec3 floorColors;
out vec2 texCords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() {
	FragPos = vec3(model * vec4(aPos, 1.0));
	gl_Position = projection * view * model * vec4(aPos, 1.0f);
	floorColors = colors;
	texCords = aTexCords;
}

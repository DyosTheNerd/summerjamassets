shader_type canvas_item;

uniform float progress : hint_range(0.0, 1.0) = 0.0; // Control the development progress

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	    vec4 tex_color = texture(TEXTURE, FRAGCOORD.xy / TEXTURE_PIXEL_SIZE);

    // Simulate the polaroid effect by blending with a sepia tone and gradually revealing the image
    vec3 sepia = vec3(1.2, 1.0, 0.8);
    vec3 color = mix(sepia, tex_color.rgb, progress);

    COLOR = vec4(color, tex_color.a);
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}

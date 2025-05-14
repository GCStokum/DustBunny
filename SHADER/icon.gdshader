shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	
	// Called for every pixel the material is visible on.
	vec4 input_color = texture(TEXTURE, UV); // scan through u,v and apply below to each pixel as you pass it
	
	float color_average = (input_color.r + input_color.g + input_color.b) / 3.0;
	
	vec4 output_color = vec4(color_average, color_average, color_average, input_color.a);
	
	if (output_color.r > 0.5 && output_color.g > 0.5 && output_color.b > 0.5)
	{
		//output_color.a = 0.0;
		output_color = vec4(1.0, 0.0, 0.0, 1.0);
	}
	COLOR = output_color;
	//COLOR = vec4(color_average, color_average, color_average, input_color.a); //makes a grey shader
	
	
	// example : this would just scan u and v, and put the same rgba back out per fragment
	//COLOR = input_color;
	// example : grab the alpha channel and only apply there
	//COLOR = vec4(1.0, 1.0, 1.0, input_color.a);
		// example : grab the alpha channel and only apply there
	//COLOR = vec4(1.0, 1.0, 1.0, input_color.a);
	// example : turn image 50% TRANSPARENT WHITE, not 50Grey,50Grey,50Grey by val
	//COLOR = vec4(1.0, 1.0, 1.0, 0.5);
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}

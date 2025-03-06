#version 410  //GLSL version

uniform vec3 u_colour;			// colour as a 3D vector (r,g,b)
uniform vec2 u_screenSize;  	// screen dimensions in pixels

layout(location = 0) out vec4 o_colour;	// output to colour buffer

void main() {	//Main shader variables
   vec2 p = gl_FragCoord.xy / u_screenSize;   // scale p into range (0,0) to (1,1)
  // float d = distance(p, vec2(0.5, 0.5));     // calculate distance to midpoint
   vec2 v = abs(p - vec2(0.5, 0.5));
   float d = max(v.x, v.y);
   u_colour;
  
   vec3 finalColor = vec3(1, 0, 1);
  
   if (d < 0.4) {
      o_colour = vec4(finalColor, 1);
   }
   else {
      o_colour = vec4(0.5,1,1,1); // BLACK
   }
}
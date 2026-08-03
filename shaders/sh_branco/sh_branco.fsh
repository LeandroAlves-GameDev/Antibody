//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    // Pega a cor original da textura combinada com a cor do vertex
    vec4 cor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    // Força o RGB para branco, mas multiplica pelo alpha original para não criar quadrado branco
    cor.rgb = vec3(1.0, 1.0, 1.0) * cor.a;
    
    gl_FragColor = cor;
}
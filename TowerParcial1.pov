#include "colors.inc"
#include "textures.inc"
#include "stones.INC"
#include "stones2.INC"
#include "glass.inc"  

camera {angle 65
        location  <clock-12, 0.1 ,-13>
        rotate <0,(30*clock), 0>
        look_at   <3.5 , 9.4 , 3.5>}  
        
// Luz normal 
light_source{<1500,3000,-2500> color White}
        
// Segunda Luz
light_source{ <-1500,500,-2550> color Gray} 

// Cielo
sky_sphere{ pigment{ color rgb<0.15,0.28,0.75>*0.5}   } 

// Niebla en el Horizonte con Fog 
fog{ fog_type   2
     distance   1000
     color      rgb<1,1,1>*0.9
     fog_offset 0.1
     fog_alt    30
     turbulence 1.8
   }

   
sky_sphere{
 pigment{ gradient y
          color_map{
          [0.0 color rgb<1,1,1>             ]
          [0.3 color rgb<0.18,0.28,0.75>*0.6]
          [1.0 color rgb<0.15,0.28,0.75>*0.5] }
          scale 1.05
          translate<0,-0.05,0>
    }
}    
   
// Declaraciones para la Nubes
#declare Tierra = 600000 ;
#declare Cielo    = Tierra + 2000 ;     
   
// Capa para Nubes
sphere{ <0, -Tierra, 0>, Cielo  hollow
       
        texture{ pigment{ bozo turbulence 0.75
                          octaves 6  omega 0.7 lambda 2  phase 0.00
                         color_map {
                          [0.00 color rgb <0.95, 0.95, 0.95> ]
                          [0.05 color rgb <1, 1, 1>*1.25 ]
                          [0.15 color rgb <0.85, 0.85, 0.85> ]
                          [0.55 color rgbt <1, 1, 1, 1>*1 ]
                          [1.00 color rgbt <1, 1, 1, 1>*1 ]
                         } 
                         translate< 3, 0,-1>
                         scale <0.3, 0.4, 0.2>*3
                       } 
                              
                 #if (version = 3.7 )  finish {emission 1 diffuse 0}
                 #else                 finish { ambient 1 diffuse 0}
                 #end 
                 scale 3000
               } 
  }

sphere{ <0, -Tierra, 0>, Tierra  
 
         texture{ pigment{color rgb<0.35,0.65,0.0>*0.8}
                  normal {bumps 0.75 scale 0.015}
                }
      }

plane{ <0,2.5,0>, 0
       texture{
          pigment{ color rgb<0.22,0.50,0>}
          normal { bumps 0.90 scale 0.010 }
          finish { phong 0.1 }
       } 
     }
           
 
// Declaracion de la arquitectura     
#declare Arch = difference{
 box {<-1.1,0,-0.1>,< 1.1,1.1,0.1>}
 cylinder {<0,0,-0.11>,<0,0,0.11>,0.9 }
 texture{Cork scale 3}
}

// Pilares 
#declare Pillar = union{
 torus{0.10,0.05 translate<0,1.45,0>}
 torus{0.12,0.05 translate<0,0.04,0>}
 cone {<0,0,0>,0.12,<0,1.5,0>,0.1}
 texture{Cork }
}    
  

// Formacion de la arquitectura # 1
union{
union{
object{Pillar translate<-1,0,-1>}
object{Pillar translate< 1,0,-1>}
object{Pillar translate<-1,0, 1>}
object{Pillar translate< 1,0, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5,-1>}
object{Arch rotate<0,90,0> translate< 1,1.5, 0>}
object{Arch rotate<0,90,0> translate<-1,1.5, 0>}  
translate<0,0.45,0>}

union{ 
box{<-1.20,0.30,-1.20>,<1.20,0.45,1.20>}
box{<-1.50,0.15,-1.50>,<1.50,0.30,1.50>}
box{<-1.80,0.00,-1.80>,<1.80,0.15,1.80>}
texture{Cork}
 }
 
scale <1,1,1> 
rotate<1,0,0> 
translate<2,0,2>}   

// Formacion de la arquitectura #2
union{
union{
object{Pillar translate<-1,0,-1>}
object{Pillar translate< 1,0,-1>}
object{Pillar translate<-1,0, 1>}
object{Pillar translate< 1,0, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5,-1>}
object{Arch rotate<0,90,0> translate< 1,1.5, 0>}
object{Arch rotate<0,90,0> translate<-1,1.5, 0>}  
translate<0,0.45,0>}

 
scale <1,1,1> 
rotate<1,0,0> 
translate<2,2.6,2>}     

// Formacion de la arquitectura #3
union{
union{
object{Pillar translate<-1,0,-1>}
object{Pillar translate< 1,0,-1>}
object{Pillar translate<-1,0, 1>}
object{Pillar translate< 1,0, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5,-1>}
object{Arch rotate<0,90,0> translate< 1,1.5, 0>}
object{Arch rotate<0,90,0> translate<-1,1.5, 0>}  
translate<0,0.49,0>}

 
scale <1,1,1> 
rotate<1,0,0> 
translate<2,5.1,2>} 

// Formacion de la arquitectura #4
union{
union{
object{Pillar translate<-1,0,-1>}
object{Pillar translate< 1,0,-1>}
object{Pillar translate<-1,0, 1>}
object{Pillar translate< 1,0, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5,-1>}
object{Arch rotate<0,90,0> translate< 1,1.5, 0>}
object{Arch rotate<0,90,0> translate<-1,1.5, 0>}  
translate<0,0.45,0>}

 
scale <1,1,1> 
rotate<1,0,0> 
translate<2,7.7,2>}  

// Formacion de la arquitectura #5
union{
union{
object{Pillar translate<-1,0,-1>}
object{Pillar translate< 1,0,-1>}
object{Pillar translate<-1,0, 1>}
object{Pillar translate< 1,0, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5,-1>}
object{Arch rotate<0,90,0> translate< 1,1.5, 0>}
object{Arch rotate<0,90,0> translate<-1,1.5, 0>}  
translate<0,0.45,0>}

 
scale <1,1,1> 
rotate<1,0,0> 
translate<2,10.3,2>}    
   
// Formacion de la arquitectura #6
union{
union{
object{Pillar translate<-1,0,-1>}
object{Pillar translate< 1,0,-1>}
object{Pillar translate<-1,0, 1>}
object{Pillar translate< 1,0, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5,-1>}
object{Arch rotate<0,90,0> translate< 1,1.5, 0>}
object{Arch rotate<0,90,0> translate<-1,1.5, 0>}  
translate<0,0.45,0>}

 
scale <1,1,1> 
rotate<1,0,0> 
translate<2,12.9,2>}  

// Formacion de la arquitectura #7
union{
union{
object{Pillar translate<-1,0,-1>}
object{Pillar translate< 1,0,-1>}
object{Pillar translate<-1,0, 1>}
object{Pillar translate< 1,0, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5,-1>}
object{Arch rotate<0,90,0> translate< 1,1.5, 0>}
object{Arch rotate<0,90,0> translate<-1,1.5, 0>}  
translate<0,0.45,0>}

 
scale <1,1,1> 
rotate<1,0,0> 
translate<2,15.5,2>}  

// Formacion de la arquitectura #8
union{
union{
object{Pillar translate<-1,0,-1>}
object{Pillar translate< 1,0,-1>}
object{Pillar translate<-1,0, 1>}
object{Pillar translate< 1,0, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5, 1>}
object{Arch rotate<0, 0,0> translate< 0,1.5,-1>}
object{Arch rotate<0,90,0> translate< 1,1.5, 0>}
object{Arch rotate<0,90,0> translate<-1,1.5, 0>}  
translate<0,0.45,0>}

 
scale <1,1,1> 
rotate<1,0,0>
translate<2,18.1,2>}  
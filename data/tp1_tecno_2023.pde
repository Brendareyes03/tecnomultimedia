int marcaEnElTiempo;
int estado;
boolean estoyDentroDelRect = true;
float x, y, ancho, alto;
color bg = color(0);
PImage milo01, milo02, milo03, milo04, milo05, milo06 ;

void setup() {
  size(640, 480 );
  estado = 0;
  milo01= loadImage ("milo01.png");
  milo02= loadImage ("milo02.png");
  milo03= loadImage ("milo03.png");
  milo04= loadImage ("milo04.png");
  milo05= loadImage ("milo05.png");
}


void draw() {
  int diferenciaTemporal = millis() - marcaEnElTiempo;
//pantalla 1
  if ( estado == 0 ) {  //ESTADO
    background( 133, 226, 31 ); //verde
    image (milo01, 10, 100, 300, 300);
    textSize (55);
    fill(0);
    text( "LES PRESENTO A MILO", 20, 50);
    textSize(30);
    String s = "El perrito más tierno, bueno, travieso y compañero.";
    fill(0);
    text(s, 400, 100, 200, 400);  // Text wraps 

    if ( diferenciaTemporal >= 8000 ) {  //8 segundos  //EVENTO
      estado = 1;
      marcaEnElTiempo = millis();
    }
    
// pantalla 2
  } else if (estado == 1 ) {
    background(255, 154, 0 );  //naranja
    image(milo02, 300, 100, 300, 300);
    textSize(20);
    String s = "A Milo lo encontramos en la ruta 36 solito y tenia apenas unas semanas. Cuando nos vio corrió hacia nosotros asi que no dudamos en adoptarlo.";
    fill(0);
    text(s, 20, 100, 200, 400);  // Text wraps 

    if ( diferenciaTemporal >= 8*1000 ) {  //8 segundos
      estado = 2;
      marcaEnElTiempo = millis();
    }
    
//pantalla 3
  } else if (estado == 2 ) {
    background(247, 95, 28 );  //rojizo
    image(milo03, 300, 100, 300, 300);
    textSize(20);
    String s = "Milo es super compañero, ama los mimos en sus orejas y sobre todo dormir en el rayito de sol.";
    fill(0);
    text(s, 20, 100, 200, 400);  // Text wraps 

    if ( diferenciaTemporal >= 8*1000 ) {  //8 segundos
      estado = 3;
      marcaEnElTiempo = millis();
    }
    
//pantalla 4
  } else if (estado == 3 ) {
    background(255);  //BLANCO
    image(milo04, 300, 100, 300, 300);
    textSize(20);
    String s = "No sabemos bien su fecha de nacimiento pero el 7 de Mayo festejamos juntos! Es parte de la familia hace 6 años";
    fill(0);
    text(s, 20, 100, 200, 400);  // Text wraps 

    if ( diferenciaTemporal >= 8*1000 ) {  //8 segundos
      estado = 4;
      marcaEnElTiempo = millis();
    }
    
//pantalla 5
  } else if (estado == 4 ) {
    background(136, 30, 228 );  //violeta
    image(milo05, 300, 100, 300, 300);
    textSize(20);
    String s = "Milo ama el agua pero no bañarse. Le encanta ir a la Laguna de Chascomus y correr ahí.Termina siempre muy cansado pero feliz:).";
    fill(255);
    text(s, 20, 100, 200, 400);  // Text wraps 
    
    if ( diferenciaTemporal >= 8*1000 ) {  //8 segundos
      estado = 5;
      marcaEnElTiempo = millis();
    }
  }
}

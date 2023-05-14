int marcaEnElTiempo;
int estado;
boolean estoyDentroDelRect = true;
float x, y, ancho, alto, posX, posY;
PImage milo01, milo02, milo03, milo04, milo05, milo06, megusta ;
PFont titulo, fuente;

void setup() {
  size(640, 480 );
  estado = 0;
  x=250;
  y=350;
  ancho=100;
  alto=100;
  posX=0;
  posY=0;

  titulo = loadFont ("titulo.vlw");
  fuente = loadFont ("fuente.vlw");
  milo01= loadImage ("milo01.png");
  milo02= loadImage ("milo02.png");
  milo03= loadImage ("milo03.png");
  milo04= loadImage ("milo04.png");
  milo05= loadImage ("milo05.png");
  milo06= loadImage("milo06.png");
  megusta = loadImage ("megusta.png");
}


void draw() {
  int diferenciaTemporal = millis() - marcaEnElTiempo;
  //pantalla 1
  if ( estado == 0 ) {  //ESTADO
    background( 133, 226, 31 ); //verde
    posX=posX + 1;
    image (milo01, 10, 100, 300, 300);
    textSize (55);
    fill(0);
    textFont(titulo);
    text( "LES PRESENTO A MILO", posX, 50);
    textFont(fuente);
    textSize(40);
    String s = "El perrito más tierno, bueno, travieso y compañero.";
    fill(0);
    text(s, 350, 150, 300, 400);  // Text wraps 

    if ( diferenciaTemporal >= 8000 ) {  //8 segundos  //EVENTO
      estado = 1;
      marcaEnElTiempo = millis();
    }

    // pantalla 2
  } else if (estado == 1 ) {
    background(255, 154, 0 );  //naranja
    image(milo02, 300, posY, 300, 300);
    posY=posY + 1;
    textSize(40);
    String s = "A Milo lo encontramos en la ruta 36 solito y tenia apenas unas semanas. Cuando nos vio corrió hacia nosotros asi que no dudamos en adoptarlo.";
    fill(0);
    text(s, 10, 30, 300, 500);  // Text wraps 

    if ( diferenciaTemporal >= 8*1000 ) {  //8 segundos
      estado = 2;
      marcaEnElTiempo = millis();
    }

    //pantalla 3
  } else if (estado == 2 ) {
    background(247, 95, 28 );  //rojizo
    posY=posY - 1;
    image(milo03, 300, posY, 300, 300);
    textSize(35);
    String s = "Milo es super compañero, ama los mimos en sus orejas y sobre todo dormir en el rayito de sol.";
    fill(0);
    text(s, 10, 80, 200, 500);  // Text wraps 

    if ( diferenciaTemporal >= 8*1000 ) {  //8 segundos
      estado = 3;
      marcaEnElTiempo = millis();
    }

    //pantalla 4
  } else if (estado == 3 ) {
    background(255, 89, 23);  //
    image(milo04, 300, 100, 300, 300);
    textSize(30);
    String s = "No sabemos bien su fecha de nacimiento pero el 7 de Mayo festejamos juntos! Es parte de la familia hace 6 años";
    fill(0);
    text(s, 5, 100, 200, 400);  // Text wraps 


    if ( diferenciaTemporal >= 8*1000 ) {  //8 segundos
      estado = 4;
      marcaEnElTiempo = millis();
    }

    //pantalla 5
  } else if (estado == 4 ) {
    background(136, 30, 228 );  //violeta
    image(milo05, 300, 100, 300, 300);
    textSize(30);
    String s = "Milo ama el agua pero no bañarse. Le encanta ir a la Laguna de Chascomus y correr ahí.Termina siempre muy cansado pero feliz:).";
    fill(255);
    text(s, 10, 100, 200, 400);  // Text wraps 

    if ( diferenciaTemporal >= 8*1000 ) {  //8 segundos
      estado = 5;
      marcaEnElTiempo = millis();
    }
  } else if (estado == 5 ) {
    background(23, 121, 1);  //
    image(milo06, 300, 100, 300, 300);
    image(megusta, x, y, ancho, alto);
    textSize(40);
    String s = "Milo te regala esta fotito tierna. Si te gusto conocerlo, dale MG";
    fill(0);
    text(s, 20, 100, 200, 400);  // Text wraps
  }
}

void mousePressed() {
  if ( ( mouseX > x ) && ( mouseX < x+ancho ) && ( mouseY > y) && ( mouseY < y+alto) ) {
    estado=0;
  }
}

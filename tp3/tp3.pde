// Brenda Reyes 91529/2       https://youtu.be/a5jNx3YmrCc

PImage[] pantalla =  new PImage[12];
String[] texto = new String[12];
PImage[] opciones = new PImage[3];
int estado;
int t;
int opcionSeleccionada = -1;
int r=225;
int g=0;
int b=0;

void setup() {
  size( 600, 600 );
  estado = 0;
  for ( int i = 0; i < 12; i++ ) {
    pantalla[i] = loadImage( "pantalla-" + i + ".png" );
  }

  opciones[0] = loadImage("casa1.png");
  opciones[1] = loadImage("casa2.png");
  opciones[2] = loadImage("casa3.png");

  texto[0] = "Había una vez tres hermanos cerditos que vivían en el bosque. Como el malvado lobo siempre los estaba persiguiendo para comérselos, decidieron armar sus casitas para estar a salvo.";
  texto[1] = "Como no se ponían de acuerdo qué material utilizarían, cada uno se puso a pensar en el material de su propia casa";
  texto[2] = "Cuando los tres acabaron sus casas se metieron cada uno en la suya y entonces apareció por el bosque el malvado lobo.";
  texto[3] = "Se dirigió a la casa de paja y llamó a la puerta pero como el cerdito menor no le abría, el lobo empezó a soplar. Entonces la débil casa se vino abajo. El cerdito echó a correr y se refugió en la casa de su hermano del medio.";
  texto[4] = "El hermano del medio hizo su casa de madera, ya que era más rápido terminarla y no llevaba mucho esfuerzo. Pero cuando el lobo comenzó a soplar la casa de madera tambien se derrumbo y los cerditos salieron corriendo para la casa de su hermano mayor.";
  texto[5] = "La casa del mayor era de cemento. Tuvo su trabajo duro y cansador pero cuando el lobo sopló y sopló con todas sus fuerzas la casa no se movía ni siquiera un poco. El lobo estaba cada vez más hambriento y enojado.";
  texto[6] = "Pero vio que había una chimenea así que comenzó a subirla para poder entrar.";
  texto[7] = "Los cerditos lo escucharon, y para darle su merecido pensaron en cómo hacerle una trampa.";
  texto[8] = "Tiraron muchos alfileres en la chimenea y cuando el lobo cayo no paraba de gritar del dolor por tenerlos clavados en sus patas. Salió gritando de la casa y no volvió a comer cerditos.";
  texto[9] = "Llenaron la chimenea de leña y pusieron al fuego un gran caldero con agua. Así cuando el lobo cayó por la chimenea el agua estaba hirviendo y se pegó tal quemazo que salió gritando de la casa y no volvió a comer cerditos.";
  texto[10] ="Buscaron papeles, paja, ramas y leña para encender la chimenea lo mas rápido posible. Cuando el lobo se tiro se pegó tal quemazo que salió gritando de la casa y no volvió a comer cerditos.";
  texto[11] ="Los 3 cerditos ahora están a salvo y tranquilos porque el lobo feroz aprendió la lección. ";
}

void draw () {
  if ( estado == 0 ) { //pantalla 1 
    miTextoDeEstado (15, 0, estado);
    text("apretar flecha derecha del teclado para avanzar", 300, 590);
  }
  if ( estado == 1 ) { //pantalla 2 
    miTextoDeEstado(15, 1, estado);
    textSize(12);
    text("La casa del menor (1) La casa de el del medio (2)  y la casa del mayor (3)", 35, 100, 500, 600);

    fill(0, random(255), 0); //deco de botones
    rect(150, 300, 50, 50);
    rect(430, 200, 50, 50);
    rect(200, 500, 50, 50);
    fill(255);

    textSize(30);//texto botones
    text("1", 175, 335);
    text("2", 455, 235);
    text("3", 225, 535);

    if (opcionSeleccionada != -1) {
      image(opciones[opcionSeleccionada], 200, 200, 200, 200);
    }
  }
  if ( estado == 2 ) { //pantalla 3 
    miTextoDeEstado (15, 2, estado);
  }
  if ( estado == 3 ) { //pantalla 4 
    miTextoDeEstado (15, 3, estado);
  }
  if ( estado == 4 ) { //pantalla 5 
    miTextoDeEstado (15, 4, estado);
  }
  if ( estado == 5 ) { //pantalla 6 
    miTextoDeEstado (15, 5, estado);
  }

  if ( estado == 6 ) { //pantalla 7 
    miTextoDeEstado (15, 6, estado);
  }
  if ( estado == 7 ) { //pantalla 8 
    miTextoDeEstado (15, 7, estado);
    fill(88, 3, 250);
    text(" (Al apretar los botones podes elegir el final del Lobo Feroz)", 35, 100, 500, 600);
    // if (ideas != -1) {
    //  image(idea[ideas], 200, 200, 200, 200);
    //  }
    fill(0, random(255), 0); //deco de botones
    rect(150, 300, 50, 50);
    rect(430, 200, 50, 50);
    rect(200, 500, 50, 50);
    fill(255);

    textSize(30);//texto botones
    text("1", 175, 335);
    text("2", 455, 235);
    text("3", 225, 535);
  }
  if (estado == 8) { //PANTALLA FINAL pantalla 9
    miTextoDeEstado (25, 11, estado);
    textSize(35);
    rect(200, 480, 150, 100);
    fill(255);
    textSize(20);
    textAlign(CENTER);
    text("Apretar letra C para ir a Creditos", 200, 480, 150, 100);
  }
  if (estado == 12) { //CREDITOS pantalla 10
    for (int i=0; i<= height; i++) {
      for (int c=0; c< height; c++) {
        stroke(r, i, b);
        line(0, i, width, i);
      }
    }
    fill(0);
    textSize(50);
    textAlign(CENTER);
    text( "Brenda Reyes Los 3 Cerditos. Autor Anonimo", 100, 200, 400, 500 );
    rect(200, 480, 150, 100);
    fill(255);
    textSize(20);
    textAlign(CENTER);
    text("Apretar letra R para ir al INICIO", 200, 480, 150, 100);
  }

  if ( estado == 9) { //pantalla 11
    miTextoDeEstado (15, 9, estado);
    textAlign(LEFT);
    fill(0, 255, 0);
    text("(APRETAR LETRA B PARA AVANZAR)", 200, 150);
  }
  if ( estado == 10) { //pantalla 12
    miTextoDeEstado (15, 10, estado);
    textAlign(LEFT);
    fill(0, 255, 0);
    text("(APRETAR LETRA B PARA AVANZAR)", 200, 150);
  }
  if ( estado == 11) { //pantalla 13
    miTextoDeEstado (15, 8, estado);
    textAlign(LEFT);
    fill(0, 255, 0);
    text("(APRETAR LETRA B PARA AVANZAR)", 200, 150);
  }
}

//FUNCIONES
boolean mouseColisiona (int Xmax, int Xmin, int Ymax, int Ymin) {
  if (mouseX < Xmax && mouseX > Xmin && mouseY < Ymax && mouseY > Ymin) { 
    return true;
  } else { 
    return false;
  }
}

void miTextoDeEstado( int t, int e, int estado) { 
  image(pantalla[estado], 0, 0, 600, 600);//con parametros sin return
  textSize( t );
  textAlign( CENTER );
  fill( 0 );
  text( texto[e], 35, 20, 500, 600 );
}

void mousePressed() {  //aca los botones
  if (estado == 1) { //
    if (mouseColisiona (300, 100, 400, 200)) {
      opcionSeleccionada = 0;
    } else if (mouseColisiona (500, 300, 400, 200)) {
      opcionSeleccionada = 1;
    } else if (mouseColisiona (300, 100, 600, 400)) {
      opcionSeleccionada = 2;
    }
  }
  if (estado == 7) { //
    if (mouseColisiona (300, 100, 400, 200)) {
      estado = 9;
    } else if (mouseColisiona (500, 300, 400, 200)) {
      estado = 10;
    } else if (mouseColisiona (300, 100, 400, 600)) {
      estado = 11;
    }
  }

  if (estado == 8) { //
    if (mouseColisiona (400, 300, 600, 400)) {
      estado = 9;
    }
  }
}

void keyPressed() { //las teclas y cambio de estado
  if (keyCode == RIGHT) {
    if ( estado != 7) {
      estado++; // Cambia a la siguiente pantalla al presionar la flecha derecha, excepto en los estados 1 y 7
    }
  }

  if ((estado == 9 || estado == 10 || estado == 11) && (key == 'b' || key == 'B')) {
    estado = 8;
  }

  if (estado == 8 ) { //
    if (key == 'C' || key=='c' ) {
      estado=12;
    }
  }
  if (estado ==12 ) { //
    if (key == 'r' || key=='R' ) {
      estado=0;
    }
  }
}

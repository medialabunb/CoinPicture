int now;
boolean image=false;
PImage img;
String lines[];


void setup() {
  size(1024,768);
  background(0);
  //Adiciona a imagem ao programa, esta deve estar na pasta data
  int n = (int) random(9,26); 
  String m =  n + ".jpg";
  img = loadImage(m);

}

void draw(){ 
  lines = loadStrings("../status.txt");
  
  if(lines[0].equals("go")){ 
    image=true;
    now = millis();
  }
  
  
  if(image){ 
    image(img, 0, 0); 
  }
  
  if(millis() > now+1000&&image){
    image =false;
    background(0); 
  }
   
  
}

void keyPressed() {
  if (key == 'm') {
    image = true;
    now = millis();
  }
}
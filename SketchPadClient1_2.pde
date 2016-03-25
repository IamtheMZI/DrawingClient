import processing.net.*;

Client cl;
String lines[];
int previous = 0;
int current = 0;
String string = "";
color c = color(255,80,80);
String[] co_ord;
int x=0, y=0, r=0, g=0, b=0;
void setup(){
  size(600,600);
  background(255);
  lines = loadStrings("http://people.ucsc.edu/~milahee/Data.txt");
  //lines = loadStrings("C:\\Users\\UCSC_UAV\\Documents\\Processing\\workspace\\SketchPadServer\\Data.txt");
  if(lines.length >= 1){
    for(int inc=0; inc < lines.length; inc++){
    co_ord = split(lines[inc],' ');
    x = int(co_ord[0]);
    y = int(co_ord[1]);
    noStroke();
    fill(255,0,0);
    ellipse(x,y,10,10);
    noFill();
    }
  }
}
void draw(){
  //lines = loadStrings("http://people.ucsc.edu/~milahee/Data.txt");
  //lines = loadStrings("C:\\Users\\UCSC_UAV\\Documents\\Processing\\workspace\\SketchPadServer\\Data.txt");
  lines = loadStrings("http://iamthemzi.net16.net/tst/Data.html");
 
    co_ord = split(lines[0],' ');
    x = int(co_ord[0]);
    y = int(co_ord[1]);
    noStroke();
    fill(255,0,0);
    ellipse(x,y,10,10);
    noFill();
  }
  
  
println("there are " + lines.length + " lines");
for (int i = 0 ; i < lines.length; i++) {
  println(lines[i]);
}
}
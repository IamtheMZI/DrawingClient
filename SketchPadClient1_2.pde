import processing.net.*;

Client cl;
String lines[];
int previous = 0;
int current = 0;
String string = "";
color c = color(255,80,80);
String[] co_ord;
int x=0, y=0, p=0, q=0, r=0, g=0, b=0, stroke=1;
void setup(){
  size(600,600);
  background(255);
  //lines = loadStrings("http://people.ucsc.edu/~milahee/Data.txt");
}
void draw(){
    lines = loadStrings("C:\\Users\\UCSC_UAV\\Documents\\Processing\\workspace\\SketchPadServer\\Data.txt");
  if(lines.length >= 1){
    for(int inc=0; inc < lines.length; inc++){
    co_ord = split(lines[inc],' ');
    if(co_ord.length == 8){
        stroke(255,0,255);
        x = int(co_ord[0]);
        y = int(co_ord[1]);
        p = int(co_ord[2]);
        q = int(co_ord[3]);
        r = int(co_ord[4]);
        g = int(co_ord[5]);
        b = int(co_ord[6]);
        stroke = int(co_ord[7]);
        strokeWeight(stroke);
        stroke(r,g,b);
        line(x,y,p,q);
    }
    }
  }
  
  
println("there are " + lines.length + " lines");
for (int i = 0 ; i < lines.length; i++) {
  println(lines[i]);
}
}
import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.net.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class SketchPadClient1_2 extends PApplet {



Client cl;
String lines[];
int previous = 0;
int current = 0;
String string = "";
int c = color(255,80,80);
String[] co_ord;
int x=0, y=0, r=0, g=0, b=0;
public void setup(){
  
  background(255);
  //lines = loadStrings("http://people.ucsc.edu/~milahee/Data.txt");
  lines = loadStrings("C:\\Users\\UCSC_UAV\\Documents\\Processing\\workspace\\SketchPadServer\\Data.txt");
  if(lines.length >= 1){
    for(int inc=0; inc < lines.length; inc++){
    co_ord = split(lines[inc],' ');
    x = PApplet.parseInt(co_ord[0]);
    y = PApplet.parseInt(co_ord[1]);
    noStroke();
    fill(255,0,0);
    ellipse(x,y,10,10);
    noFill();
    }
  }
}
public void draw(){
  //lines = loadStrings("http://people.ucsc.edu/~milahee/Data.txt");
  lines = loadStrings("C:\\Users\\UCSC_UAV\\Documents\\Processing\\workspace\\SketchPadServer\\Data.txt");
  if(lines.length >= 1){
    co_ord = split(lines[lines.length-1],' ');
    x = PApplet.parseInt(co_ord[0]);
    y = PApplet.parseInt(co_ord[1]);
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
  public void settings() {  size(600,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "SketchPadClient1_2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

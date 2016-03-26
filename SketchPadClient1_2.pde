import processing.net.*;
import java.io.*;
import java.net.*;

Client cl;
String lines[];
int previous = 0;
int current = 0;
String string = "";
color c = color(255,80,80);
String[] co_ord;
int x=0, y=0, p=0, q=0, r=0, g=0, b=0, stroke=10, stroke1= 2;
void setup(){
  //size(600,600);
  size(1280,768);//For Android
  background(255);
  //lines = loadStrings("http://people.ucsc.edu/~milahee/Data.txt");
}
void draw(){
  if(mousePressed){
     strokeWeight(stroke);
     fill(255,0,0);
     line(mouseX,mouseY,pmouseX,pmouseY);
     //str = str(mouseX)+" "+str(mouseY)+" "+str(pmouseX)+" "+str(pmouseY);
     //list=append(list,str);
     //list[0]=str;
     //saveStrings("Data.txt", list); 
     write_file();
  }  
  read_file();
//println("there are " + lines.length + " lines");
//for (int i = 0 ; i < lines.length; i++) {
//  println(lines[i]);
//}
}

void write_file(){
  try{
        URL oracle = new URL("http://192.168.0.114/index1.php?x="+mouseX+"&y="+mouseY+"&px="+pmouseX+"&py="+pmouseY+"&st="+stroke);
        BufferedReader in = new BufferedReader(
        new InputStreamReader(oracle.openStream()));
        in.close();
  } catch (Exception e){
    println(e);
  }
}

void read_file(){
 lines = loadStrings("http://192.168.0.114/Data.txt");
  //  lines = loadStrings("C:\\Users\\UCSC_UAV\\Documents\\Processing\\workspace\\SketchPadServer\\Data.txt");
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
        stroke1 = int(co_ord[7]);
        strokeWeight(stroke1);
        stroke(r,g,b);
        line(x,y,p,q);
    }
    } 
}

}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if(stroke >= 1 && stroke <=11){
  if(e == -1){
    if(stroke > 1){
        stroke--;
    }
  }else{
    if(stroke < 6){
        stroke++;
    }

  }
  }
  println(stroke);
}
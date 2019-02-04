var width = 400, height = 50;

void setup() {
    size(width, height, P3D);
    background(255, 255, 255);
}

var prob = 0.10;
var r = random(1);
var message = "Nothing";

// If our random number is less than 0.1, don something
if(r < prob) message = "Doing something";
else message = "Waiting...";

void draw() {
    fill(91, 156, 138);
    text(message, width/2-width*0.1, height/2);
}

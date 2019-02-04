var width = 400, height = 30;

void setup() {
    size(width, height);
    background(255, 255, 255);
}

var stuff = [];

// We store 1 and 3 in the array twice,
// making them more likely to be picked
stuff[0] = 1;
stuff[1] = 1;
stuff[2] = 2;
stuff[3] = 3;
stuff[4] = 3;

/*
Executing this code will produce a 40% chance to print the value 1,
a 20% chance to print 2 and a 40% chance to print 3.
*/

// Picking a random element from an array
var index = floor(random(stuff.length));
println(stuff[index]);

void draw() {
    fill(0, 0, 0);
    text(stuff[index], width/2, height/2);
}

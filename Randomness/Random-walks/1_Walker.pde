var width = 600, height = 400;

void setup() {
    // dimensions of canvas
    size(width, height);
    // background-color
    background(255, 255, 255);
}

// Constructor
var Walker = function() {
    this.x = width / 2;
    this.y = height / 2;
};

// Method to show in display
Walker.prototype.display = function() {
    stroke(0, 0, 0);
    point(this.x, this.y);
};

/* Method to walk:
    Randomly move up, down, left, right, or stay in one place.
*/
Walker.prototype.walk = function() {
    var choice = floor(random(4));
    if(choice === 0) this.x++; // right
    else if(choice === 1) this.x--; // left
    else if(choice === 2) this.y++; // down
    else this.y--; // up
}

// Instance
var w = new Walker();

// Infinite loop
void draw() {
    w.walk();
    w.display();
};

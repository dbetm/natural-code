var width = 600, height = 400;

void setup() {
    size(width, height);
    background(0, 0, 0);
}

// Begin: Class

// Constructor
var Walker = function() {
    this.x = width / 2;
    this.y = height / 2;
};

Walker.prototype.display = function() {
    stroke(255, 255, 255);
    point(this.x, this.y);
};

/* Randomly move up, down, left, right, or
   stay in one place */
Walker.prototype.walk = function() {
    var ran = random(1);
    // It will be most likely to move to the right
    if(ran < 0.4) this.x++;
    else if(ran < 0.6) this.x--;
    else if(ran < 0.8) this.y++;
    else this.y--;
};

// End: Class

var w = new Walker();

// Infintie loop
void draw() {
    w.walk();
    w.display();
}

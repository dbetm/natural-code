var width = 400, height = 600;

void setup() {
    size(width, height);
    background(255, 255, 255);
}

var Walker = function() {
    this.x = width / 2;
    this.y = height / 2;
};

Walker.prototype.display = function() {
    noStroke();
    fill(145, 203, 63);
    ellipse(this.x, this.y, 4, 1);
};

Walker.prototype.walk = function() {
    var choice = floor(random(4));

    if(choice == 0) this.x += 2;        // right
    else if(choice == 1) this.x -= 2;   // left
    else if(choice == 2) this.y += 2;   // down
    else this.y -= 2;                   // up
};

var w = new Walker();

void draw() {
    w.walk();
    w.display();
}

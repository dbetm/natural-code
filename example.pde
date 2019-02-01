int sizeSquare;

void setup() {
    size(200, 200);
    tamano = 1;
}

void draw() {
    background(193, 58, 91);
    rect(0, 0, sizeSquare, sizeSquare);
    sizeSquare += 1;
    sizeSquare = sizeSquare % width;
}

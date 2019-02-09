 /* @pjs transparent="true"; */
var width = 600, height = 400;

void setup() {
    size(width, height);
    background(255, 255, 255);
}

void draw() {
    /* The nextGaussian() function returns a normal distribution of
    random numbers with the following parameters: A mean of zero and a
    standard deviation of one
    */
    var num = randomGaussian();
    var standarDeviation = 90;
    var mean = width/2;

    // Multiply by the standard deviation and add the mean.
    var x = standarDeviation * num + mean;

    noStroke();
    fill(0, 0, 0, 15);
    ellipse(x, height/2 + (floor(random(60))), 15, 15);
    // text
    fill(255,255,255);
    textSize(34);
    text("UPIIZ", width/2-30, height/2+45);
}

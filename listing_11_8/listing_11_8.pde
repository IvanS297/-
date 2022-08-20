import processing.serial.*;
Serial port; // Создание объекта класса Serial
float val; // Данные, полученные из последовательного порта
int x;
float easing = 0.05;
float easedVal;
void setup() {
  size(440, 440);
  frameRate(30);
  smooth();
  String arduinoPort = Serial.list()[1];
  port = new Serial(this, arduinoPort, 9600);
  background(0);
}
void draw() {
  if ( port.available() > 0) { // Если данные доступны,
    val = port.read(); // они считываются в val
    val = map(val, 0, 255, 0, height); // Преобразование величины
  }
}

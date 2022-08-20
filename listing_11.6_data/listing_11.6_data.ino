// Примечание: это код для Arduino, а не для Processing
int sensorPin = 0; // Выбор входного вывода
int valid_data = 0;
void setup() {
  Serial.begin(9600); // Запуск последовательного порта
}
void loop() {
  valid_data = analogRead(sensorPin) / 4; // Чтение данных с сенсора
  Serial.println(valid_data);
  delay(100); // Задержка 100 мс
}

class Car {
  // String name;
  // String engine_power;
  // String colour;
  // String price;
  // Car(this.name, this.engine_power, this.colour, this.price);

  static car_return(String name, String engine_power, String colour, String price) {
    return 'name: ${name}\nengine power: ${engine_power}\ncolour: ${colour}\nprice: ${price}\n';
  }
}

void main() {
  print(Car.car_return('Mercedes W211', '5.5 kompressor', 'silver', '17.500\$'));
  // var Mercedes = Car('Mercedes W211', '5.5 kompressor', 'silver', '17.500\$');
  // var Toyota = Car('Toyota Highlander', '3.3', 'white', '12.500\$');
  // print(Mercedes.car_return());
  // print(Toyota.car_return());
}

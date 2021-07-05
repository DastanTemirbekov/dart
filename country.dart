class Country {
  // String name;
  // String climate;
  // Country(this.name, this.climate);
  
  static country_return(  String name, String climate) {
    return ('name: ${name}\tclimate: ${climate}');
  }
}

void main() {
  print(Country.country_return('Kyrgyzstan', 'continental climate'));
  // var Spain = Country('Spain', 'subtropical climate');
  // print(Kyrgyzstan.country_return());
  // print(Spain.country_return());
}

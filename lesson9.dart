main() {
  String city = "ankara";
  String letter = "a";
  int count = 0;
  List new_city = city.split("");
  new_city.forEach((item) {
    if (item == letter) count++;
  });
  print("$count буквы $letter");

  // List array = [2,4,6,8,9];
  // List array2 =[];
  // array.forEach((item) {
  //   print(array.indexOf(item));
  // });
  // array.map((e) => print(e));

// print(array.map((item) {
//   if(item<6){
//     array2.add(item);
//   }
// }));
// }

  //   array.forEach((item) {
  //   if (item%2==0)
  //   print(item);
  // });

// print(array.reduce((int, next) => int+next));
}

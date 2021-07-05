import 'dart:io';
void main(){
  // stdout.write('введите первое число: ');
  // int a = int.parse(stdin.readLineSync());
  // stdout.write('введите второе число: ');
  // int b = int.parse(stdin.readLineSync());
  // stdout.write('введите знак: ');
  // String znak = stdin.readLineSync();
  // switch (znak){
  //   case '+': print(a+b); break;
  //   case '-': print(a-b); break;
  //   case '*': print(a*b); break;
  //   case '/': print(a/b); 
  //   if(b==0){print('на ноль делить нельзя');} break;
  // }
  // 
stdout.write('введите пример: ');
String primer = stdin.readLineSync();
List reshenie = primer.split('+ || - || * || /');
print(reshenie);
}
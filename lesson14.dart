class ClassName{
ClassName(){}
}
void main(){
  Student student = Student('aaa', 234, 'aa');
}

class Student {
  Student(String name, int age, String sound){
    print('name: $name\nage: $age\nsound: $sound');
  }
}
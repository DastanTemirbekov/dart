aaa() async{
  return 'name';
}

 void main() async{
  print(await aaa());
}
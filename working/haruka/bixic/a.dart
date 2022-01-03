import 'dart:mirrors';
void main(List<String> args){
  String v = "${args[0]}\r";
  int a = 20;
  print(v);
  print((v*(int.parse(args[1]))).split("\r").map((String lem)=>lem.shuffle()).toList().join("\n"));
}
extension on String {
  String shuffle()=>(this.split('')..shuffle()).join();
}
/*
extension on String {
  String shuffle()=>(this.split('')..shuffle()).join();
  T parse(Type t){
    T t = Activator.fromTypeType(t).staticInvoke("parse",this);
findStaticAndInvoke(t, "parse");;
  }
  t.parse(this);
}
class Activator{
  Activator.fromTypeType(Type t){}
  T staticInvoke(){}
}
*/
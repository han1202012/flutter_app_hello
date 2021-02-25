
/// 可脱离 Flutter 环境独立执行的函数
void main(){
  print("main");

  Student student;
  /// 1. 安全调用 : 不确定对象是否为空 , 通过 ?. 的方式调用
  /// ( 类似于 Kotlin 的可空类型调用 )
  /// ? 的作用是先判定是否为空 , 如果为空 , 就终止调用
  print("打印 student 名字 : ${student?.name}");

  /// 2. 设置默认值
  /// 使用 ?? 可以为某个空值设置一个默认值
  /// 这里如果 student?.name 为空 , 则默认值是 "Tom"
  print("打印 student 名字 : ${student?.name??"Tom"}");

}

class Student{
  String name;
  int age;
  Student(this.name, this.age);
}
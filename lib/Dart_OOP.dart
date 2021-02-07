import 'package:flutter/material.dart';

class Dart_OOP extends StatefulWidget {
  @override
  _Dart_OOPState createState() => _Dart_OOPState();
}

class _Dart_OOPState extends State<Dart_OOP> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Dart 面向对象'));
  }
}

// 定义 Dart 类
// 与 Java 语言类似, 所有的类默认继承 Object 类
class Person{

  // 定义变量
  String name;
  int age;

  // 标准构造方法, 下面的方法是常用的构造方法写法
  Person(this.name, this.age);

  // 重写父类的方法
  @override
  String toString() {
    return "$name : $age";
  }
}

// 继承
class Student extends Person{

  // 私有变量, 以下划线开始的变量是私有变量
  int _grade;

  String school;
  String city;
  String address;

  // 父类构造函数调用 : 如果父类有非空参数的构造函数, 子类必须实现相同参数的构造函数
  // 如果该类有父类 , 那么先调用父类的构造方法 , 完成父类的初始化
  // 然后才能完成自己的初始化
  //
  // this.school 指定自有参数
  // {this.school} 是可选参数, 可选参数必须在构造函数参数列表中最后一个
  //
  // 默认参数 : 可选参数中如果用户不初始化该可选参数 , 那么为其指定一个默认值
  // {this.city = "北京"} 指定了如果用户不初始化 city 变量, 那么为其初始化 "北京" 字符串值
  //
  // 初始化列表 : 冒号后面的内容就是初始化列表
  //            父类构造器也是初始化列表
  //            除了父类构造方法之外 , 还可以在子类构造方法体之前初始化示例变量
  //            不同的初始化实例变量之间使用逗号隔开
  //
  // 父类构造方法 : 如果父类没有默认构造方法 (无参构造方法) ,
  //              必须在初始化列表中调用父类构造函数 , super(name, age) ;
  //
  // 构造方法方法体 : 可以省略 ;
  Student(this._grade, String name, int age,
         {this.school, this.city = "北京"})
         : address = "北京市海淀区" ,
         super(name, age);


  // 命名构造方法
  // 定义格式 : 类名.方法名()
  // 父类构造函数 : 如果父类没有默认构造函数, 子类必须调用父类的构造函数
  Student.cover(Student student):super(student.name, student.age);

  // 命名构造方法也可以有方法体
  Student.init(Student student):super(student.name, student.age){
    print("命名构造方法 : name : ${student.name}, age : ${student.age}");
  }

}
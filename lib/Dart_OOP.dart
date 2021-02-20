import 'package:flutter/material.dart';

class Dart_OOP extends StatefulWidget {
  @override
  _Dart_OOPState createState() => _Dart_OOPState();
}

class _Dart_OOPState extends State<Dart_OOP> {
  @override
  Widget build(BuildContext context) {

    constructorDemo();

    return Container(child: Text('Dart 面向对象'));
  }

  constructorDemo(){
    Student student1 = Student(6, "Tom", 18);
    Student student2 = Student(6, "Tom", 18, );


    Student2 stu1 = Student2();
    print("stu1 创建完成 : ${stu1}");
    Student2 stu2 = Student2();
    print("stu2 创建完成 : ${stu2}");

    print("对比 stu1 与 stu2 : stu1 == stu2 : ${stu1 == stu2}");
  }
}

// 定义 Dart 类
// 与 Java 语言类似, 所有的类默认继承 Object 类
class Person{

  // 定义变量
  String name;
  int age;

  // 私有字段
  int _achievement;

  // 标准构造方法, 下面的方法是常用的构造方法写法
  Person(this.name, this.age);

  // get 方法 : 设置私有字段 achievement 的 get 方法,
  //            让外界可以访问 Person 对象的 _achievement 私有成员
  int get achievement => _achievement;

  // set 方法 : 设置私有字段 achievement 的 set 方法,
  //            让外界可以设置 Person 对象的 _achievement 私有成员值
  set achievement(int achievement){
    _achievement = achievement;
  }

  // 静态方法 , 通过类名调用
  static log(){
    print("log");
  }

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

  // 命名工厂构造方法 : factory 类名.方法名
  // 命名工厂构造方法可以有返回值
  // 如果类中有 final 修饰的成员 , 在命名构造方法中必须对其进行初始化
  //    但是在命名工厂构造方法中 , 可以不初始化 final 类型成员
  // 命名工厂构造方法可以有返回值
  factory Student.init2(){
    return Student(1, "Tom", 18);
  }

}

// 使用工厂构造方法实现单例模式
// 工厂构造方法就是单例模式
// 工厂构造方法作用是返回之前已经创建的对象 , 之前创建对象时需要缓存下来 ;
class Student2{
  // 静态成员
  static Student2 instace;

  // 工厂构造方法
  factory Student2(){
    if(instace == null){
      // 调用命名构造方法创建 Student2 对象
      instace = Student2.init();
    }
    // 返回单例对象
    return instace;
  }

  // 命名构造方法
  Student2.init();
}


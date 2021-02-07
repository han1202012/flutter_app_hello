import 'package:flutter/material.dart';

class DartType extends StatefulWidget {
  @override
  _DartTypeState createState() => _DartTypeState();
}

class _DartTypeState extends State<DartType> {
  @override
  Widget build(BuildContext context) {

    dynamicDemo();

    varDemo();

    objectDemo();

    return Container(child: Text('dynamic var Object 类型'));
  }

  dynamicDemo(){
    dynamic d = "CSDN";

    // 打印 dynamic 变量的运行时类型
    print(d.runtimeType);
    // 打印 dynamic 变量值
    print(d);

    // 调用 dynamic 变量的方法, 静态编译时无法检查其中的错误, 运行时会报错
    //d.getName();

    // 为 dynamic 变量赋值 int 数据
    d = 666;
    // 打印 dynamic 变量的运行时类型
    print(d.runtimeType);
    // 打印 dynamic 变量值
    print(d);
  }

  varDemo(){
    // 声明 var 变量
    var d = "CSDN";

    // 打印 var 变量的运行时类型
    print(d.runtimeType);
    // 打印 var 变量值
    print(d);

    // 将已经被自动推测为 String 类型的 d 变量赋值一个 int 类型值
    // 此时就会在编译时报错
    //d = 666;

  }

  objectDemo(){
    // 定义 Object 类型变量
    Object d = "CSDN";

    // 调用 Object 对象的方法
    // 打印 var 变量的运行时类型
    print(d.runtimeType);
    // 打印 var 变量值
    print(d);

    // 调用 Object 不存在的方法就会报错
    //d.getName()
  }


}

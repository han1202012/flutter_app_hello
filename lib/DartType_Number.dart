import 'package:flutter/material.dart';

class DartType_Number extends StatefulWidget {
  @override
  _DartType_NumberState createState() => _DartType_NumberState();
}

class _DartType_NumberState extends State<DartType_Number> {
  @override
  Widget build(BuildContext context) {

    /*
        num 数字类型 是数字类型的父
            num 的两个子类 : ① int , ② double

        num 类型变量既可以赋值 整数类型 , 又可以赋值 浮点类型

     */

    num num_1 = 1.0;  //接受浮点类型
    num num_2 = 1;    //接受整型

    int int_1 = -1;    //int 类型只能接受整数类型

    double double_1 = 3.14; //double 类型只能接受浮点类型

    //打印上面的四个值
    print("num_1 : $num_1 num_2 : $num_2 int_1 : $int_1 double_1 : $double_1");
    

    /*
        数字类型常用 API

        1 . 求绝对值 : 调用 num 的 abs() 方法 , 求该 num 类型的绝对值

        2 . 数字类型转换 : 调用 num 的
                          toInt() ,
                          toDouble() ,
                          toString() 等方法可以实现数字类型转换
     */

    print("$int_1 绝对值 : ${int_1.abs()}");
    print("$int_1 转为 double : ${int_1.toDouble()}");
    print("$double_1 转为 int : ${double_1.toInt()}");


    return Container(child: Text('数字类型'));
  }
}


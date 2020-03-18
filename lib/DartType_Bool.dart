import 'package:flutter/material.dart';

class DartType_Bool extends StatefulWidget {
  @override
  _DartType_BoolState createState() => _DartType_BoolState();
}

class _DartType_BoolState extends State<DartType_Bool> {
  @override
  Widget build(BuildContext context) {

    //调用 Demo 示例方法
    _boolDemo();

    return Container(child: Text('布尔数据类型'));
  }

  /**
   * 布尔类型代码示例
   */
  _boolDemo(){


    // I . 布尔类型定义


    bool bool_1 = true;
    bool bool_0 = false;

    //打印结果 : bool_1 : true , bool_0 : false
    print("bool_1 : $bool_1 , bool_0 : $bool_0");


    // II . 逻辑运算


    // 1 . 逻辑或运算
    bool bool_2 = bool_0 || bool_1;

    // 2 . 逻辑与运算
    bool bool_3 = bool_0 && bool_1;

    //打印结果 : bool_2 : true , bool_3 : false
    print("bool_2 : $bool_2 , bool_3 : $bool_3");


  }

}

import 'package:flutter/material.dart';

class DartType_String extends StatefulWidget {
  @override
  _DartType_StringState createState() => _DartType_StringState();
}

class _DartType_StringState extends State<DartType_String> {
  @override
  Widget build(BuildContext context) {

    stringDemo();

    return Container(child: Text('字符串类型'));
  }

  //字符串类型 示例
  stringDemo(){

    // I . 字符串定义

    //字符串定义 : 既可以使用单引号 , 也可以使用双引号
    String str_1 = '单引号定义字符串';
    String str_2 = "双引号定义字符串";

    // II . 字符串拼接

    // 1 . 字符串拼接 1 : $ 字符串拼接 : 在单引号或双引号字符串中 , 使用 $变量名称 的方式 ,
    //      可以将变量名称代表的内容拼接到字符串中
    String str_3 = "str_1 : $str_1 str_2 : $str_2";

    //使用 $ 拼接字符串 : str_1 : 单引号定义字符串 str_2 : 双引号定义字符串
    print("使用 \$ 拼接字符串 : " + str_3);


    // 2 . 字符串拼接 2 : 使用 "+" 运算符 , 可以拼接字符串 , 该种方式与 Java 类似
    String str_4 = "str_1 : " + str_1 + " , str_2 : " + str_2;

    // 打印结果 : 使用 + 拼接字符串 : str_1 : 单引号定义字符串 , str_2 : 双引号定义字符串
    print("使用 + 拼接字符串 : " + str_4);

    // 3 . 字符串拼接 3 : 使用 ${表达式} , 可以将表达式内容拼接到字符串中
    String add = "1 + 2 = ${1 + 2}";

    // 打印结果 : 使用 ${} 拼接字符串 : 1 + 2 = 3
    print("使用 \${} 拼接字符串 : " + add);


    // III . 常用的字符串 API

    // 1 . 字符串截取
    //  需要指定开始位置(包含) 和结束位置(不包含) , 从 0 开始计数
    //  如果只有开始位置 , 那么就会直接截取到最后
    String str_substring = str_1.substring(3, 6);

    //打印结果 : 字符串截取 : 定义字
    print("字符串截取 : " + str_substring);


    // 2 . 获取字符串索引
    //  参数中传入子字符串 , 或者正则表达式
    int index = str_1.indexOf("定");

    //打印结果 : index : 3
    print("index : $index");

  }

}

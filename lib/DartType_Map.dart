import 'package:flutter/material.dart';

class DartType_Map extends StatefulWidget {
  @override
  _DartType_MapState createState() => _DartType_MapState();
}

class _DartType_MapState extends State<DartType_Map> {
  @override
  Widget build(BuildContext context) {

    mapDemo();

    return Container(child: Text('Map 数据类型'));
  }

  /**
   * Map 示例
   */
  mapDemo(){


    // I . 定义 Map 集合并初始化

    // 通过 {} 初始化 Map 数据, 每个元素形式为 Key : Value
    // 键( Key ) 与 值 ( Value ) 之间使用冒号 " : " 分割
    // 元素与元素之间使用逗号 " , " 分割
    Map student = {1 : "Tom", 2 : "Jerry", 3 : "Trump"};

    // 打印 Map 集合
    print(student);


    // II . 先创建空的 Map 集合 , 然后再进行初始化操作
    Map president = {};

    // 为 Map 集合添加元素
    president[1] = "Bush";
    president[2] = "Obama";
    president[3] = "Trump";

    // 打印 Map 集合
    print(president);


    // III . Map 集合遍历

    // 1 . 使用 forEach 进行遍历
    president.forEach( (key, value){
      print("forEach 遍历 : $key : $value");
    } );


    // 2 . 通过 for 循环遍历 Map 集合
    // 调用 Map 对象的 keys 成员 , 返回一个由 键 Key 组成的数组
    for (var key in president.keys){
      print("for 循环遍历 : Key : $key , Value : ${president[key]}");
    }


    // 3 . 使用 map 方法进行遍历
    // 遍历过程中生成新的 Map 集合
    // 遍历后 , 会返回一个新的 Map 集合
    // 传入一个回调函数 , 参数是 key value , 返回值是新的 Map 集合
    Map president2 = president.map(
            (key, value){
          // 这里将 Map 集合中的 Key 和 Value 进行颠倒 , 生成一个新的 Map 集合
          return MapEntry(value, key);
        }
    );

    // 打印新的 Map 集合
    print(president2);


  }

}

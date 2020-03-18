
import 'package:flutter/material.dart';

class DartType_List extends StatefulWidget {
  @override
  _DartType_ListState createState() => _DartType_ListState();
}

class _DartType_ListState extends State<DartType_List> {
  @override
  Widget build(BuildContext context) {

    listDemo();

    return Container(child: Text('List 数据类型'));
  }


  /**
   * List 示例集合
   */
  listDemo(){


    // I . 定义集合


    //定义集合 , 并对集合初始化
    //  集合元素数据类型 : 集合元素类型是泛型 , 可以接受任何数据类型
    //  集合元素种类 : 如果没有指定泛型 , 集合中可以存放不同类型的元素
    //      如在一个未指定泛型的集合中同时存放 int , double , String , bool 类型的元素
    //  初始化添加元素 : 使用 [] 初始化集合元素
    List list = [1, 1.0, '字符串' , true];

    //使用 print 可以直接打印集合
    //打印集合 list : [1, 1.0, 字符串, true]
    print("打印集合 list : $list");


    // II . 集合泛型用法


    //如果集合声明时 , 指定了泛型 , 那么就只能存放该泛型类型的元素
    //  如 : 指定 int 泛型类型的集合 , 只能存放 int 类型的元素
    //       泛型不同的 List 集合斌量之间不能相互赋值
    //       不能将上面的 list 集合赋值给 该 list_int
    List<int> list_int = [1 , 2, 3];

    //打印集合 list1 : [1, true]
    print("打印集合 list_int : $list_int");


    // III . 初始化后添加元素


    //集合除了在初始化时添加元素外
    //  还可以调用集合的 add ( ) 和 addAll ( ) 添加元素

    // 通过 add ( ) 方法 添加单个元素
    List list1 = [];

    list1.add(1);
    list1.add(true);

    //打印集合 list1 : [1, true]
    print("打印集合 list1 : $list1");


    // 通过 addAll ( ) 方法 添加多个元素
    List list2 = [];

    list2.addAll(list);

    //打印集合 list2 : [1, 1.0, 字符串, true]
    print("打印集合 list2 : $list2");



    // IV . 集合的生成函数


    //集合的生成函数
    //  int length 参数 : 集合的长度
    //  E generator(int index) : 集合的回调函数 , 调用该函数获取集合的 index 位置的元素
    List list_generate = List.generate(3, ( index ) => index * 3);

    //打印集合 list_generate : [0, 3, 6]
    print("打印集合 list_generate : $list_generate");



    // V . 集合遍历


    // 1 . 方式 1 : 通过下标访问集合
    for(int i = 0; i < list_generate.length; i ++){

      print(list_generate[i]);

    }

    // 2 . 方式 2 : 通过 var obj in list_generate 获取集合中的元素
    for( var obj in list_generate ){

      print(obj);

    }

    // 3 . 方式 3 : For Each 循环

    list_generate.forEach( ( element ){

      print(element);

    } );








  }


}

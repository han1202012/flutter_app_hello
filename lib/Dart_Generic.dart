
import 'package:flutterapphello/Dart_OOP.dart';

/// 泛型测试类
class Generic{

  /// 该方法测试泛型类及泛型方法
  void test(){
    // 创建泛型类对象 , 泛型类型设置为 String 类型
    Cache<String> cache = Cache();
    // 调用泛型方法时 , 传入的参数必须符合对应的泛型类型
    // 泛型约束 : 泛型使用时会进行类型检查约束 , 如果设置错误的类型 , 编译时报错
    cache.setCacheItem("name", "Tom");

    // 获取缓存内容
    String value = cache.getCachedItem("name");
    print("泛型测试, 类型字符串, 获取的缓存内容为 ${value}");


    // 创建泛型类对象 , 泛型类型设置为 int 类型
    Cache<int> cache2 = Cache();
    // 调用泛型方法时 , 传入的参数必须符合对应的泛型类型
    // 泛型约束 : 泛型使用时会进行类型检查约束 , 如果设置错误的类型 , 编译时报错
    cache2.setCacheItem("age", 18);

    // 获取缓存内容
    int value2 = cache2.getCachedItem("age");
    print("泛型测试, 类型整型, 获取的缓存内容为 ${value2}");
    
    
    /// 泛型类测试
    /// 类泛型要求是 T extends Person , 泛型类型必须是 Person 的子类
    /// Student 是 Person 的子类
    Member<Student> member = Member(Student(6, "Tom", 18));
    String name = member.getName();
    print("泛型类测试, 获取的 T extends Person 泛型的 name 字段为 ${name}");

  }

}

/// 泛型作用 : 为 类 , 接口 , 方法 提供复用性 , 支持类型不确定的数据类型
///
/// 泛型类 : 提高代码复用程度
/// 该类是一个缓存类 , 缓存的数据类型是 T 泛型 , 该类型可以是任意类型
class Cache<T>{
  /// 缓存数据存储到该 Map 集合中
  Map<String, Object> _map = Map();

  /// 设置泛型缓存数据 , 该方法是泛型方法
  /// 此处将 T 类型的数据存放到 map 集合中
  void setCacheItem(String key, T value){
    _map[key] = value;
  }

  /// 取出泛型缓存数据 , 该方法是泛型方法
  T getCachedItem(String key){
    return _map[key];
  }
}

/// 泛型中的特定类型约束
/// 将泛型约束为某个类型的子类
class Member<T extends Person>{
  T _person;

  /// 构造函数中设置 T _person 成员的值
  Member(this._person);

  /// 获取 _person 的名字
  String getName(){
    return _person.name;
  }
}


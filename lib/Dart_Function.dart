class Function{

  /// 标准方法
  /// 返回值是 int 类型
  /// 函数名是 sum
  /// 参数是 int num1, int num2
  int sum(int num1, int num2){
    return num1 + num2;
  }

  /// 该方法是私有方法
  int _minus(int num1, int num2){
    return num1 - num2;
  }

  /// 匿名方法示例
  anonymousFunction(){
    var list = ['Tom', 'Jerry'];
    list.forEach(
        /// 下面的方法是匿名方法, 只有参数列表和方法体
        (i){
          print(list.indexOf(i));
        }
    );
  }

}
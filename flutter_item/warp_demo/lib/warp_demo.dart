import 'package:flutter/material.dart';

//继承动态组件
class WarpDemo extends StatefulWidget {
  @override
  _WarpDemoState createState() => _WarpDemoState();
}

class _WarpDemoState extends State<WarpDemo> {
  List<Widget> list; //声明一个list数组

  @override
  // 初始化状态，给list添加一个值，调用一个自定义的方法
  void initState() { 
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Warp流式布局'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height,
            color: Colors.grey,
            child: Wrap(
              children: list,
              spacing: 26.0,
            ),
          ),
        ),
      ),
    );
  }
Widget buildAddButton(){
  // 返回一个手势Widget，只用于显示事件
  return GestureDetector(
    onTap: (){
      if(list.length<9){
        setState(() {
          list.insert(list.length - 1, buildPhoto());
        });
      }
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.black54,
        child: Icon(Icons.add),
      ),
    ),
  );
}

Widget buildPhoto() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 80.0,
      height: 80.0,
      color: Colors.amber,
      child: Center(
        child: Text('照片'),
      ),
    ),
  );
}

}
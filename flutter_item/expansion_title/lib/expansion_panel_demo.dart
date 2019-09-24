import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {

  List<int> mlist; //组成一个int类型的数组，用来控制索引
  List<ExpansionStateBean> expansionStateList; //展开的状态列表，ExpansionStateBean是一个自定义的类

  // 构造方法调用这个类的时候自动执行
  _ExpansionPanelListDemoState(){
    mlist = new List();
    expansionStateList = new List();
    for(int i = 0; i< 10;i++){
      mlist.add(i);
      expansionStateList.add(ExpansionStateBean(i, false));
    }
  }

  // 修改展开与闭合的内部方法
  _setCurrentIndex(int index, isEpand){
    setState(() {
      expansionStateList.forEach((item){
        if(item.index == index){
          item.isOpen = !isEpand;
        }
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion panel Title'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, bol){
            _setCurrentIndex(index, bol);
          },
          children: mlist.map((index){
          return ExpansionPanel(
            headerBuilder: (context, isExpansion){
              return ListTile(
                title: Text('This Is NO.$index'),
              );
            },
            body: ListTile(
              title: Text('expansion  No.$index'),
            ),
            isExpanded: expansionStateList[index].isOpen
          );
        }).toList()
        ),
      ),
    );
  }
}

class ExpansionStateBean{
  var isOpen;
  var index;
  ExpansionStateBean(this.index,this.isOpen);
}

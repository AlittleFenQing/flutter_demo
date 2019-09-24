import 'package:flutter/material.dart';
import 'asset.dart';

class SearchBarDemo extends StatefulWidget {
  @override
  _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SearchBarDemo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context:context,delegate: searchBarDelegate());
            },
          )
        ],
      ),
    );
  }
}

class searchBarDelegate extends SearchDelegate<String>{

  // 清除Icon
  @override
   List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = "",
      )
    ];
  }
// 返回上一个页面icon
@override
  Widget buildLeading(BuildContext context){
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () => close(context, null));
  }
  // 搜索结果
  @override
  Widget buildResults(BuildContext context){
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Text(query),
      ),
    );
  }
  // 搜索关键字加黑，未搜索到的变为灰色
  @override
  Widget buildSuggestions(BuildContext context){
    final suggestionList = query.isEmpty
      ? recentSuggest
      : searchList.where((input)=>input.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: Colors.grey)
              )
            ]
          ),
        ),
      ),
    );
  }
}

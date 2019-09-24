import 'package:flutter/material.dart';

class ExpansionTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expansion title demo'),
      ),
      body:Center(
        child: ExpansionTile(
          title: Text('expansion title'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title: Text('list title'),
              subtitle: Text('subtitle'),
            )
          ],
          initiallyExpanded: true,
        ),
      )
      
    );
  }
}
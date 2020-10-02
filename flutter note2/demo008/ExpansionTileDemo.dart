import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expansion demo'),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text('点一下就有小马本'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title: Text('xiaomaben list'),
              subtitle: Text('sub xiaomaben'),
            ),
            ListTile(
              title: Text('xiaomaben list'),
              subtitle: Text('sub xiaomaben'),
            )
          ],
        ),
      )
    );
  }
}

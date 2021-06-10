import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'store/global.dart';
final globalStore = GlobalStore();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(builder: (_) {
                return Text('Tu as cliqué ${globalStore.countNumber} fois.');
              }),
              FloatingActionButton(onPressed: globalStore.increment)
            ],
          )
        )
      )
    );
  }
}


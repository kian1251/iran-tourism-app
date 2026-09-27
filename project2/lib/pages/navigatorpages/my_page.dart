import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../navigation_drawler/Navigation_drawler.dart';

class MyPage extends StatelessWidget {
  const MyPage ({super.key});

  @override
  Widget build(BuildContext context) {
return  Scaffold(appBar: AppBar(backgroundColor: Colors.grey.withOpacity(0.1),),drawer: Navigation(),
body:  const Center(child: Text("My Page")),
);
  }
}

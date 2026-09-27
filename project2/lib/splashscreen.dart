import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:project/gen/assets.gen.dart';
//import 'package:project/main.dart';
//import 'package:project/pages/welcome_page.dart';
import 'package:project2/pages/welcome_page.dart';

import 'gen/assets.gen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
       return  WelcomePage();
      }));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(child: Assets.background.rectangle.image(fit: BoxFit.cover)),
        Center(child: Assets.icons.splashicon.image()),
      ],),
    );
  }
}

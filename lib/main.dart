import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jova_v2/feature/presentation/color/color.dart';
import 'feature/presentation/pages/home_page.dart';

void main(){
  runApp(Main());
}


class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.whitecolor,
      ),
      home: HomePage(),
    );
  }
}

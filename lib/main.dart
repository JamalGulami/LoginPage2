import 'package:flutter/material.dart';
import 'login.dart';


void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login_page(),
    );
  }
}


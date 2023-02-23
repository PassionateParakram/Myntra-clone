import 'package:flutter/material.dart';

import 'screen/Home_page.dart';
void main(){
  runApp(const Catlog());
}
class Catlog  extends StatelessWidget {
  const Catlog ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Homepage(),debugShowCheckedModeBanner: false ,

     );
  }
}

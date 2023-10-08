


import 'package:flutter/Material.dart';

import 'home_screen.dart';

void main (){
  runApp(TodoApp ());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  title: "todo App verson two",
      home: HomeScreen()
);
  }
}


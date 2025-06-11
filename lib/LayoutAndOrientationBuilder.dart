import 'package:flutter/material.dart';

import 'MyResponsiveWidget.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp( // MaterialApp provides Directionality
      title: 'Responsive Demo',
      home: MyResponsivePage(), // Your widget is used here
    );
  }
}

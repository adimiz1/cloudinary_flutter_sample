import 'package:flutter/material.dart';
import 'custom_views/CustomBottomToolbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Flutter App with Bottom Toolbar')),
        bottomNavigationBar: CustomBottomToolbar(),
      ),
    );
  }
}


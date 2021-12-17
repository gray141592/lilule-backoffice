import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  final String title;
  MyPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("page title: $title")],
        ),
      ),
    );
  }
}

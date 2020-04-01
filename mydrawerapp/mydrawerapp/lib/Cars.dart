import 'package:flutter/material.dart';

class Cars extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cars Page'),
      ),
      body: Center(
        child: Text(
          'Simple Car Page',
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(

        title: const Text('State management'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children:  const [
            Text('counter'),
          ],
        ),
      ),
    );
  }
}
import 'dart:async';
import 'dart:developer';
import 'package:timer_state_managment/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;

  //initState call before build(context)
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      // Provider obtain and listen to an object
      // in this case Counter class
      //var provider = Provider.of<Counter>(context, listen: false);
      //provider.increment();

      //Another way for reading the objact of Counter class .
      context.read<Counter>().increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build ' + Counter().counter.toString());
    return Scaffold(
        backgroundColor: Colors.indigo[100],
        appBar: AppBar(
          title: Text('State management'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          children: [
            Consumer<Counter>(builder: (context, value, child) {
              return Text(
                value.counter.toString(),
                style: TextStyle(fontSize: 30),
              );
            }),
            SizedBox(
              height: 39,
            ),
            Text(context.watch<Counter>().counter.toString())
          ],
        )));
  }
}
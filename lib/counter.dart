import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier{
  //counter var that will increment
  int _counter = 0;
  // getter to access private _counter
  int get counter => _counter;

  // method that will increment the counter
  // and also set the state through NotifyListener
 void addCounter(){
   _counter++;
   //this listener works like setState
   notifyListeners();
 }


}
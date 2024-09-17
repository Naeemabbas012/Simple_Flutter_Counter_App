import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Counter Application',
      home:CounterAppState(),
    );
  }
}
class CounterAppState extends StatefulWidget{
  const CounterAppState({super.key});

  @override
  CounterApp createState() => CounterApp();
}
class CounterApp extends State<CounterAppState> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }
  void _decrementCount() {
    if(_count<1){
      return;
    }
    setState(() {
      _count--;
    });
  }
  @override
  Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blue,
       title: const Center(child: Text('Counter App',style: TextStyle(color: Colors.white),)),),
     body: Center(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           FloatingActionButton(
             backgroundColor: Colors.blue,
             onPressed: _incrementCount,
             child: const Icon(Icons.add),
           ),

           Text("${_count}"),

           FloatingActionButton(
             backgroundColor: Colors.blue,
             onPressed: _decrementCount,
            child: const Icon(Icons.remove),
           )
         ],
       ),
     )
   );
  }
}
import 'package:flutter/material.dart';
void main(){
  runApp(yaseen());
}

class yaseen extends StatefulWidget {
  const yaseen({super.key});

  @override
  State<yaseen> createState() => _yaseenState();
}

class _yaseenState extends State<yaseen> {
  @override
  var count = 0;
  bool _color = true;
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "your state",
      home: 
     Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: _color?Colors.red:Colors.blue,
            ),
            Text(count.toString()),
            ElevatedButton(onPressed: (){
              setState(() {
                _color =!_color;
                count +=1;
              });
            }, child: Text("press")),
          ],
            ),
      ),
      ),
    );
  }
}
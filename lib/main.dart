import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything?'),
        ),
        body: predictionBody(),
      ),
    );
  }
}

class predictionBody extends StatefulWidget {
  const predictionBody({Key? key}) : super(key: key);

  @override
  _predictionBodyState createState() => _predictionBodyState();
}


class _predictionBodyState extends State<predictionBody> {

  int ballno= 1;
  void randomBall(){
setState(() {
  ballno= Random().nextInt(5)+1;
});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                onPressed: () {randomBall();},
                child: Image(
            image: AssetImage('images/ball$ballno.png'),
          ),
              )),
        ],
      ),
    );
  }
}

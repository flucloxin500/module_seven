import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}
class CounterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CounterState();
  }
}

class CounterState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count:'),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(counter.toString(),
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    if ( counter < 5)
                    {
                      counter = counter + 1;
                    }
                    else
                    {
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: Text('Button Pressed ${counter} times',
                            style: TextStyle(
                                fontWeight: FontWeight.normal
                            ),),
                          actions: [
                            TextButton(onPressed: (){},
                              child: Text('Close'),),
                          ],
                        );
                      }
                      );
                    }

                  });
                },
                  child: Text('+',
                    style: TextStyle(
                        fontSize: 25
                    ),),),

                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: ElevatedButton(onPressed: (){

                    setState(() {
                      if ( counter > 0)
                      {
                        counter = counter - 1;
                      }

                    });
                  },
                    child: Text('-',
                      style: TextStyle(
                          fontSize: 25
                      ),),),
                ),
              ],
            )
          ],
        ),

      ),
    );
  }
}
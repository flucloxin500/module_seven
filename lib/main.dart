import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Home() ,
    );
  }
}

class Home extends StatelessWidget{
  const Home ({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.home),
        middle: Text('Home Screen'),
        trailing: CupertinoSwitch(
          onChanged: (bool onChange) {

          }, value: true,
        ),
      ),

        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hello World.!'),
          Text('Hello World.!'),
          Text('Hello World.!'),
          Text('Hello World.!'),
          CupertinoButton.filled(child: Text('Start'), onPressed: (){}),
          CupertinoButton(child: Text('Start'), onPressed: (){}),
          // Cupertino Text Field
          CupertinoTextField(),
          // bottom navigation
          CupertinoTabBar(items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(CupertinoIcons.home)),
            BottomNavigationBarItem(label: 'Home', icon: Icon(CupertinoIcons.mail)),
            BottomNavigationBarItem(label: 'Home', icon: Icon(CupertinoIcons.search)),
          ])
        ],
      ),
    )
    );
  }
}

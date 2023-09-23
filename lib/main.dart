import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    /*
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
    ),
    );
  }
     */

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          // Switch
          Switch(value: true, onChanged: (bool value) {}),
          // alert box
          ElevatedButton(
            onPressed: () {
              showDialog(
                  barrierDismissible: true,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Alert'),
                      content: Text('You are in danger.!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // hiding with cancel button
                            Navigator.pop(context);
                          },
                          child: Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Okay'),
                        ),
                      ],
                    );
                  });
            },
            child: Text('Show dialog'),
          ),
          // show dialg
          ElevatedButton(onPressed: (){
            showAboutDialog(context: context ,
                applicationName: "Pikapie",
            applicationVersion: '1.04.20',
            children: [
              Text('This is good'),
            ]);
          }, child: Text('Show About'),),
          // bottom sheet
          ElevatedButton(onPressed: (){
            showModalBottomSheet(
              isDismissible: false,
                barrierColor: Colors.black45,
                backgroundColor: Colors.grey.shade50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  )
                ),
                context: context, builder: (context){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Center(
                      child: Text('This is bottom sheet'),
                    )
                  ],
                ),
              );
            });
          }, child: Text('Show bottom sheet')),
        ],
      ),
    );
  }
}

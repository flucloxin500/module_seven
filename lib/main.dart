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

// Immutable/ Statefull widget

/*class HomeScreen extends StatelessWidget{
  HomeScreen ({super.key});

  int counter = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text(counter.toString(),style: Theme.of(context).textTheme.displayLarge,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter = counter + 1 ;
          print(counter);
        },
        child: Icon(Icons.add),
      ),
    ) ;
  }

}*/
/*

// Immutable widget

class HomeScreen extends StatelessWidget{
  const HomeScreen ({super.key});

  static const String name = 'Rafat' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold() ;
  }

}

 */
// Mutable?stateful
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
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProfileScreen(userName: 'Snake CM')));
                },
                child: Text('Profile Screen'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // if ( counter < 10)
          //   {
          //     counter = counter + 1;
          //
          //   }
          // You can count it here tooo
          counter = counter + 1;
          setState(() {
            //counter = counter + 1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// Widget Class
class ProfileScreen extends StatefulWidget {
  final String userName;
  const ProfileScreen({super.key, required this.userName});
  @override
  State<StatefulWidget> createState() {
    return _ProfileScreenState();
  }
}

// State Class -> widget class
class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text(widget.userName),
      ),
    );
  }
}

import 'package:flutter/material.dart';

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'Ostad App',
    );
  }
}

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// for listing student
  List<String> students = [
    'WALID',
    'ARSHAD',
    'JEETU',
    'AHSAASY',
    'DIPTO',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Scrollbar(
        thickness: 30,
        radius: Radius.circular(10),
        /// Listview separator
        /// Listview builder
        //
        child: ListView.separated(
          itemCount: students.length,
          itemBuilder: (context,index){

            return ListTile(
              onTap: (){
                print('Touched builder');
              },
              title: Text(students[index])
            );
            },
          separatorBuilder: (context,index){
            return Divider();
          },
        ),
        //child: ListView.builder(
          // Listview.separated

          //separatorBuilder: (context,index){
          //   return Column(
          //     children: [
          //       Text(index.toString()),
          //       Divider(),
          //     ],
          //   );
            //return Divider();
          //},
          //itemCount: 18,
            //itemBuilder: (context,index) {
          //return ListTile(
            //title: Text('Item number ${index}'),
          //);
        //},
        //),
        /*GridView.builder(
          itemCount: 16,
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2 ,
         ),
          itemBuilder: (context,index){
           return Column(
             children: [
               Text(index.toString()),
               Icon(Icons.adb_rounded),
             ],
           );
          },

        ),*/

        ),
      );

  }
}

 */
/// Navigator ==> one page to another page
/// Navigator 1(simnple and lengthy),2(complex)
/// Router package ==>GoROuter,GetX,AutoRoute

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 5,
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.6,
                  wordSpacing: 0.5,
                ))),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            foregroundColor: Colors.deepOrange,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple,
          elevation: 5,
          shadowColor: Colors.green,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 18,
          ),
          bodySmall: TextStyle(fontSize: 12),
          bodyLarge: TextStyle(fontSize: 22),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amberAccent,
          elevation: 5,
          shadowColor: Color(0xFFF082FF),
        )
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            Text('Hello World!'),
            Text(
              'Hello World!',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text('Hello World!'),
            TextButton(
              onPressed: () {},
              child: Text('Tap here'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Tap here'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {},
                child: Text('Tap here'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Navigator from one route to another

/*class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              'Home',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
              child: Text('Go to settings'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrdersScreen(),
                  ),
                );
              },
              child: Text('Go to orders'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductList(),
                  ),
                );
              },
              child: Text('Go to Product List'),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
              'Settings',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () {
                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                      (route) => false);
                },
                child: Text('Home'))
          ],
        ),
      ),
    );
  }
}

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Orders',
              style: TextStyle(fontSize: 24),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
              child: Text('Go to settings'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Back to home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) {
                          return ProductDetailsList(productName: index.toString(),price: 58.65,);
                        })).then((value) {
                          print(value);
                });
              },
              title: Text(index.toString()),
              subtitle: Text('Product Details ${index + 1}'),
            );
          }),
    );
  }
}

class ProductDetailsList extends StatelessWidget {
  final String productName; /// mandatory/required
  final double? price;  /// optional
  const ProductDetailsList({super.key, required this.productName , this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
        ),
        body: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                productName,
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context , 'My Name $productName');
              }, child: Text('Back'))
            ],
          ),
        ));
  }
}

 */

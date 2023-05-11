import 'package:flutter/material.dart';

class Order {
  String name = "";
  int price = 0;
}

void main() {
  Order order = new Order();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Food App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My Food App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: new DecorationImage(
                    image: AssetImage("assets/images/user.png"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.red,
                ),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "User name",
                hintText: 'User name',
              ),
            ),
            const TextField(
              obscureText: true,
              decoration:
                  InputDecoration(hintText: "Password", labelText: "Password"),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ThirdPage(title: 'My Food App');
                }));
              },
              child: const Text('LOGIN'),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SecondPage(title: 'My Food App');
                }));
              },
              child: const Text('REGISTER'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(children: <Widget>[
          const Text(
            'Name',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const TextField(
            decoration: InputDecoration(hintText: "", labelText: ""),
          ),
          const Text(
            'Email',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const TextField(
            decoration: InputDecoration(hintText: "", labelText: ""),
          ),
          const Text(
            'Phone',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const TextField(
            decoration: InputDecoration(hintText: "", labelText: ""),
          ),
          const Text(
            'Password',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const TextField(
            obscureText: true,
            decoration:
                InputDecoration(hintText: "Password", labelText: "Password"),
          ),
          const Text(
            'Confirm Password',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const TextField(
            obscureText: true,
            decoration:
                InputDecoration(hintText: "Password", labelText: "Password"),
          ),
          TextButton(
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
            child: const Text('Register'),
          ),
        ]),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: new DecorationImage(
                            image: AssetImage("assets/images/S__410959920.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.red,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ForthPage(
                              title: 'My Food App', resName: 'KFC');
                        }));
                      },
                      child: const Text('...'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: new DecorationImage(
                            image: AssetImage("assets/images/S__410959921.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.red,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const FifthPage(
                            title: 'My Food App',
                            resName: 'The Pizza Company',
                          );
                        }));
                      },
                      child: const Text('...'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: new DecorationImage(
                            image: AssetImage("assets/images/S__410959922.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.red,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SixthPage(
                            title: 'My Food App',
                            resName: 'Mcdonal',
                          );
                        }));
                      },
                      child: const Text('...'),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: new DecorationImage(
                            image: AssetImage("assets/images/S__410959923.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.red,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SeventhPage(
                            title: 'My Food App',
                            resName: 'Swensens',
                          );
                        }));
                      },
                      child: const Text('...'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: new DecorationImage(
                            image: AssetImage("assets/images/S__410959924.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.red,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const EightPage(
                            title: 'My Food App',
                            resName: 'Babigon Grill',
                          );
                        }));
                      },
                      child: const Text('...'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ForthPage extends StatelessWidget {
  const ForthPage({Key? key, required this.title, required this.resName})
      : super(key: key);
  final String title;
  final String resName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                image: AssetImage("assets/images/S__410959920.jpg"),
                fit: BoxFit.cover,
              ),
              color: Colors.red,
            ),
          ),
        ),
        const Text(
          'MENU',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text(
          '1. Chicken Jujai - ฿319',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Chicken Jujai - ฿319',
                price: '319',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '2. Chicken Phung Jai ฿199',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Chicken Phung Jai ฿199',
                price: '199',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '3. Chicken Suk Jai ฿435',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Chicken Suk Jai ฿435',
                price: '435',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '4. The Box Signature ฿149',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'The Box Signature ฿149',
                price: '149',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '5. The Box All Rice ฿149',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'The Box All Rice ฿149',
                price: '149',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '6. Chicken hits the spot - Donjai ฿79',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Chicken hits the spot - Donjai ฿79',
                price: '79',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '7. Chicken Pop ฿35',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Chicken Pop ฿35',
                price: '35',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '8. Nuggets ฿69',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Nuggets ฿69',
                price: '69',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '9. Wing Zap ฿35',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Wing Zap ฿35',
                price: '35',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '10. Snack Box ฿139',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Snack Box ฿139',
                price: '139',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
      ])),
    );
  }
}

class FifthPage extends StatelessWidget {
  const FifthPage({Key? key, required this.title, required this.resName})
      : super(key: key);
  final String title;
  final String resName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                image: AssetImage("assets/images/S__410959921.jpg"),
                fit: BoxFit.cover,
              ),
              color: Colors.red,
            ),
          ),
        ),
        const Text(
          'MENU',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text(
          '1. Bacon Diced & Crabstick cream pizza - ฿169',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Bacon Diced & Crabstick cream pizza - ฿169',
                price: '169',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '2. BBQ chicken wing - ฿159',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'BBQ chicken wing - ฿159',
                price: '159',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '3. Single Meal - ฿199',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Single Meal - ฿199',
                price: '199',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '4. Pizza bacon cheese Crust - ฿469',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Pizza bacon cheese Crust - ฿469',
                price: '469',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '5. New York pizza 12’inch - ฿499',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'New York pizza 12’inch - ฿499',
                price: '499',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '6. pizza puff cheese trio - ฿169',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'pizza puff cheese trio - ฿169',
                price: '169',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '7. Pasta set - ฿219',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Pasta set - ฿219',
                price: '219',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '8. Hong Kong Egg tart 2 pcs. - ฿49',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Hong Kong Egg tart 2 pcs. - ฿49',
                price: '49',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '9. Garlic Bread - ฿89',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Garlic Bread - ฿89',
                price: '89',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '10. Coke 1.25 ml - ฿38',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Coke 1.25 ml - ฿38',
                price: '38',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
      ])),
    );
  }
}

class SixthPage extends StatelessWidget {
  const SixthPage({Key? key, required this.title, required this.resName})
      : super(key: key);
  final String title;
  final String resName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                image: AssetImage("assets/images/S__410959922.jpg"),
                fit: BoxFit.cover,
              ),
              color: Colors.red,
            ),
          ),
        ),
        const Text(
          'MENU',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text(
          '1. Set BFF pork and fish Burgers - ฿159',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Set BFF pork and fish Burgers - ฿159',
                price: '159',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '2. Set BFF beef and fish Burgers - ฿159',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Set BFF beef and fish Burgers - ฿159',
                price: '159',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '3. Set BFF pork and chicken burgers - ฿159',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Set BFF pork and chicken burgers - ฿159',
                price: '159',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '4. Set quoter powder with cheese - ฿299',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Set quoter powder with cheese - ฿299',
                price: '299',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '5. Set mc nugget and french fries - ฿184',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Set mc nugget and french fries - ฿184',
                price: '184',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '6. dunk cheese - ฿59',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'dunk cheese - ฿59',
                price: '59',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '7. Sunde Bualoey 3 colour - ฿45',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Sunde Bualoey 3 colour - ฿45',
                price: '45',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '8. pie corn - ฿35',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'pie corn - ฿35',
                price: '35',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '9. pie pineapple - ฿35',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'pie pineapple - ฿35',
                price: '35',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '10. Mc patongko 3 pcs. - ฿45',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Mc patongko 3 pcs. - ฿45',
                price: '45',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
      ])),
    );
  }
}

class SeventhPage extends StatelessWidget {
  const SeventhPage({Key? key, required this.title, required this.resName})
      : super(key: key);
  final String title;
  final String resName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                image: AssetImage("assets/images/S__410959923.jpg"),
                fit: BoxFit.cover,
              ),
              color: Colors.red,
            ),
          ),
        ),
        const Text(
          'MENU',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text(
          '1. Nutty crispy tower - ฿155',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Nutty crispy tower - ฿155',
                price: '155',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '2. Gold rush - ฿135',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Gold rush - ฿135',
                price: '135',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '3. Banana split - ฿185',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Banana split - ฿185',
                price: '185',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '4. Strawberry Stripes - ฿149',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Strawberry Stripes - ฿149',
                price: '149',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '5. Sticky chewy choc fantasy - ฿149',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Sticky chewy choc fantasy - ฿149',
                price: '149',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '6. Honey Butter Mini Toast - ฿99',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Honey Butter Mini Toast - ฿99',
                price: '99',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '7. Chocolate dome - ฿129',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Chocolate dome - ฿129',
                price: '129',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '8. Oreo cookies’n cream - ฿155',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Oreo cookies’n cream - ฿155',
                price: '155',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '9. KitKat fantasy - ฿165',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'KitKat fantasy - ฿165',
                price: '165',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '10. Chocolate fondue - ฿375',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Chocolate fondue - ฿375',
                price: '375',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
      ])),
    );
  }
}

class EightPage extends StatelessWidget {
  const EightPage({Key? key, required this.title, required this.resName})
      : super(key: key);
  final String title;
  final String resName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                image: AssetImage("assets/images/S__410959924.jpg"),
                fit: BoxFit.cover,
              ),
              color: Colors.red,
            ),
          ),
        ),
        const Text(
          'MENU',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text(
          '1. rice with fried Pork and crispy garlic  ฿85',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'rice with fried Pork and crispy garlic  ฿85',
                price: '85',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '2. Yakisoba ฿95',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Yakisoba ฿95',
                price: '85',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '3. Garlic fired rice ฿45',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Garlic fired rice ฿45',
                price: '45',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '4. Gonset pork with steam rice ฿135',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Gonset pork with steam rice ฿135',
                price: '135',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '5. Gonset family ฿355',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Gonset family ฿355',
                price: '355',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '6. Fried gyoza ฿85',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Fried gyoza ฿85',
                price: '85',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '7. Fried squid with crispy garlic ฿139',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Fried squid with crispy garlic ฿139',
                price: '130',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '8. Udon  ฿49',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'Udon  ฿49',
                price: '49',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '9.lipton ice tea  22Oz. ฿39',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'lipton ice tea  22Oz. ฿39',
                price: '39',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
        const Text(
          '10.pepsi 22Oz.  ฿39',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NinePage(
                title: 'My Food App',
                menuid: 'pepsi 22Oz.  ฿39',
                price: '39',
                resname: '$resName',
              );
            }));
          },
          child: const Text('Select'),
        ),
      ])),
    );
  }
}

class NinePage extends StatelessWidget {
  const NinePage(
      {Key? key,
      required this.title,
      required this.menuid,
      required this.price,
      required this.resname})
      : super(key: key);
  final String title;
  final String menuid;
  final String price;
  final String resname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Text(
          'Restaurant: $resname',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          '$menuid',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          'TOTAL PRICE $price',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const TenPage(title: 'My Food App');
            }));
          },
          child: const Text('Confirm'),
        ),
      ])),
    );
  }
}

class TenPage extends StatelessWidget {
  const TenPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Column(children: <Widget>[
        const Text(
          'CONFIRM ORDERS',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text(
          'THAN YOU FOR BYING...',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text(
          '..........',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
          child: const Text('ENTER'),
        ),
      ])),
    );
  }
}

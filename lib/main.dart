import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;
  int myIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });

    List<Widget> widgetList = const [
      Screen2()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            myIndex= index;
          });
        },
        currentIndex: myIndex,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Counter")
      ],),
      body: Center(
        child: Container(
          color: Colors.white70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                          child: Image.asset("assets/unsplash1.jpg", height: 140, width: 140, )),
                      Text("\t\t\t Name in English \n\t\t\t ناوى به كوردى\n\t\t\tالاسم \n\t\t\t 18,900 IQD", textAlign: TextAlign.center,)
                    ],
                  ),
             Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                        Container(
                          child: Text("Sara Xan  "),
                        ),
                        Container(
                          child: Image.asset("assets/unsplash2.jpg", height: 50, width: 50,),
                        ),
                        Container(
                          color: Colors.grey,
                          margin: EdgeInsets.only(left: 4.0),
                          child: FloatingActionButton(
                            onPressed: _decrementCounter,
                            tooltip: 'decrement',
                            backgroundColor: Colors.red,
                            child: const Text("-",
                            style: TextStyle(fontSize: 40.0)),
                        )
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          color: Colors.grey,
                          child: Text(
                            '$_counter',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),S
                        ),
                        Container(
                          color: Colors.grey,
                             child: FloatingActionButton(
                              onPressed: _incrementCounter,
                              tooltip: 'Increment',
                              backgroundColor: Colors.green,
                              child: const Icon(Icons.add),
                        )
                        ),
                      ],
                    ),
                ],
              ),
        ),
        ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Screen2 {
}

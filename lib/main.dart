import 'package:flutter/material.dart';

//void main() {
//  runApp(const MainApp());
//}

void main() {
  runApp(MaterialApp(home: MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  String mtext = "1";
  late TabController _tcontrol;

  @override
  void initState() {
    // TODO: implement initState
    _tcontrol = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('AppBar Widget'),
        leading: Icon(color: Colors.white, Icons.menu),
        //toolbarOpacity: 1,
        //centerTitle: true,
        //titleSpacing: 50.0,
        elevation: 10.0,
        shadowColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  mtext = "This is arrow";
                });
              },
              icon: Icon(Icons.arrow_forward)),
          IconButton(
              onPressed: () {
                setState(() {
                  mtext = "This is cross";
                });
              },
              icon: Icon(Icons.close)),
        ],
        bottom: TabBar(
          controller: _tcontrol,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.supervisor_account),
            ),
            Tab(
              icon: Icon(Icons.close),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tcontrol,
        children: [
          Column(
            children: [
              TextField(
                onSubmitted: (String txt) {
                  setState(() {
                    mtext = txt;
                  });
                },
                decoration:
                    InputDecoration(hintText: 'Type here', labelText: 'Name'),
              ),
              Text(mtext),
            ],
          ),
          //Center(
          //child: Text('This is home tab. $mtext'),
          //),
          Center(
            child: Text('This is user tab. $mtext'),
          ),
          Center(
            child: Text('This is close tab'),
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.yellow,
        child: TabBar(
          controller: _tcontrol,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.supervisor_account),
            ),
            Tab(
              icon: Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}

/*
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List items = [];
  @override
  void initState() {
    // TODO: implement initState

    for (var i = 0; i < 50; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: items.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.blue,
              child: Padding(padding: EdgeInsets.all(20.0)),
            );
          }),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Boxes',
        home: Scaffold(
          body: Stack(
            alignment: Alignment.center,
            children: [
              Card(
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.all(500.0),
                  )),
              Card(
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.all(300.0),
                  )),
              Card(
                  color: Colors.yellow,
                  child: Padding(
                    padding: EdgeInsets.all(200.0),
                  )),
              Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: EdgeInsets.all(100.0),
                  )),
            ],
          ),
        ));
  }
}


class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List items = [];

  @override
  void initState() {
    for (var i = 0; i < 50; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dummy App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Widget'),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Item No: $index'),
                trailing: Icon(Icons.arrow_forward),
              );
            }),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dummy Application",
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Widget'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('Ítem 1'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Ítem 1'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Ítem 1'),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Main App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row & Column'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is row1'),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('This is col1'),
              Text('This is col3'),
              Text('This is col3'),
            ]),
            Text('Row')
          ],
        ),
      ),
    );
  }
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          //color: Colors.pink,
          height: 300.0,
          width: 300.0,
          alignment: Alignment.center,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(color: Colors.green),
          //transform: Matrix4.rotationZ(0.6),
          foregroundDecoration: BoxDecoration(color: Colors.deepOrange),
          child: Text('This is my Container'),
        ),
      ),
    );
  }
}
*/

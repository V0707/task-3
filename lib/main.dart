import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: DrawerHeader(
                child: Text('Gmail', style: TextStyle(color: Colors.red, fontSize:30),),
              ),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text('Primary',style: TextStyle(fontSize: 18),),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Social',style: TextStyle(fontSize: 18),),
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Promotions',style: TextStyle(fontSize: 18),),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('Updates',style: TextStyle(fontSize: 18),),
            ),
            ListTile(
              leading: Icon(Icons.forum),
              title: Text('Forums',style: TextStyle(fontSize: 18),),
            ),
            ListTile(
              leading: Container(
                child: Text('ALL LABELS',style: TextStyle(fontSize: 15),),
              ),
            ),
            ListTile(
              leading: Icon(Icons.star_border),
              title: Text('Starred',style: TextStyle(fontSize: 18),),
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Snoozed',style: TextStyle(fontSize: 18),),
            ),
            ListTile(
              leading: Icon(Icons.label_important),
              title: Text('Important',style: TextStyle(fontSize: 18),),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Sent',style: TextStyle(fontSize: 18),),
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text('Scheduled',style: TextStyle(fontSize: 18),),
            ),
            ListTile(
              leading: Icon(Icons.folder_open),
              title: Text('Outbox',style: TextStyle(fontSize: 18),),
            ),
            ListTile(
              leading: Icon(Icons.insert_drive_file),
              title: Text('Drafts',style: TextStyle(fontSize: 18),),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

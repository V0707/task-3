import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail clone',
      home: MyHomePage(title: 'Gmail clone'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 80,
              child: DrawerHeader(
                child: Text('Gmail', style: TextStyle(color: Colors.red, fontSize:25),),
              ),
            ),
            Divider(thickness: 1.0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),),
              child: ListTile(
                leading: Icon(Icons.inbox, color: Colors.red,),
                title: Text('Primary',style: TextStyle(fontSize: 18,color: Colors.red),),
                trailing: Text('99+', style: TextStyle(color: Colors.red),),
              ),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Social',style: TextStyle(fontSize: 18),),
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Promotions',style: TextStyle(fontSize: 18),),
              trailing: Container(
                padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                decoration: BoxDecoration(
                  color: Colors.green.shade900,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text('3 new', style: TextStyle(color: Colors.white),),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('Updates',style: TextStyle(fontSize: 18),),
              trailing: Container(
                padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade900,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text('1 new', style: TextStyle(color: Colors.white),),
              ),
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
              trailing: Text('99+'),
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
              trailing: Text('32'),
            ),
          ],
        ),
      ),       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'package:flutter/material.dart';
import 'package:navpractice/pages/log_in.dart';
import 'package:navpractice/pages/welcome_to_tinder.dart';
import 'package:navpractice/pages/name.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LogIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}



class pageB extends StatefulWidget {
  const pageB({Key? key}) : super(key: key);

  @override
  State<pageB> createState() => _pageBState();
}

class _pageBState extends State<pageB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => pageA()));
          },
        ),
        centerTitle: true,
        title: Text('Page B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow[400],
                      ),
                    ]),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => pageC()));
              },
              child: Text('Page C'),
            ),
          ],
        ),
      ),
    );
  }
}

class pageC extends StatefulWidget {
  const pageC({Key? key}) : super(key: key);

  @override
  State<pageC> createState() => _pageCState();
}

class _pageCState extends State<pageC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => pageB()));
          },
        ),
        centerTitle: true,
        title: Text('Page C'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow[400],
                      ),
                    ]),
              ),
            ),
            Container(
              height: 180,
              width: 360,
              color: Colors.blue[200],
            ),
            Container(
              height: 180,
              width: 360,
              color: Colors.blue[300],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogIn()));
              },
              child: Text('Sign out'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aikin App',
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: const MyHomePage(title: 'Aikin'),
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
  void _incrementCounter() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: _incrementCounter, icon: Icon(Icons.notifications))
        ],
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
                leading: FlutterLogo(),
                title: Text("Welcome to Aikin!"),
                subtitle: Text("Experience inspiring moments every day")),
          ),
        ],
      ),
    );
  }
}

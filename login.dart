import 'package:flutter/material.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatefulWidget {
  HomeApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: const Text('مرحبا بكم'),
            ),
            body: FirstScreen()));
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: ElevatedButton(
        child: Text('Elevated Button'),
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          textStyle: const TextStyle(
              color: Colors.lightBlue,
              fontSize: 26,
              fontStyle: FontStyle.normal),
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          shadowColor: Colors.lightBlue,
        ),
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NewScreen())),
      ),
    ));
  }
}

class NewScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('شاشةجديدة'),
      ),
      body: Center(
        child: Text('Login Successfull'),
      ),
    );
  }
}

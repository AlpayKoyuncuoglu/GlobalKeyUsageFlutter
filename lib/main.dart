import 'package:datatransferbetweenwidgets/sayac_state.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "Sayac"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});
  final sayacWidgetkey = GlobalKey<SayacWidgetState>();

  final String title;

  @override
  Widget build(BuildContext context) {
    print("1");
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("butona basılma miktarı"),
            SayacWidget(key: sayacWidgetkey),
            //Text(sayacWidgetkey.currentState?.sayac.toString() ?? '0')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayacWidgetkey.currentState!.arttir();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

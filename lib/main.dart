import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepbystep/pages/Pacer.dart';
import 'package:stepbystep/store/pacer.store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PacerStore>(
          create: (_) => PacerStore(),
        )
      ],
      child: MaterialApp(
        title: 'Step By Step',
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
        home: Pacer(),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Animação em Flutter';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool tapped = false;
  final duration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animação em Flutter'),
      ),
      body: GestureDetector(
        onTap: () => setState(() => tapped = !tapped),
        child: Center(
          child: AnimatedCrossFade(
            firstChild: Icon(
              Icons.airline_seat_recline_normal_outlined,
              size: 200,
            ),
            secondChild: Icon(Icons.accessibility, size: 200),
            crossFadeState:
                !tapped ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: duration,
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter CICD',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: const Text("CI-CD"),
          ),
          body: const MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _wordList = ["HELLO", "WORLD", "HOW", "ARE"];
  String _text = "";
  int index = -1;

  void _changeText() {
    setState(() {
      if (index == _wordList.length - 1) {
        index = -1;
        _text = "";
        return;
      }
      index++;
      _text += '${_wordList[index]} ';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: TextButton(
          onPressed: _changeText,
          child: Text(
            textDirection: TextDirection.ltr,
            (_text.isEmpty) ? 'Tap to change text' : _text,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}

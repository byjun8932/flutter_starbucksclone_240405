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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StarbucksPage(title: '스타벅스에서 자바칩 프라푸치노를 좋아해'),
    );
  }
}

class StarbucksPage extends StatefulWidget {
  const StarbucksPage({super.key, required this.title});

  final String title;

  @override
  State<StarbucksPage> createState() => _MyStarbucksPageState();
}

class _MyStarbucksPageState extends State<StarbucksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '스타벅스 닉네임 바꾸라고 메일 받아보신 적 있습니까? 전 있어요 ㅋ',
            ),
          ],
        ),
      ),
    );
  }
}

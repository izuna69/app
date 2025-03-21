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
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my app'),
      ),
      body: Stack(
        children: <Widget>[
          const Center(
            child: Text(
              'hello',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: ElevatedButton(
              onLongPress: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('버튼 클릭됨'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('닫기'),
                        ),
                      ],
                    );
                  },
                );
              },
              onPressed: () {
                // 버튼 클릭 시의 행동을 정의할 수 있음 (현재는 비어 있음)
              },
              child: const Text('버튼 클릭'),
            ),
          ),
        ],
      ),
    );
  }
}

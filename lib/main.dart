import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppWidget());
}

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: MyHome());
  }
}

class MyHome extends StatefulWidget {
  const MyHome({
    super.key,
  });

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int total = 0;

  void _penambahan() {
    setState(() {
      total++;
    });
  }

  void _pengurangan() {
    setState(() {
      total--;
    });
  }

  void _resetter() {
    setState(() {
      total = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aplikasi Flutter")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Berhasil ditap sebanyak $total kali',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _penambahan,
                child: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: _resetter,
                icon: const Icon(Icons.restart_alt),
              ),
              ElevatedButton(
                onPressed: total > 0 ? _pengurangan : null,
                child: const Icon(Icons.remove),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const TrexisBankingApp());
}

class TrexisBankingApp extends StatelessWidget {
  const TrexisBankingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: const Text("Hello"),backgroundColor: Theme.of(context).primaryColorDark),
          body: const Text('Flutter Demo Home Page')),
    );
  }
}

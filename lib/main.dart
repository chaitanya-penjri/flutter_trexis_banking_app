import 'package:flutter/material.dart';
import 'package:flutter_trexis_banking_app/router/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const TrexisBankingApp());
}

class TrexisBankingApp extends StatelessWidget {
  const TrexisBankingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

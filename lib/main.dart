import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: const Color.fromRGBO(246, 246, 246, 1),
        primaryColor: const Color.fromRGBO(255, 164, 119, 1),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const App(),
    );
  }
}

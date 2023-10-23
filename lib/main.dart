import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //?? only if want to see the parallax effect ->
  // SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
  //     .then((_) {
  //   runApp(const MyApp());
  // });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

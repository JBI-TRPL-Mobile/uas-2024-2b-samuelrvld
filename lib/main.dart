import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/screens/welcome_screen.dart';
import 'providers/message_provider.dart';
import 'providers/user_provider.dart';
import 'screens/dashboard_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MessageProvider()..loadMessages()),
        ChangeNotifierProvider(create: (_) => UserProvider()..loadUser()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Monitoring',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => WelcomeScreen(),
        '/dashboard': (context) => DashboardScreen(),
      },
    );
  }
}

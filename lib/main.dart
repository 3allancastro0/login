import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widget/register_screen.dart';
import 'widget/login_screen.dart';
import 'widget/home_screen.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter router = GoRouter(
  initialLocation: '/register',
  routes: [
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Tarea 1.3 con go_router',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      routerConfig: router,
    );
  }
}

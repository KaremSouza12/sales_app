import 'package:flutter/material.dart';
import 'package:sales_app/src/pages/login/dependencies/dependencies.dart';
import 'package:sales_app/src/providers/providers.dart';
import 'package:sales_app/src/router/router.dart';

void main() {
  loginDependencies();
  setupProvidesr();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.indigoAccent,
        useMaterial3: true,
      ),
      routerConfig: appRouter,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:widgets_app_new/config/router/app_router.dart';
import 'package:widgets_app_new/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(2),
      //home: const HomeScreen(),
      /* routes: {
        '/botones': (context) => const ButtonsScreen(parametro: "Hola"),
        '/tarjetas': (context) => const CardScreen(),
      }, */
    );
  }
}

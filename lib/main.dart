import 'package:favofix/config/theme.dart';
import 'package:flutter/material.dart';

import './config/app_router.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Favofix',
      theme: theme(),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mobx_exemplo/store/cronometro.store.dart';
import 'package:provider/provider.dart';

import 'cronometro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<CronometroStore>(create: (_) => CronometroStore())],
      child: MaterialApp(
        title: 'MOBX - Cronometro',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CronometroPage(),
      ),
    );
  }
}

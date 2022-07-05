import 'package:flutter/material.dart';
import 'package:flutter_transaction_app/screens/main_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Navigator',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
      },
    ),
  );
}

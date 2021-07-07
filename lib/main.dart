import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travely/bottom_navbar.dart';
import 'package:travely/models/providertheme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeDataProvider themese = ThemeDataProvider();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return themese;
        })
      ],
      child: Consumer<ThemeDataProvider>(
        builder: (BuildContext context, themeData, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: BottomNavBar(),
            theme: ThemeData(
              visualDensity: VisualDensity.adaptivePlatformDensity,
              scaffoldBackgroundColor: themeData.value,
            ),
          );
        },
      ),
    );
  }
}

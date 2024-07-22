import 'package:flutter/material.dart';
import 'package:expense/widgets/expenses.dart';
import 'package:flutter/services.dart'; //use this for screen orientation lock for app

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 103, 5, 26),
);

var kDarkColorSheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) {
    runApp(
      MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          //copywith is useful because it helps to allow use default value and make override default value whatever we use.
          // useMaterial3: true,
          colorScheme: kDarkColorSheme,
          cardTheme: const CardTheme().copyWith(
            color: kDarkColorSheme.secondaryContainer,
            margin: const EdgeInsets.all(16),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorSheme.primaryContainer,
              foregroundColor: kDarkColorSheme.onPrimaryContainer,
            ),
          ),
        ),
        theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.all(16),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: kColorScheme.onSecondaryContainer,
                    fontSize: 14),
              ),
        ),
        home: const Expenses(),
      ),
    );
  // });
}

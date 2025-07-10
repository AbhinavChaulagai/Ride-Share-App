import 'package:flutter/material.dart';
import 'package:rideshare_app/screens/login_screen.dart'; // Import LoginScreen
import 'package:rideshare_app/utils/constants.dart'; // Import constants

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RideShare App',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white, // Assuming a white background for most screens
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
          secondary: secondaryColor,
          background: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white, // White title text
          elevation: 0, // Flat app bar
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75, horizontal: defaultPadding * 1.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: lightGreyColor,
          hintStyle: const TextStyle(color: textLightColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide: BorderSide.none, // No border by default
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide: const BorderSide(color: primaryColor, width: 1.5), // Highlight focus
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: darkGreyColor),
          bodyMedium: TextStyle(color: darkGreyColor),
          titleLarge: TextStyle(color: darkGreyColor, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(color: darkGreyColor, fontWeight: FontWeight.bold),
          labelLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), // For button text
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(), // Start with LoginScreen
      debugShowCheckedModeBanner: false, // Remove debug banner
    );
  }
}


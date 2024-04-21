import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott_flutter_app/presentation/main_page/widgets/screen_main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge:TextStyle(
            color: Colors.white
          ) ,
          bodyMedium:  TextStyle(
            color: Colors.white
          )
        )
        
      ),
      
      home:  ScreenMainPage(),
    );
  }
}

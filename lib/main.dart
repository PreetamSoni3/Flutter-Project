import 'package:firstproject/pages/home_screen.dart';
import 'package:firstproject/pages/login_page.dart';
import 'package:firstproject/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData.light(),

      initialRoute: "/",
    routes: {
      "/": (context) => LoginPage(),
      MyRoutes.homeRoutes : (context) => HomePage(),
      MyRoutes.loginRoutes: (context) => LoginPage(),
    }
    );
  }
}

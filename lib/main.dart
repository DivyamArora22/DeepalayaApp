import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login_page.dart';
import 'auth.dart';
import 'root_page.dart';
import 'package:login_demo/new_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_demo/data.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: Auth().user,
      child: new MaterialApp(
        title: 'Flutter login demo',
        theme: new ThemeData(
            fontFamily: GoogleFonts.openSans().fontFamily,
            primarySwatch: Colors.green,
            primaryColor: defaultTargetPlatform == TargetPlatform.iOS
                ? Colors.grey[50]
                : null),
        home: new RootPage(auth: new Auth()),
      ),
    );
  }
}

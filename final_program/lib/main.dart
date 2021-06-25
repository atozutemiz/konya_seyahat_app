import 'package:final_program/screens/aleaddincami.dart';
import 'package:final_program/screens/anasayfa.dart';
import 'package:final_program/screens/grafik/aleaddingrafik.dart';
import 'package:final_program/screens/grafik/karataygrafik.dart';
import 'package:final_program/screens/grafik/mevlanagrafik.dart';
import 'package:final_program/screens/hakkinda.dart';
import 'package:final_program/screens/karatay.dart';
import 'package:final_program/screens/kesfet.dart';
import 'package:final_program/screens/maps/aleaddinmap.dart';
import 'package:final_program/screens/maps/karataymap.dart';
import 'package:final_program/screens/maps/mevlanamap.dart';
import 'package:final_program/screens/mevlana.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todos Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Anasayfa(),
    );
  }

  var rotalar = <String, WidgetBuilder>{
    "/anasayfa": (BuildContext context) => Anasayfa(),
    "/hakkinda": (BuildContext context) => Hakkinda(),
    "/kesfet": (BuildContext context) => Kesfet(),
    "/mevlana": (BuildContext context) => Mevlana(),
    "/mevlanamap": (BuildContext context) => Mevlanamap(),
    "/mevlanagrafik": (BuildContext context) => Mevlanagrafik(),
    "/aleaddincami": (BuildContext context) => Aleaddin(),
    "/aleaddinmap": (BuildContext context) => Aleaddinmap(),
    "/aleaddingrafik": (BuildContext context) => Aleaddingrafik(),
    "/karatay": (BuildContext context) => Karatay(),
    "/karataymap": (BuildContext context) => Karataymap(),
    "/karataygrafik": (BuildContext context) => Karataygrafik(),
  };
}

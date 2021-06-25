import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget aboutSection = Container(
      padding: EdgeInsets.all(20),
      child: Text(
        "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu Mobil Programlama dersi kapsamında 793301003 numaralı Ali Talha Özütemiz tarafından 24.06.2021 günü yapılmıştır.",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hakkında'),
          centerTitle: true,
          backgroundColor: Color(0xFF006064),
        ),
        body: ListView(
          children: <Widget>[
            aboutSection,
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

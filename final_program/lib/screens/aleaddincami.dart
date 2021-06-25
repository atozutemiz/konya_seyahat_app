import 'package:final_program/screens/grafik/aleaddingrafik.dart';
import 'package:final_program/screens/maps/aleaddinmap.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: use_key_in_widget_constructors
class Aleaddin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 5, 1),
                  child: Text(
                    'Aleaddin Blv',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 5, 5),
            child: Text(
              'Konya-Türkiye',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
    Widget buttonSection = Container(
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        child: Text(" Konum ", style: TextStyle(fontSize: 18)),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Aleaddinmap()),
                        ),
                        color: Color(0xFF006064),
                        textColor: Colors.white,
                        splashColor: Colors.grey,
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                      ),
                      RaisedButton(
                        child: Text(" Web ", style: TextStyle(fontSize: 18)),
                        onPressed: () {
                          String url1 =
                              "https://www.kulturportali.gov.tr/turkiye/konya/gezilecekyer/aladdin-camii";
                          launch(url1);
                        },
                        color: Color(0xFF006064),
                        textColor: Colors.white,
                        splashColor: Colors.grey,
                        padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        child: Text(" Grafik ", style: TextStyle(fontSize: 20)),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Aleaddingrafik()),
                        ),
                        color: Color(0xFF006064),
                        textColor: Colors.white,
                        splashColor: Colors.grey,
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    Widget aboutSection = Container(
      padding: EdgeInsets.all(12),
      child: Text(
        "Alâeddin Camii, Konya'da Alâeddin Tepesi adlı höyüğün üstünde Anadolu Selçuklu Devleti devrinde şehrin ulu camisi olarak inşa ettirilmiş yapıdır. Konya’nın en büyük ve en eski camisidir. Yapımı iki aşamada gerçekleşmiştir: ilk aşama I. Mesud döneminde başlayıp onun ölümünden sonra yerine geçen II. Kılıçarslan’ın caminin avlusuna bir kümbet inşa etmesi ile son bulmuştu. Yaklaşık 26 yıl sonra I. İzzeddin Keykavus yapıyı genişletmeye başlamış; ölümü üzerine yarım kalan inşaat I. Alaeddin Keykubad’ın saltanatının ilk yıllarında tamamlanmıştır. II. Kılıçarslan’ın caminin avlusunda inşa ettirdiği kümbet Selçuklu hanedanının büyük kısmının mezarı olmuştur. I. İzzeddin Keykavus’un yapımını başlattığı ikinci kümbet ise tamamlanamadan kalmıştır.",
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aleaddin Cami'),
          centerTitle: true,
          backgroundColor: Color(0xFF006064),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset('assets/images/aleaddincami.jpg'),
            titleSection,
            buttonSection,
            aboutSection,
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

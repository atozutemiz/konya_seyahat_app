import 'package:final_program/screens/grafik/mevlanagrafik.dart';
import 'package:final_program/screens/maps/mevlanamap.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: use_key_in_widget_constructors
class Mevlana extends StatelessWidget {
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
                    'Aziziye Mh.',
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
                          MaterialPageRoute(builder: (context) => Mevlanamap()),
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
                              "https://www.kulturportali.gov.tr/turkiye/konya/gezilecekyer/mevlna-muzesi";
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
                              builder: (context) => Mevlanagrafik()),
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
        "Bugün müze olarak kullanılmakta olan Mevlâna Dergâhı'nın yeri, Selçuklu Sarayı'nın Gül Bahçesi iken bahçe, Sultan Alâeddin Keykubad tarafından Mevlâna'nın babası Sultânü'l-Ulemâ Bâhaeddin Veled'e hediye edilmiştir. Sultânü'l-Ulemâ 12 Ocak 1231 tarihinde vefat edince türbedeki bugünkü yerine defnedilmiştir. Bu defin gül bahçesine yapılan ilk defindir. Sultânü'l-Ulemâ'nın ölümünden sonra kendisini sevenler Mevlâna'ya müracaat ederek babasının mezarının üzerine bir türbe yaptırmak istediklerini söylemişlerse de Mevlâna (gök kubbeden daha iyi türbe mi olur) diyerek bu isteği reddetmiştir.Ancak kendisi 17 Aralık 1273 yılında vefat edince Mevlâna'nın oğlu Sultan Veled, Mevlâna'nın mezarı üzerine türbe yaptırmak isteyenlerin isteklerini kabul etmiştir. (Kubbe-i Hadra) (Yeşil Kubbe) denilen türbe dört fil ayağı (kalın sütun) üzerine, 130 bin Selçukî dirhemine Mimar Tebrizli Bedrettin'e yaptırılmıştır. Bu tarihten sonra inşaî faaliyetler hiç bitmemiş 19'uncu yüzyılın sonuna kadar yapılan eklemelerle devam etmiştir.",
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mevlana Müzesi'),
          centerTitle: true,
          backgroundColor: Color(0xFF006064),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset('assets/images/mevlana.jpg'),
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

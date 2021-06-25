import 'package:final_program/screens/grafik/karataygrafik.dart';
import 'package:final_program/screens/maps/karataymap.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: use_key_in_widget_constructors
class Karatay extends StatelessWidget {
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
                    'Ankara Cad.',
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
                          MaterialPageRoute(builder: (context) => Karataymap()),
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
                              "https://www.kulturportali.gov.tr/turkiye/konya/gezilecekyer/karatay-medresesi-cini-eserler-muzesi";
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
                              builder: (context) => Karataygrafik()),
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
        "Karatay Medresesi, II. İzzeddin Keykavus devrinde, 1250-1251 yıllarında yapılmıştır. Eyvanın solundaki kubbeli hücre Celaleddin Karatay'ın türbesi olduğundan ve Celalettin Karatay Vakfiyesine kayıtlı olduğundan Celalettin Karatay tarafından yaptırıldığı düşünülmektedir. Mimarı bilinmemektedir. Osmanlı devrinde de kullanılan medrese 19. yüzyılın sonlarında terk edilmiştir.Medrese, Selçuklular devrinde hadis ve tefsir ilimleri okutulmak üzere (Kapalı Medrese) tipinde Sille taşından inşa edilmiştir. Tek katlıdır. Giriş doğudan gök ve beyaz mermerden yapılmış kapı ile sağlanmaktadır. Kapı Selçuklu devri taş işçiliğinin şaheser bir örneğidir. Yazı ve desenlerle süslenmiştir. Kapının üzerinde medresenin yapımı ile ilgili kitabeler yer almaktadır. Kapının diğer yüzeylerine seçme ayet ve hadisler kabartma olarak işlenmiştir. Kapıdan, evvelce kubbe ile örtülü (şimdi üzeri açık) bir avluya, buradan da bir kapı ile medreseye girilir. Medrese salonunun üzeri, merkezinde fener bulunan ve mozaik çinilerle kaplı kubbe ile örtülüdür. Kubbe kasnağında, duvarların üst kısımlarındaki bordürlerde ve hücre kapıları üzerindeki panoda ayetler yazılıdır. Binanın batı yönünde bulunan beşik tonozlu eyvanın kemerinde besmele ve Ayet-el Kürsi yer almaktadır. Kubbeye geçiş elemanı olan üçgenlerde ise Muhammed, İsa, Musa ve Davud peygamberlerin isimleri ile dört halifenin (Ebu Bekir, Ömer, Osman, Ali) isimlerine yer verilmiştir",
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Karatay Medresesi'),
          centerTitle: true,
          backgroundColor: Color(0xFF006064),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset('assets/images/karataymedrese.jpg'),
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

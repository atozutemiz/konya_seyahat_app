import 'dart:ui';

import 'package:final_program/screens/hakkinda.dart';
import 'package:final_program/screens/kesfet.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(255, 255, 255, 1),
          Color.fromRGBO(255, 255, 255, 1),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: topPadding),
              SizedBox(height: 30),
              AnimatedImage(),
              Container(
                padding: EdgeInsets.fromLTRB(40, 80, 40, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      child: Text(" Keşfet ", style: TextStyle(fontSize: 20)),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kesfet()),
                      ),
                      color: Color(0xFF006064),
                      textColor: Colors.white,
                      splashColor: Colors.grey,
                      padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      child: Text(" Listem ", style: TextStyle(fontSize: 20)),
                      onPressed: () {},
                      /*=> Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TodoList()),
                      ),*/
                      color: Color(0xFF006064),
                      textColor: Colors.white,
                      splashColor: Colors.grey,
                      padding: EdgeInsets.fromLTRB(58, 10, 58, 10),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(47, 10, 47, 10),
                color: Color(0xFF006064),
                child: GestureDetector(
                  child: const Text(
                    " Hakkında ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onDoubleTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hakkinda()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedImage extends StatefulWidget {
  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0, 0.08),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Image.asset('assets/images/clouds.png'),
        SlideTransition(
          position: _animation,
          child: Image.asset('assets/animation/konya.png'),
        ),
      ],
    );
  }
}

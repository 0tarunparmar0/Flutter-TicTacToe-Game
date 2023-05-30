// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, sort_child_properties_last, avoid_unnecessary_containers, annotate_overrides

import 'package:flutter/material.dart';
import 'package:o_x_game/homepage.dart';
// ignore: depend_on_referenced_packages
import 'package:avatar_glow/avatar_glow.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 10000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 120.0),
                  child: Container(
                    child: Text("TIC TAC TOE",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 35,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: AvatarGlow(
                    endRadius: 140,
                    duration: Duration(seconds: 2),
                    glowColor: Colors.white,
                    repeat: true,
                    repeatPauseDuration: Duration(seconds: 1),
                    startDelay: Duration(seconds: 1),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.none,
                          ),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[900],
                        child: Container(
                          child: Image.asset(
                             'lib/images/th.jfif',
                            // color: Colors.white,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        radius: 80.0,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 40, right: 40, bottom: 60),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(30),
                      color: Colors.yellow,
                      child: Center(
                        child: Text('PLAY GAME',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Container(
                    child: Text(" Developer -: Tarun",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              
            ],
          ),
        ));
  }
}

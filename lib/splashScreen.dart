import 'dart:ui';

import 'package:flutter/material.dart';
import './ui/Home.dart';


import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(const Duration(milliseconds: 5000), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Home()));
  }
  @override
  Widget build(BuildContext context) {

    return
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/splashx.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(

          backgroundColor: Colors.transparent,
          body: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              SizedBox(

                height: MediaQuery.of(context).size.height / 3,

                width: MediaQuery.of(context).size.width / 1.8,

                child: Image.asset(

                  'assets/logo.png',

                  fit: BoxFit.contain,

                ),

              ),

              const Center(



              ),

            ],

          ),
        ),);





  }


}


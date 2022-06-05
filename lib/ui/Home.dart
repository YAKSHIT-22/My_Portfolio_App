import 'dart:ui';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              snap: true,
              floating: true,
              expandedHeight:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? 160.0
                      : 260.0,
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "@YAKSHIT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontFamily: "TitilliumWeb",
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'DEVELOPER | DESIGNER',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            fontFamily: "TitilliumWeb",
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                centerTitle: true,
                background: Container(
                  decoration: MediaQuery.of(context).orientation ==
                          Orientation.landscape
                      ? const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/techy.png'),
                              fit: BoxFit.cover),
                        )
                      : const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(15.0)),
                          image: DecorationImage(
                              image: AssetImage('assets/yk.png'),
                              fit: BoxFit.cover),
                        ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                      height: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20.0),
                            ),
                        color: Colors.black,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 12, bottom: 2.5),
                              child: Text("ABOUT ME",
                                  style: TextStyle(
                                      fontFamily: "TitilliumWeb",
                                      fontSize: 22.5,
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 2
                                        ..color = Colors.blue),
                                  textAlign: TextAlign.center),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 5.0,
                                  bottom: 10.0,
                                  left: 10.0,
                                  right: 10.0),
                              child: const Text(
                                  "Hi!, I'm a FrontEnd Developer from India❣. I'm doing Graduation in B.E(C.S.E) with specialization in Cyber Security from Chitkara University(Rajpura),Punjab. I'm a Passionate Learner and Developer.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "TitilliumWeb",
                                      fontSize: 16.0),
                                  textAlign: TextAlign.center),
                            ),
                          ])),
                  Container(
                      height: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(15.0),
                            ),
                        color: Colors.black,
                        // image: DecorationImage(
                        //     image: AssetImage('assets/background.png'),
                        //     fit: BoxFit.cover),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                margin: const EdgeInsets.only(
                                    top: 0, bottom: 20),
                                child: Text("MY SKILLS",
                                    style: TextStyle(
                                        fontFamily: "TitilliumWeb",
                                        fontSize: 22.5,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 2
                                          ..color = Colors.blue),
                                    textAlign: TextAlign.center)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/c.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white.withOpacity(1),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                                Image.asset(
                                  "assets/html.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white.withOpacity(1),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                                Image.asset(
                                  "assets/css.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white.withOpacity(1),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                                Image.asset(
                                  "assets/js.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white.withOpacity(1),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                                Image.asset(
                                  "assets/firebase.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white.withOpacity(1),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                                Image.asset(
                                  "assets/dart.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white.withOpacity(1),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                                Image.asset(
                                  "assets/flutter.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white.withOpacity(1),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                                Image.asset(
                                  "assets/python.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white.withOpacity(1),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                                Image.asset(
                                  "assets/git.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white.withOpacity(1),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                                Image.asset(
                                  "assets/linux.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white.withOpacity(1),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                              ],
                            ),
                            Container(
                                margin:
                                    const EdgeInsets.only(top: 25, bottom: 0),
                                child: Text("MY WORKS",
                                    style: TextStyle(
                                        fontFamily: "TitilliumWeb",
                                        fontSize: 22.5,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 2
                                          ..color = Colors.blue),
                                    textAlign: TextAlign.center)),
                          ])),
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      physics: const ScrollPhysics(),
                      children: <Widget>[

                        InkWell(
                            onTap: () {
                              Uri url = Uri.parse('https://yakshit-22.github.io/3D_Text_Animation/');
                              _launchURL(url);
                            },
                            child:
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15.0),
                                bottom: Radius.circular(15.0)),
                            image: DecorationImage(
                                image: AssetImage('assets/ta.png'),
                                fit: BoxFit.cover),
                          ),
                        )),

                        InkWell(
                            onTap: (){
                              Uri url = Uri.parse('https://github.com/YAKSHIT-22/WhatsApp_Ui');
                              _launchURL(url);
                            },
                            child:
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15.0),
                                bottom: Radius.circular(15.0)),
                            image: DecorationImage(
                                image: AssetImage('assets/app.png'),
                                fit: BoxFit.cover),
                          ),
                        )),
                        InkWell(
                            onTap: (){
                              Uri url = Uri.parse('https://yakshit-22.github.io/3D_WORLD/');
                              _launchURL(url);
                            },
                            child:
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15.0),
                                bottom: Radius.circular(15.0)),
                            image: DecorationImage(
                                image: AssetImage('assets/w.png'),
                                fit: BoxFit.cover),
                          ),
                        )),
                        InkWell(
                          onTap: (){
                            Uri url = Uri.parse('https://contact-form-eabbf.firebaseapp.com/');
                            _launchURL(url);
                            print("tapped");
                          },
                          child:
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15.0),
                                bottom: Radius.circular(15.0)),
                            image: DecorationImage(
                                image: AssetImage('assets/d.png'),
                                fit: BoxFit.fill),
                          ),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    height: 625,

                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(15.0),
                            bottom: Radius.circular(15.0)),
                        color: Colors.black,
                      ),
                    child:  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    Container(

    margin:
    const EdgeInsets.only(top: 10,),
    child: Text("CONTACT ME",
    style: TextStyle(
    fontFamily: "TitilliumWeb",
    fontSize: 22.5,
    foreground: Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2
    ..color = Colors.blue),
    textAlign: TextAlign.center),
    ),
      ContactUs(
        avatarRadius: 35.0,
        companyFontSize: 20.0,
        instagram: '@yakshit.g2203',
        logo: const AssetImage('assets/background.png'),
        email: 'yakshitgarg25@gmail.com',
        companyName: 'Yakshit Garg',
        phoneNumber: '+919416829839',
        dividerThickness: 2,
        website: 'https://yakshit-22.github.io/My_Portfolio/',
        githubUserName: 'YAKSHIT-22',
        tagLine: 'FrontEnd Developer',
        companyColor: Colors.white, cardColor: Colors.white, taglineColor: Colors.white, textColor: Colors.black,
      )
    ]
                    )),
                  Container(
                      height: 50,
                      margin: const EdgeInsets.only(
                          top: 10, bottom: 0),
                      color: Colors.black,
                      child: Center(
                          child: RichText(
                            textScaleFactor: .9,
                        text:

                        const TextSpan(
                          children: [
                            TextSpan(
                              text: "Copyright ",style:TextStyle(fontFamily: "TitilliumWeb") ,
                            ),
                            WidgetSpan(
                              child: Icon(Icons.copyright_rounded,color: Colors.white,size: 14),
                            ),
                            TextSpan(
                              text: " 2022 Yakshit Garg | All Rights Reserved",style:TextStyle(fontFamily: "TitilliumWeb"),
                            ),
                          ],
                        ),
                      ))),
                ],
              ),
            )
          ],
        ));
  }
}
_launchURL(Uri url) async {
  if (await canLaunchUrl(url)) {
    await _launchURL(url) ;
  } else {
    throw 'Could not launch $url';
  }
}

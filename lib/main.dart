import 'package:flutter/material.dart';
import 'package:tiles_2/LoadingScreen.dart';
import 'Pages.dart';
import 'package:liquid_swipe/liquid_swipe.dart';


void main() {
  runApp(MyApp());
}

class HomePage extends StatefulWidget {
  const HomePage();


  @override
  _HomePageState createState() => _HomePageState();
}

final allPages = [Pages(logo: "instagram", username: 'nishith_thakker', logo_web: 'https://instagram.com'),
                  Pages(logo: "twitter", username: "Nish_2002", logo_web: "https://twitter.com"),
                  Pages(logo: "snapchat", username: 'nishith_thakker', logo_web: 'https://snapchat.com'),
                  Pages(logo: "facebook", username: 'nishith_thakker', logo_web: 'https://facebook.com'),
                  Pages(logo: "linkedin", username: 'nishith_thakker', logo_web: 'https://linkedin.com'),];


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF040814),
            title: Row(
              children:<Widget>[
                Expanded(flex: 9, child: Text("Tiles")),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Image.asset(
                      "assets/images/Tiles.jpg",
                      height: 50,
                      width: 50,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FormN()));
                    },
                  ),
                ),
              ],
            ),
          ),
          body:LiquidSwipe(
              enableSideReveal: true,
                pages: allPages,
                enableLoop: true,
                fullTransitionValue: 1000,
                waveType: WaveType.liquidReveal,
                positionSlideIcon: 0.5),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.camera_alt),
            backgroundColor: Colors.green,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()), //ADD camera
              );
            },
          ),
          ),
        ),
      );
  }
}

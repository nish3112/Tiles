import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:tiles_2/main.dart';

class Pages extends StatefulWidget {
  Pages({required this.logo, required this.username, required this.logo_web});

  String logo = "";
  String logo_web = "";
  String username = "";

  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF111111),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CircleAvatar(
              radius: 45.0,
              backgroundImage:
                  AssetImage("assets/images/brands/${widget.logo}.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: QrImage(
              backgroundColor: Colors.white,
              data: "${widget.logo_web}/${widget.username}",
              version: QrVersions.auto,
              size: 200.0,
              gapless: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "${widget.username}",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FormN extends StatefulWidget {
  String? data_type_form;
  String? username;
  @override
  _FormNState createState() => _FormNState();
}

class _FormNState extends State<FormN> {
  String? data_type_form;
  String? username;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF040814),
          title: Center(
            child: RichText(
              text: TextSpan(
                text: ("Settings"),
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xFF868B8E),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Row(children: [
                SizedBox(
                  width: 100,
                  child: RichText(
                    text: TextSpan(
                      text: ("${widget.data_type_form}"),
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: TextField(
                    onChanged: (value) {
                    },
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      ),
                    ),
                  ),
                ),
                IconButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));}, icon: Icon(Icons.arrow_right))
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}

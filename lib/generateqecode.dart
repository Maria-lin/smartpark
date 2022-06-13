import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:smart_parking/resevation/reservationavance.dart';

class GeneratePage extends StatefulWidget {
 final  String  value;

  GeneratePage({Key key , this.value}): super(key: key);
  @override
  State<StatefulWidget> createState() => GeneratePageState(value: '');
}

class GeneratePageState extends State<GeneratePage> {



  String qr=
      "";
  String Data =
      "";
  TextEditingController dateinput = TextEditingController();
  final String  value;
  GeneratePageState({ this.value});
  String qrData =
      "grandeur initial ";
  @override void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Generator'),
        actions: <Widget>[],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            QrImage(
              //plce where the QR Image will be shown
              data: qrData,

            ),

            SizedBox(
              height: 20.0,
            ),


            Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
              child: FlatButton(
                padding: EdgeInsets.all(15.0),
                onPressed: () async {

                    setState(() {
                      Text(
                        "New QR Link Generator",
                        style: TextStyle(fontSize: 10.0),
                      );
                      qrData =  value;
                    });
                    Text(
                      qrData,
                      style: TextStyle(fontSize: 10.0),
                    );


                },
                child: Text(
                  "Generate QR",
                  style: TextStyle(
                      color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.deepPurpleAccent, width: 3.0),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            )
          ],
        ),
      ),
    );
  }

  final qrdataFeed = TextEditingController();
}

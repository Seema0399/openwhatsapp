import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenWhatsapp extends StatefulWidget {
  @override
  _OpenWhatsappState createState() => _OpenWhatsappState();
}

class _OpenWhatsappState extends State<OpenWhatsapp> {
  void launchWhatsapp({@required number, @required message}) async {
    String url = "whatsapp://send?phone=$number&text=$message";
    await canLaunch(url) ? launch(url) : print('cant Open Whatsapp');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              launchWhatsapp(number: '+919344889282', message: 'Hello');
            },
            child: Text('Open WhatsApp')),
      ),
    );
  }
}

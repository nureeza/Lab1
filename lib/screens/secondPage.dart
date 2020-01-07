import 'package:flutter/material.dart';
import 'package:lap3/screens/thirdPage.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final String titleString = "SecondPage";
  var textEditController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget widget = new ListView(
      children: <Widget>[
        ListTile(
          title: TextField(
            controller: textEditController,
          ),
        ),
        ListTile(
          
          title: RaisedButton(
            child: Text('Next to Third Page'),
            
            onPressed: () {
              var route = MaterialPageRoute(
                  builder: (BuildContext context) =>
                      ThirdPage(valueFromRegisterPage: textEditController.text));
              Navigator.of(context).push(route);
            },
          ),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: widget,
      /*  body: Container(
       child: Center(
          child: Image.asset('images/background.jpg'),
          
        ),
      ),*/
    );
  }
}

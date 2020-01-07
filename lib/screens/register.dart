import 'package:flutter/material.dart';
import 'package:lap3/screens/thirdPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final String titleString = "RegisterPage";
  var textEditController = new TextEditingController();
  var textEditController1 = new TextEditingController();
  var textEditController2 = new TextEditingController();
  var textEditController3 = new TextEditingController();
  var textEditController4 = new TextEditingController();
  
  @override
  
  Widget build(BuildContext context) {
    Widget widget = new ListView(
      children: <Widget>[
        ListTile(
          title: TextField(
            controller: textEditController,
            decoration: InputDecoration(
            labelText: 'Name'
            ),
          ),
        ),
        ListTile(
          title: TextField(
            controller: textEditController1,
            decoration: InputDecoration(
            labelText: 'Last Name'
            ),
          ), 
        ),

        ListTile(
          title: TextField(
            controller: textEditController2,
            decoration: InputDecoration(
            labelText: 'Age'
            ),
          ),
        ),

        ListTile(
          title: TextField(
            controller: textEditController3,
            decoration: InputDecoration(
            labelText: 'Address'
            ),
          ),
        ),

        ListTile(
          title: TextField(
            controller: textEditController4,
            decoration: InputDecoration(
            labelText: 'user'
            ),
          ),
        ),

        ListTile(
          
          title: RaisedButton(
            child: Text('Next to Third Page'),
            
            onPressed: () {
              var route = MaterialPageRoute(
                  builder: (BuildContext context) =>
                      ThirdPage(
                        valueFromRegisterPage: textEditController.text,
                        valueFromRegisterPage1: textEditController1.text,
                        valueFromRegisterPage2: textEditController2.text,
                        valueFromRegisterPage3: textEditController3.text,
                        valueFromRegisterPage4: textEditController4.text));
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
    );
  }
}

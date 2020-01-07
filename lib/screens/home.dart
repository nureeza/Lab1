import 'package:flutter/material.dart';
import 'package:lap3/screens/login.dart';
import 'package:lap3/screens/register.dart';
import 'package:lap3/screens/secondPage.dart';
import 'package:lap3/screens/thirdPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showlogo() {
    return Image.asset('images/logoo.png');
  }
var textEditController = new TextEditingController();
  Widget emailText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        controller: textEditController,
        decoration: InputDecoration(
            icon: Icon(
              Icons.email,
              size: 36.0,
              color: Colors.green[600],
            ),
            labelText: 'Username',
            hintText: 'your@email.com'),
      ),
    );
  }
var textEditController1 = new TextEditingController();
  Widget passwordText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        controller: textEditController1,
        decoration: InputDecoration(
            icon: Icon(
              Icons.vpn_key,
              size: 36.0,
              color: Colors.green[600],
            ),
            labelText: 'Password',
            hintText: 'Mode 6 character'),
            
      ),
    );
  }

  Widget buttonRegis() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(
          Icons.account_circle,
          color: Colors.green[400],
        ),
        color: Colors.brown[400],
        label: Text('Login'),
        onPressed: () {
          var route = MaterialPageRoute(
            builder: (BuildContext context) => loginPage(
              valueFromloginPage: textEditController.text,valueFromloginPage1: textEditController1.text,
            ));
          Navigator.of(context).push(route);
        },
      ),
    );
  }

  Widget buttonsRegis() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(
          Icons.add_box,
          color: Colors.green[400],
        ),
        color: Colors.brown[400],
        label: Text('Register'),
        onPressed: () {
          var route = MaterialPageRoute(
            builder: (BuildContext context) => RegisterPage());
          Navigator.of(context).push(route);
        },
      ),
    );
  }

  Widget showName() {
    return Text(
      'ยินดีต้อนรับ',
      style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.pink[300],
          fontStyle: FontStyle.italic),
    );
  }

  Widget showAdddress() {
    return Text(
      'Robot Lawn Mower',
      style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          color: Colors.orange[300],
          fontStyle: FontStyle.italic),
    );
  }

  Widget showAge() {
    return Text(
      'นูรีซา เส็นบัตร',
      style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue[300],
          fontStyle: FontStyle.italic),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[300],
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  showlogo(),
                  showName(),
                  showAge(),
                  showAdddress(),
                  emailText(),
                  passwordText(),
                  buttonRegis(),
                  buttonsRegis(),
                ],
              ),
            ),
          ),
        ));
  }
}

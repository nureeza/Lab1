import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showlogo() {
    return Image.asset('images/logoo.png');
  }

  Widget emailText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.email,
              size: 36.0,
              color: Colors.purple[800],
            ),
            labelText: 'Username',
            hintText: 'your@email.com'),
      ),
    );
  }

  Widget passwordText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.vpn_key,
              size: 36.0,
              color: Colors.purple[800],
            ),
            labelText: 'Password',
            hintText: 'Mode 6 character'),
      ),
    );
  }

  Widget buttonRegis() {
    return RaisedButton.icon(
      
      icon: Icon(
        Icons.account_circle,
        color: Colors.purple[800],
      ),
      color: Colors.green[800],
      label: Text('Login'),
      onPressed: () {},
    );
  }

  Widget buttonsRegis() {
    return RaisedButton.icon(
      icon: Icon(
        Icons.screen_lock_landscape,
        color: Colors.purple[800],
      ),
      color: Colors.green[800],
      label: Text('Register'),
      onPressed: () {},
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
      'อายุ21 ปี',
      style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          color: Colors.orange[300],
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
                image: AssetImage('images/backgrounds.png'),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  showlogo(),
                  showName(),
                  //showAge(),
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

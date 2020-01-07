import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  final String valueFromloginPage,
      valueFromloginPage1;
  loginPage(
      {Key key,
      this.valueFromloginPage,
      this.valueFromloginPage1,
      })
      : super(key: key);
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final String titleString = "loginPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: Text(
          "${widget.valueFromloginPage},\n${widget.valueFromloginPage1}"),
    );
  }
}

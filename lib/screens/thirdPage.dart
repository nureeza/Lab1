import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  final String valueFromRegisterPage,
      valueFromRegisterPage1,
      valueFromRegisterPage2,
      valueFromRegisterPage3,
      valueFromRegisterPage4;
  ThirdPage(
      {Key key,
      this.valueFromRegisterPage,
      this.valueFromRegisterPage1,
      this.valueFromRegisterPage2,
      this.valueFromRegisterPage3,
      this.valueFromRegisterPage4})
      : super(key: key);
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final String titleString = "ThirdPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: Text(
          "${widget.valueFromRegisterPage},\n${widget.valueFromRegisterPage1},\n${widget.valueFromRegisterPage2},\n${widget.valueFromRegisterPage3},\n${widget.valueFromRegisterPage4}"),
    );
  }
}

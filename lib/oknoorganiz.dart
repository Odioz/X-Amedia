import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';

// ignore: must_be_immutable
class OknoOrganiz extends StatefulWidget {
  final String arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10;

  OknoOrganiz(this.arg1, this.arg2, this.arg3, this.arg4, this.arg5, this.arg6,
      this.arg7, this.arg8, this.arg9, this.arg10);

  @override
  _OknoOrganizState createState() => _OknoOrganizState();
}

class _OknoOrganizState extends State<OknoOrganiz> {
  bool vis4 = false,
      vis5 = false,
      vis6 = false,
      vis7 = false,
      vis8 = false,
      vis9 = false,
      vis10 = false;

  @override
  Widget build(BuildContext context) {
    if (widget.arg4 != '') {
      vis4 = true;
    }
    if (widget.arg5 != '') {
      vis5 = true;
    }
    if (widget.arg6 != '') {
      vis6 = true;
    }
    if (widget.arg7 != '') {
      vis7 = true;
    }
    if (widget.arg8 != '') {
      vis8 = true;
    }
    if (widget.arg9 != '') {
      vis9 = true;
    }
    if (widget.arg10 != '') {
      vis10 = true;
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(53, 193, 241, 1),
        ),
        body: SingleChildScrollView(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.all(4),
                child: Image(
                  image: AssetImage(widget.arg2),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    widget.arg1,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 141, 210, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  )),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(widget.arg3,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 148, 62, 1), fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Visibility(
                  child: Text('адрес: ' + widget.arg4,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 148, 62, 1), fontSize: 16)),
                  visible: vis4,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Visibility(
                  child: Text('телефон: ' + widget.arg5,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 148, 62, 1), fontSize: 16)),
                  visible: vis5,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Visibility(
                  child: Text('эл.почта: ' + widget.arg6,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 148, 62, 1), fontSize: 16)),
                  visible: vis6,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (vis7)
                      ImageButton(
                        children: <Widget>[],
                        width: 50,
                        height: 50,
                        pressedImage: Image.asset('images/socs7.png'),
                        unpressedImage: Image.asset('images/socs71.png'),
                        onTap: () {
                          print('tap!');
                        },
                      ),
                    if (vis8)
                      ImageButton(
                        children: <Widget>[],
                        width: 50,
                        height: 50,
                        pressedImage: Image.asset('images/socs8.png'),
                        unpressedImage: Image.asset('images/socs81.png'),
                        onTap: () {
                          print('tap!');
                        },
                      ),
                    if (vis9)
                      ImageButton(
                        children: <Widget>[],
                        width: 50,
                        height: 50,
                        pressedImage: Image.asset('images/socs9.png'),
                        unpressedImage: Image.asset('images/socs91.png'),
                        onTap: () {
                          print('tap!');
                        },
                      ),
                    if (vis10)
                      ImageButton(
                        children: <Widget>[],
                        width: 50,
                        height: 50,
                        pressedImage: Image.asset('images/socs10.png'),
                        unpressedImage: Image.asset('images/socs101.png'),
                        onTap: () {
                          print('tap!');
                        },
                      ),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}

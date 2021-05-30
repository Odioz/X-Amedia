import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:android_intent/android_intent.dart';
import 'package:platform/platform.dart';
//import 'package:imagebutton/imagebutton.dart';

// ignore: must_be_immutable
class OknoOrganiz extends StatefulWidget {
  final String arg1,
      arg2,
      arg3,
      arg4,
      arg5,
      arg6,
      arg7,
      arg8,
      arg9,
      arg10,
      arg11,
      arg12;

  OknoOrganiz(this.arg1, this.arg2, this.arg3, this.arg4, this.arg5, this.arg6,
      this.arg7, this.arg8, this.arg9, this.arg10, this.arg11, this.arg12);

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
      vis10 = false,
      vis11 = false,
      vis12 = false;

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
    if (widget.arg11 != '') {
      vis11 = true;
    }
    if (widget.arg12 != '') {
      vis12 = true;
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
                  child: Text('эл.почта: ' + widget.arg7,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 148, 62, 1), fontSize: 16)),
                  visible: vis7,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (vis6) //иконка позвонить
                      IconButton(
                          icon: Icon(Icons.call),
                          iconSize: 60,
                          color: Color.fromRGBO(65, 183, 93, 1),
                          splashRadius: 50,
                          splashColor: Color.fromRGBO(65, 183, 93, 0.4),
                          highlightColor: Color.fromRGBO(65, 183, 93, 0.2),
                          tooltip: "Позвонить",
                          onPressed: () async => await launch("tel:"+widget.arg6) ),
                    if (vis7) //иконка отправ письмо
                      IconButton(
                        icon: Icon(Icons.mail),
                        iconSize: 60,
                        color: Color.fromRGBO(65, 183, 93, 1),
                        splashRadius: 50,
                        splashColor: Color.fromRGBO(65, 183, 93, 0.4),
                        highlightColor: Color.fromRGBO(65, 183, 93, 0.2),
                        tooltip: "Написать письмо",
                        onPressed: () async => await launch("mailto:"+widget.arg7),
                      ),
                    if (vis8) //иконка вебсайт
                      IconButton(
                        icon: Icon(Icons.open_in_browser),
                        iconSize: 60,
                        color: Color.fromRGBO(65, 183, 93, 1),
                        splashRadius: 50,
                        splashColor: Color.fromRGBO(65, 183, 93, 0.4),
                        highlightColor: Color.fromRGBO(65, 183, 93, 0.2),
                        tooltip: "Веб-сайт",
                        onPressed: () async {
                            if (const LocalPlatform().isAndroid) {
                                 AndroidIntent intent = AndroidIntent(
                                  action: 'action_view',
                                  data: widget.arg8,
                            );
                            await intent.launch();
                          }
                          },
                      ),
                    if (vis9) //иконка инста
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.instagram),
                        iconSize: 60,
                        color: Color.fromRGBO(65, 183, 93, 1),
                        splashRadius: 50,
                        splashColor: Color.fromRGBO(65, 183, 93, 0.4),
                        highlightColor: Color.fromRGBO(65, 183, 93, 0.2),
                        tooltip: "Instagram страница",
                        onPressed: () async {
                            if (const LocalPlatform().isAndroid) {
                                 AndroidIntent intent = AndroidIntent(
                                  action: 'action_view',
                                  data: widget.arg9
                            );
                            await intent.launch();
                          }
                          },
                      ),
                    if (vis10) //ютьюб
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.youtube),
                        iconSize: 60,
                        color: Color.fromRGBO(65, 183, 93, 1),
                        splashRadius: 50,
                        splashColor: Color.fromRGBO(65, 183, 93, 0.4),
                        highlightColor: Color.fromRGBO(65, 183, 93, 0.2),
                        tooltip: "Youtube канал",
                        onPressed: () async {
                            if (const LocalPlatform().isAndroid) {
                                 AndroidIntent intent = AndroidIntent(
                                  action: 'action_view',
                                  data: widget.arg10
                            );
                            await intent.launch();
                          }
                          },
                      ),
                    if (vis11) //вацап
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.whatsapp),
                        iconSize: 60,
                        color: Color.fromRGBO(65, 183, 93, 1),
                        splashRadius: 50,
                        splashColor: Color.fromRGBO(65, 183, 93, 0.4),
                        highlightColor: Color.fromRGBO(65, 183, 93, 0.2),
                        tooltip: "Группа WhatsApp",
                        onPressed: () async {
                            if (const LocalPlatform().isAndroid) {
                                 AndroidIntent intent = AndroidIntent(
                                  action: 'action_view',
                                  data: widget.arg11
                            );
                            await intent.launch();
                          }
                          },
                      ),
                      if (vis12) //плеймаркет
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.googlePlay),
                        iconSize: 60,
                        color: Color.fromRGBO(65, 183, 93, 1),
                        splashRadius: 50,
                        splashColor: Color.fromRGBO(65, 183, 93, 0.4),
                        highlightColor: Color.fromRGBO(65, 183, 93, 0.2),
                        tooltip: "Приложение в GooglePlay",
                        onPressed: () async {
                            if (const LocalPlatform().isAndroid) {
                                 AndroidIntent intent = AndroidIntent(
                                  action: 'action_view',
                                  data: widget.arg12
                            );
                            await intent.launch();
                          }
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

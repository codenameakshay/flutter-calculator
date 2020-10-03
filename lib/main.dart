import 'dart:typed_data';
import 'package:expression_language/expression_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;

var lightMode = true;
var widthpixels = 720;
var heightpixels = 1440;
var txt = TextEditingController();
Color mainTheme = mainLight;
Color mainLight = Color(0xFFC6D8F7);
Color mainDark = Color(0xFF26282B);
Color darkModeText = mainLight;
Color lightModeText = mainDark;
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  _MyAppState();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: mainTheme,
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            txt.text = '';
          },
          child: Text(
            'AC',
            style: TextStyle(
              fontFamily: 'IBM Plex Sans',
              color: lightMode ? lightModeText : darkModeText,
              fontSize: 24.0000000000,
              fontWeight: FontWeight.bold,
            ),
          ),
          foregroundColor: _ColorCatalog.instance.color_4,
          backgroundColor: mainTheme,
        ),
        drawer: Drawer(
          child: Container(
            color: mainTheme,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Image.network(
                    'https://avatars2.githubusercontent.com/u/60510869?s=460&u=ea7872a9aa9189cfc2b0910a51e4b83d458709a3&v=4',
                  ),
                  decoration: BoxDecoration(
                    color: mainTheme,
                  ),
                ),
                ListTile(
                  title: Center(
                    child: Text('CodeNameAKshay', style: TextStyle(color: lightMode ? lightModeText : darkModeText),),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                Builder(
                  builder: (context) => ListTile(
                    title: Text('Clear memory',  style: TextStyle(color: lightMode ? lightModeText : darkModeText)),
                    leading: Icon(Icons.memory,color: lightMode ? lightModeText : darkModeText,),
                    onTap: () {
                      txt.text = '';
                    },
                  ),
                ),
                Builder(
                  builder: (context) => ListTile(
                    title: Text('Change Theme',  style: TextStyle(color: lightMode ? lightModeText : darkModeText)),
                    leading: Icon(Icons.brightness_4, color: lightMode ? lightModeText : darkModeText,),
                    onTap: () {
                      setState(
                        () {
                          // mainLight = Color(0xFF26282B);
                          // _ColorCatalog.instance = darkMode
                          //     ? _ColorCatalog.instancelight
                          //     : _ColorCatalog.instancedark;
                          // darkMode = darkMode ? false : true;
                          mainTheme = lightMode ? mainDark : mainLight;
                          if(lightMode == false){
                            setState(() {
                              lightMode = true;
                            });
                          }else{
                            setState(() {
                              lightMode = false;
                            });
                          }
                        },
                      );
                      Navigator.pop(context);
                    },
                  ),
                ),
                Builder(
                  builder: (context) => ListTile(
                    leading: Icon(Icons.open_in_browser, color: lightMode ? lightModeText : darkModeText,),
                    title: new InkWell(
                        child: Text('Visit my website!',  style: TextStyle(color: lightMode ? lightModeText : darkModeText)),
                        onTap: () {
                          launch('http://codenameakshay.tech');
                          Navigator.pop(context);
                        }),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          iconTheme: new IconThemeData(color: lightMode ? lightModeText : darkModeText,),
          title: Center(
            child: Padding(
              padding: EdgeInsets.only(
                right: (25.0),
              ),
              child: Text(
                'Calculator',
                style: TextStyle(
                  fontFamily: 'IBM Plex Sans',
                  color: lightMode ? lightModeText : darkModeText,
                  fontSize: 24.0000000000,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          backgroundColor: mainTheme,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                child: Center(
                  child: Container(
                    height: 264,
                    margin: EdgeInsets.all(30.0),
                    child: TextField(
                      showCursor: false,
                      controller: txt,

                      readOnly: true,
                      expands: true,
                      minLines: null,
                      maxLines: null,
                      style: TextStyle(
                        fontFamily: 'IBM Plex Sans',
                        color: lightMode ? lightModeText : darkModeText,
                        fontSize: 24.0000000000,
                        fontWeight: FontWeight.bold,
                      ),
                      // maxLength: 5,
                      // maxLengthEnforced: true,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: lightMode ? lightModeText : darkModeText,),
                          border: InputBorder.none,
                          hintText:
                              'Enter the expression\nyou want to calculate'),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: Container(
                child: Center(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 28.0,
                                          right: 10.0,
                                          left: 20.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("7"),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 28.0,
                                          right: 10.0,
                                          left: 10.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("8"),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 28.0,
                                          right: 10.0,
                                          left: 11.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("9"),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 28.0,
                                          right: 10.0,
                                          left: 10.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("+"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 26.0,
                                          right: 10.0,
                                          left: 20.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("4"),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 26.0,
                                          right: 10.0,
                                          left: 10.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("5"),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 26.0,
                                          right: 10.0,
                                          left: 11.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("6"),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 26.0,
                                          right: 10.0,
                                          left: 10.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("-"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 26.0,
                                          right: 10.0,
                                          left: 20.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("1"),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 26.0,
                                          right: 10.0,
                                          left: 10.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("2"),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 26.0,
                                      right: 10.0,
                                      left: 11.0,
                                      bottom: 10.0,
                                    ),
                                    child: AndroidButton1("3"),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 26.0,
                                          right: 10.0,
                                          left: 10.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("*"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 26.0,
                                          right: 10.0,
                                          left: 20.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("."),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 26.0,
                                          right: 10.0,
                                          left: 10.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("0"),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 26.0,
                                          right: 10.0,
                                          left: 11.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("="),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 26.0,
                                          right: 10.0,
                                          left: 10.0,
                                          bottom: 10.0,
                                        ),
                                        child: AndroidButton1("/"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AndroidButton1 extends StatelessWidget {
  String inputText = "";

  AndroidButton1(this.inputText);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 68.0,
    //   height: 59.0,
    //   child: LayoutBuilder(
    //     builder: (BuildContext context, BoxConstraints constraints) {
    return Container(
      // buttonColor: _ColorCatalog.instance.color_1,
      width: 75.0 / widthpixels * 1080 / 1.45,
      height: 65.0 / heightpixels * 2160 / 1.35,
      child: NeuButton(
        decoration: NeumorphicDecoration(
          color: mainTheme,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Text(inputText,  style: TextStyle(fontFamily: 'IBM Plex Sans', fontSize: 25, color: lightMode ? lightModeText : darkModeText)),
        onPressed: () {
          if (inputText == "=") {
            String b = txt.text;
            var expressionGrammarDefinition = ExpressionGrammarParser({});
            var parser = expressionGrammarDefinition.build();
            var result = parser.parse(b);
            var expression = result.value as Expression;
            var value = expression.evaluate();
            txt.text = value.toString(); // = true
          } else {
            txt.text += inputText;
            HapticFeedback.vibrate();
          }
          ;
        },
      ),
    );
    //     },
    //   ),
    // );
  }
}

class AndroidPainter extends CustomPainter {
  AndroidPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(-277.0000000000, 320.0000000000);

// 9:6 : Android (COMPONENT)
    var draw_9_6 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          277.0000000000,
          -320.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:291,t:-320,r:-291,b:-291,w:332,h:258) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 9:5 : Rectangle 28 (RECTANGLE)
      var draw_9_5 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(10.0, 10.0000000000, 340.0000000000,
            244.0000000000) /* H:SCALE V:SCALE F:(l:0,t:-18,r:0,b:0,w:332,h:278) */;
        canvas.save();
        canvas.scale((container.width) / 360.0000000000,
            (container.height) / 254.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 332.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 278.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          Path()
            ..addRRect(RRect.fromRectAndRadius(
                Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                Radius.circular(15)))
        ];
        fillGeometry.forEach((path) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_0);
        });
        canvas.restore();
      };
      draw_9_5(canvas, frame);
      canvas.restore();
    };
    draw_9_6(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(AndroidPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(AndroidPainter oldDelegate) {
    return false;
  }
}

class Android2Painter extends CustomPainter {
  Android2Painter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(-277.0000000000, 33.0000000000);

// 9:197 : Android - 2 (COMPONENT)
    var draw_9_197 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          277.0000000000,
          -33.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:277,t:-33,r:-277,b:-277,w:360,h:353) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 9:192 : Row1 (INSTANCE)
      var draw_9_192 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(14.0000000000, 13.0000000000, 332.0000000000,
            77.0000000000) /* H:SCALE V:SCALE F:(l:14,t:13,r:14,b:14,w:332,h:77) */;
        canvas.save();
        canvas.scale((container.width) / 360.0000000000,
            (container.height) / 353.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.drawRect(Offset.zero & frame.size,
            (Paint()..color = _ColorCatalog.instance.color_1));

// I9:192;9:7 : Rectangle 9 (RECTANGLE)
        var draw_I9_192__9_7 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(0.0, 0.0, 332.0000000000,
              77.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:332,h:77) */;
          canvas.save();
          canvas.scale((container.width) / 332.0000000000,
              (container.height) / 77.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 332.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 77.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            Path()
              ..addRRect(RRect.fromRectAndRadius(
                  Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                  Radius.circular(15)))
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          canvas.restore();
        };
        draw_I9_192__9_7(canvas, frame);

// I9:192;9:137 : Button/7 (INSTANCE)
        var draw_I9_192__9_137 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(91.0000000000, 9.0000000000, 68.0000000000,
              59.0000000000) /* H:SCALE V:SCALE F:(l:91,t:9,r:173,b:173,w:68,h:59) */;
          canvas.save();
          canvas.scale((container.width) / 332.0000000000,
              (container.height) / 77.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          canvas.drawRect(Offset.zero & frame.size,
              (Paint()..color = _ColorCatalog.instance.color_1));

// I9:192;9:137;9:74 : Rectangle 25 (RECTANGLE)
          var draw_I9_192__9_137__9_74 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
            canvas.save();
            canvas.scale((container.width) / 68.0000000000,
                (container.height) / 59.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 68.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 59.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              Path()
                ..addRRect(RRect.fromRectAndRadius(
                    Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                    Radius.circular(10)))
            ];
            fillGeometry.forEach((path) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_1);
            });
            canvas.restore();
          };
          draw_I9_192__9_137__9_74(canvas, frame);

// I9:192;9:137;9:85 : 8 (TEXT)
          var draw_I9_192__9_137__9_85 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                25.3559322357,
                14.0000000000,
                17.2881374359,
                31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
            canvas.save();
            canvas.scale((container.width) / 68.0000000000,
                (container.height) / 59.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
            var paragraphStyle = ui.ParagraphStyle(
              fontFamily: 'IBM Plex Sans',
              textAlign: TextAlign.center,
              fontSize: 24.0000000000,
              fontWeight: FontWeight.w600,
            );
            var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
              ..pushStyle(style_0);
            paragraphBuilder.addText("8");
            var paragraph = paragraphBuilder.build();
            paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
            canvas.drawParagraph(paragraph, Offset.zero);
            canvas.restore();
          };
          draw_I9_192__9_137__9_85(canvas, frame);
          canvas.restore();
        };
        draw_I9_192__9_137(canvas, frame);

// I9:192;9:138 : Button/7 (INSTANCE)
        var draw_I9_192__9_138 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(172.0000000000, 9.0000000000, 68.0000000000,
              59.0000000000) /* H:SCALE V:SCALE F:(l:172,t:9,r:92,b:92,w:68,h:59) */;
          canvas.save();
          canvas.scale((container.width) / 332.0000000000,
              (container.height) / 77.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          canvas.drawRect(Offset.zero & frame.size,
              (Paint()..color = _ColorCatalog.instance.color_1));

// I9:192;9:138;9:74 : Rectangle 25 (RECTANGLE)
          var draw_I9_192__9_138__9_74 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
            canvas.save();
            canvas.scale((container.width) / 68.0000000000,
                (container.height) / 59.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 68.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 59.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              Path()
                ..addRRect(RRect.fromRectAndRadius(
                    Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                    Radius.circular(10)))
            ];
            fillGeometry.forEach((path) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_1);
            });
            canvas.restore();
          };
          draw_I9_192__9_138__9_74(canvas, frame);

// I9:192;9:138;9:85 : 9 (TEXT)
          var draw_I9_192__9_138__9_85 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                25.3559322357,
                14.0000000000,
                17.2881374359,
                31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
            canvas.save();
            canvas.scale((container.width) / 68.0000000000,
                (container.height) / 59.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
            var paragraphStyle = ui.ParagraphStyle(
              fontFamily: 'IBM Plex Sans',
              textAlign: TextAlign.center,
              fontSize: 24.0000000000,
              fontWeight: FontWeight.w600,
            );
            var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
              ..pushStyle(style_0);
            paragraphBuilder.addText("9");
            var paragraph = paragraphBuilder.build();
            paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
            canvas.drawParagraph(paragraph, Offset.zero);
            canvas.restore();
          };
          draw_I9_192__9_138__9_85(canvas, frame);
          canvas.restore();
        };
        draw_I9_192__9_138(canvas, frame);

// I9:192;9:139 : Button/7 (INSTANCE)
        var draw_I9_192__9_139 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(253.0000000000, 9.0000000000, 68.0000000000,
              59.0000000000) /* H:LEFT V:TOP F:(l:253,t:9,r:11,b:11,w:68,h:59) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          canvas.drawRect(Offset.zero & frame.size,
              (Paint()..color = _ColorCatalog.instance.color_1));

// I9:192;9:139;9:74 : Rectangle 25 (RECTANGLE)
          var draw_I9_192__9_139__9_74 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
            canvas.save();
            canvas.scale((container.width) / 68.0000000000,
                (container.height) / 59.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 68.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 59.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              Path()
                ..addRRect(RRect.fromRectAndRadius(
                    Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                    Radius.circular(10)))
            ];
            fillGeometry.forEach((path) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_1);
            });
            canvas.restore();
          };
          draw_I9_192__9_139__9_74(canvas, frame);

// I9:192;9:139;9:85 : + (TEXT)
          var draw_I9_192__9_139__9_85 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                25.3559322357,
                14.0000000000,
                17.2881374359,
                31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
            canvas.save();
            canvas.scale((container.width) / 68.0000000000,
                (container.height) / 59.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
            var paragraphStyle = ui.ParagraphStyle(
              fontFamily: 'IBM Plex Sans',
              textAlign: TextAlign.center,
              fontSize: 24.0000000000,
              fontWeight: FontWeight.w600,
            );
            var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
              ..pushStyle(style_0);
            paragraphBuilder.addText("+");
            var paragraph = paragraphBuilder.build();
            paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
            canvas.drawParagraph(paragraph, Offset.zero);
            canvas.restore();
          };
          draw_I9_192__9_139__9_85(canvas, frame);
          canvas.restore();
        };
        draw_I9_192__9_139(canvas, frame);

// I9:192;9:140 : Button/7 (INSTANCE)
        var draw_I9_192__9_140 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(10.0000000000, 9.0000000000, 68.0000000000,
              59.0000000000) /* H:LEFT V:TOP F:(l:10,t:9,r:254,b:254,w:68,h:59) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          canvas.drawRect(Offset.zero & frame.size,
              (Paint()..color = _ColorCatalog.instance.color_1));

// I9:192;9:140;9:74 : Rectangle 25 (RECTANGLE)
          var draw_I9_192__9_140__9_74 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
            canvas.save();
            canvas.scale((container.width) / 68.0000000000,
                (container.height) / 59.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 68.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 59.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              Path()
                ..addRRect(RRect.fromRectAndRadius(
                    Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                    Radius.circular(10)))
            ];
            fillGeometry.forEach((path) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_1);
            });
            canvas.restore();
          };
          draw_I9_192__9_140__9_74(canvas, frame);

// I9:192;9:140;9:85 : 7 (TEXT)
          var draw_I9_192__9_140__9_85 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                25.3559322357,
                14.0000000000,
                17.2881374359,
                31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
            canvas.save();
            canvas.scale((container.width) / 68.0000000000,
                (container.height) / 59.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
            var paragraphStyle = ui.ParagraphStyle(
              fontFamily: 'IBM Plex Sans',
              textAlign: TextAlign.center,
              fontSize: 24.0000000000,
              fontWeight: FontWeight.w600,
            );
            var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
              ..pushStyle(style_0);
            paragraphBuilder.addText("7");
            var paragraph = paragraphBuilder.build();
            paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
            canvas.drawParagraph(paragraph, Offset.zero);
            canvas.restore();
          };
          draw_I9_192__9_140__9_85(canvas, frame);
          canvas.restore();
        };
        draw_I9_192__9_140(canvas, frame);
        canvas.restore();
      };
      draw_9_192(canvas, frame);

// 9:194 : Row2 (INSTANCE)
      var draw_9_194 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(14.0000000000, 98.0000000000, 332.0000000000,
            77.0000000000) /* H:SCALE V:SCALE F:(l:14,t:98,r:14,b:14,w:332,h:77) */;
        canvas.save();
        canvas.scale((container.width) / 360.0000000000,
            (container.height) / 353.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.drawRect(Offset.zero & frame.size,
            (Paint()..color = _ColorCatalog.instance.color_1));

// I9:194;9:10 : Row1 (INSTANCE)
        var draw_I9_194__9_10 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(0.0, 0.0, 332.0000000000,
              77.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:332,h:77) */;
          canvas.save();
          canvas.scale((container.width) / 332.0000000000,
              (container.height) / 77.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          canvas.drawRect(Offset.zero & frame.size,
              (Paint()..color = _ColorCatalog.instance.color_1));

// I9:194;9:10;9:7 : Rectangle 9 (RECTANGLE)
          var draw_I9_194__9_10__9_7 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(0.0, 0.0, 332.0000000000,
                77.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:332,h:77) */;
            canvas.save();
            canvas.scale((container.width) / 332.0000000000,
                (container.height) / 77.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 332.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 77.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              Path()
                ..addRRect(RRect.fromRectAndRadius(
                    Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                    Radius.circular(15)))
            ];
            fillGeometry.forEach((path) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_0);
            });
            canvas.restore();
          };
          draw_I9_194__9_10__9_7(canvas, frame);

// I9:194;9:10;9:137 : Button/7 (INSTANCE)
          var draw_I9_194__9_10__9_137 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                91.0000000000,
                9.0000000000,
                68.0000000000,
                59.0000000000) /* H:SCALE V:SCALE F:(l:91,t:9,r:173,b:173,w:68,h:59) */;
            canvas.save();
            canvas.scale((container.width) / 332.0000000000,
                (container.height) / 77.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_1));

// I9:194;9:10;9:137;9:74 : Rectangle 25 (RECTANGLE)
            var draw_I9_194__9_10__9_137__9_74 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                  59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 68.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 59.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      Radius.circular(10)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_1);
              });
              canvas.restore();
            };
            draw_I9_194__9_10__9_137__9_74(canvas, frame);

// I9:194;9:10;9:137;9:85 : 5 (TEXT)
            var draw_I9_194__9_10__9_137__9_85 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  25.3559322357,
                  14.0000000000,
                  17.2881374359,
                  31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'IBM Plex Sans',
                textAlign: TextAlign.center,
                fontSize: 24.0000000000,
                fontWeight: FontWeight.w600,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("5");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            };
            draw_I9_194__9_10__9_137__9_85(canvas, frame);
            canvas.restore();
          };
          draw_I9_194__9_10__9_137(canvas, frame);

// I9:194;9:10;9:138 : Button/7 (INSTANCE)
          var draw_I9_194__9_10__9_138 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                172.0000000000,
                9.0000000000,
                68.0000000000,
                59.0000000000) /* H:SCALE V:SCALE F:(l:172,t:9,r:92,b:92,w:68,h:59) */;
            canvas.save();
            canvas.scale((container.width) / 332.0000000000,
                (container.height) / 77.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_1));

// I9:194;9:10;9:138;9:74 : Rectangle 25 (RECTANGLE)
            var draw_I9_194__9_10__9_138__9_74 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                  59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 68.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 59.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      Radius.circular(10)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_1);
              });
              canvas.restore();
            };
            draw_I9_194__9_10__9_138__9_74(canvas, frame);

// I9:194;9:10;9:138;9:85 : 6 (TEXT)
            var draw_I9_194__9_10__9_138__9_85 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  25.3559322357,
                  14.0000000000,
                  17.2881374359,
                  31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'IBM Plex Sans',
                textAlign: TextAlign.center,
                fontSize: 24.0000000000,
                fontWeight: FontWeight.w600,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("6");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            };
            draw_I9_194__9_10__9_138__9_85(canvas, frame);
            canvas.restore();
          };
          draw_I9_194__9_10__9_138(canvas, frame);

// I9:194;9:10;9:139 : Button/7 (INSTANCE)
          var draw_I9_194__9_10__9_139 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                253.0000000000,
                9.0000000000,
                68.0000000000,
                59.0000000000) /* H:LEFT V:TOP F:(l:253,t:9,r:11,b:11,w:68,h:59) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_1));

// I9:194;9:10;9:139;9:74 : Rectangle 25 (RECTANGLE)
            var draw_I9_194__9_10__9_139__9_74 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                  59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 68.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 59.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      Radius.circular(10)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_1);
              });
              canvas.restore();
            };
            draw_I9_194__9_10__9_139__9_74(canvas, frame);

// I9:194;9:10;9:139;9:85 : + (TEXT)
            var draw_I9_194__9_10__9_139__9_85 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  25.3559322357,
                  14.0000000000,
                  17.2881374359,
                  31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'IBM Plex Sans',
                textAlign: TextAlign.center,
                fontSize: 24.0000000000,
                fontWeight: FontWeight.w600,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("-");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            };
            draw_I9_194__9_10__9_139__9_85(canvas, frame);
            canvas.restore();
          };
          draw_I9_194__9_10__9_139(canvas, frame);

// I9:194;9:10;9:140 : Button/7 (INSTANCE)
          var draw_I9_194__9_10__9_140 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                10.0000000000,
                9.0000000000,
                68.0000000000,
                59.0000000000) /* H:LEFT V:TOP F:(l:10,t:9,r:254,b:254,w:68,h:59) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_1));

// I9:194;9:10;9:140;9:74 : Rectangle 25 (RECTANGLE)
            var draw_I9_194__9_10__9_140__9_74 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                  59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 68.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 59.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      Radius.circular(10)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_1);
              });
              canvas.restore();
            };
            draw_I9_194__9_10__9_140__9_74(canvas, frame);

// I9:194;9:10;9:140;9:85 : 4 (TEXT)
            var draw_I9_194__9_10__9_140__9_85 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  25.3559322357,
                  14.0000000000,
                  17.2881374359,
                  31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'IBM Plex Sans',
                textAlign: TextAlign.center,
                fontSize: 24.0000000000,
                fontWeight: FontWeight.w600,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("4");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            };
            draw_I9_194__9_10__9_140__9_85(canvas, frame);
            canvas.restore();
          };
          draw_I9_194__9_10__9_140(canvas, frame);
          canvas.restore();
        };
        draw_I9_194__9_10(canvas, frame);
        canvas.restore();
      };
      draw_9_194(canvas, frame);

// 9:195 : Row3 (INSTANCE)
      var draw_9_195 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(14.0000000000, 183.0000000000, 332.0000000000,
            77.0000000000) /* H:SCALE V:SCALE F:(l:14,t:183,r:14,b:14,w:332,h:77) */;
        canvas.save();
        canvas.scale((container.width) / 360.0000000000,
            (container.height) / 353.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.drawRect(Offset.zero & frame.size,
            (Paint()..color = _ColorCatalog.instance.color_1));

// I9:195;9:12 : Row1 (INSTANCE)
        var draw_I9_195__9_12 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(0.0, 0.0, 332.0000000000,
              77.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:332,h:77) */;
          canvas.save();
          canvas.scale((container.width) / 332.0000000000,
              (container.height) / 77.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          canvas.drawRect(Offset.zero & frame.size,
              (Paint()..color = _ColorCatalog.instance.color_1));

// I9:195;9:12;9:7 : Rectangle 9 (RECTANGLE)
          var draw_I9_195__9_12__9_7 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(0.0, 0.0, 332.0000000000,
                77.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:332,h:77) */;
            canvas.save();
            canvas.scale((container.width) / 332.0000000000,
                (container.height) / 77.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 332.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 77.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              Path()
                ..addRRect(RRect.fromRectAndRadius(
                    Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                    Radius.circular(15)))
            ];
            fillGeometry.forEach((path) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_0);
            });
            canvas.restore();
          };
          draw_I9_195__9_12__9_7(canvas, frame);

// I9:195;9:12;9:137 : Button/7 (INSTANCE)
          var draw_I9_195__9_12__9_137 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                91.0000000000,
                9.0000000000,
                68.0000000000,
                59.0000000000) /* H:SCALE V:SCALE F:(l:91,t:9,r:173,b:173,w:68,h:59) */;
            canvas.save();
            canvas.scale((container.width) / 332.0000000000,
                (container.height) / 77.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_1));

// I9:195;9:12;9:137;9:74 : Rectangle 25 (RECTANGLE)
            var draw_I9_195__9_12__9_137__9_74 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                  59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 68.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 59.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      Radius.circular(10)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_1);
              });
              canvas.restore();
            };
            draw_I9_195__9_12__9_137__9_74(canvas, frame);

// I9:195;9:12;9:137;9:85 : 2 (TEXT)
            var draw_I9_195__9_12__9_137__9_85 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  25.3559322357,
                  14.0000000000,
                  17.2881374359,
                  31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'IBM Plex Sans',
                textAlign: TextAlign.center,
                fontSize: 24.0000000000,
                fontWeight: FontWeight.w600,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("2");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            };
            draw_I9_195__9_12__9_137__9_85(canvas, frame);
            canvas.restore();
          };
          draw_I9_195__9_12__9_137(canvas, frame);

// I9:195;9:12;9:138 : Button/7 (INSTANCE)
          var draw_I9_195__9_12__9_138 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                172.0000000000,
                9.0000000000,
                68.0000000000,
                59.0000000000) /* H:SCALE V:SCALE F:(l:172,t:9,r:92,b:92,w:68,h:59) */;
            canvas.save();
            canvas.scale((container.width) / 332.0000000000,
                (container.height) / 77.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_1));

// I9:195;9:12;9:138;9:74 : Rectangle 25 (RECTANGLE)
            var draw_I9_195__9_12__9_138__9_74 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                  59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 68.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 59.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      Radius.circular(10)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_1);
              });
              canvas.restore();
            };
            draw_I9_195__9_12__9_138__9_74(canvas, frame);

// I9:195;9:12;9:138;9:85 : 3 (TEXT)
            var draw_I9_195__9_12__9_138__9_85 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  25.3559322357,
                  14.0000000000,
                  17.2881374359,
                  31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'IBM Plex Sans',
                textAlign: TextAlign.center,
                fontSize: 24.0000000000,
                fontWeight: FontWeight.w600,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("3");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            };
            draw_I9_195__9_12__9_138__9_85(canvas, frame);
            canvas.restore();
          };
          draw_I9_195__9_12__9_138(canvas, frame);

// I9:195;9:12;9:139 : Button/7 (INSTANCE)
          var draw_I9_195__9_12__9_139 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                253.0000000000,
                9.0000000000,
                68.0000000000,
                59.0000000000) /* H:LEFT V:TOP F:(l:253,t:9,r:11,b:11,w:68,h:59) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_1));

// I9:195;9:12;9:139;9:74 : Rectangle 25 (RECTANGLE)
            var draw_I9_195__9_12__9_139__9_74 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                  59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 68.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 59.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      Radius.circular(10)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_1);
              });
              canvas.restore();
            };
            draw_I9_195__9_12__9_139__9_74(canvas, frame);

// I9:195;9:12;9:139;9:85 : + (TEXT)
            var draw_I9_195__9_12__9_139__9_85 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  25.3559322357,
                  14.0000000000,
                  17.2881374359,
                  31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'IBM Plex Sans',
                textAlign: TextAlign.center,
                fontSize: 24.0000000000,
                fontWeight: FontWeight.w600,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("*");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            };
            draw_I9_195__9_12__9_139__9_85(canvas, frame);
            canvas.restore();
          };
          draw_I9_195__9_12__9_139(canvas, frame);

// I9:195;9:12;9:140 : Button/7 (INSTANCE)
          var draw_I9_195__9_12__9_140 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                10.0000000000,
                9.0000000000,
                68.0000000000,
                59.0000000000) /* H:LEFT V:TOP F:(l:10,t:9,r:254,b:254,w:68,h:59) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_1));

// I9:195;9:12;9:140;9:74 : Rectangle 25 (RECTANGLE)
            var draw_I9_195__9_12__9_140__9_74 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                  59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 68.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 59.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      Radius.circular(10)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_1);
              });
              canvas.restore();
            };
            draw_I9_195__9_12__9_140__9_74(canvas, frame);

// I9:195;9:12;9:140;9:85 : 1 (TEXT)
            var draw_I9_195__9_12__9_140__9_85 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  25.3559322357,
                  14.0000000000,
                  17.2881374359,
                  31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'IBM Plex Sans',
                textAlign: TextAlign.center,
                fontSize: 24.0000000000,
                fontWeight: FontWeight.w600,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("1");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            };
            draw_I9_195__9_12__9_140__9_85(canvas, frame);
            canvas.restore();
          };
          draw_I9_195__9_12__9_140(canvas, frame);
          canvas.restore();
        };
        draw_I9_195__9_12(canvas, frame);
        canvas.restore();
      };
      draw_9_195(canvas, frame);

// 9:196 : Row4 (INSTANCE)
      var draw_9_196 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(14.0000000000, 268.0000000000, 332.0000000000,
            77.0000000000) /* H:SCALE V:SCALE F:(l:14,t:268,r:14,b:14,w:332,h:77) */;
        canvas.save();
        canvas.scale((container.width) / 360.0000000000,
            (container.height) / 353.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.drawRect(Offset.zero & frame.size,
            (Paint()..color = _ColorCatalog.instance.color_1));

// I9:196;9:14 : Row1 (INSTANCE)
        var draw_I9_196__9_14 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(0.0, 0.0, 332.0000000000,
              77.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:332,h:77) */;
          canvas.save();
          canvas.scale((container.width) / 332.0000000000,
              (container.height) / 77.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          canvas.drawRect(Offset.zero & frame.size,
              (Paint()..color = _ColorCatalog.instance.color_1));

// I9:196;9:14;9:7 : Rectangle 9 (RECTANGLE)
          var draw_I9_196__9_14__9_7 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(0.0, 0.0, 332.0000000000,
                77.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:332,h:77) */;
            canvas.save();
            canvas.scale((container.width) / 332.0000000000,
                (container.height) / 77.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 332.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 77.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              Path()
                ..addRRect(RRect.fromRectAndRadius(
                    Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                    Radius.circular(15)))
            ];
            fillGeometry.forEach((path) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_0);
            });
            canvas.restore();
          };
          draw_I9_196__9_14__9_7(canvas, frame);

// I9:196;9:14;9:137 : Button/7 (INSTANCE)
          var draw_I9_196__9_14__9_137 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                91.0000000000,
                9.0000000000,
                68.0000000000,
                59.0000000000) /* H:SCALE V:SCALE F:(l:91,t:9,r:173,b:173,w:68,h:59) */;
            canvas.save();
            canvas.scale((container.width) / 332.0000000000,
                (container.height) / 77.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_1));

// I9:196;9:14;9:137;9:74 : Rectangle 25 (RECTANGLE)
            var draw_I9_196__9_14__9_137__9_74 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                  59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 68.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 59.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      Radius.circular(10)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_1);
              });
              canvas.restore();
            };
            draw_I9_196__9_14__9_137__9_74(canvas, frame);

// I9:196;9:14;9:137;9:85 : 0 (TEXT)
            var draw_I9_196__9_14__9_137__9_85 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  25.3559322357,
                  14.0000000000,
                  17.2881374359,
                  31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'IBM Plex Sans',
                textAlign: TextAlign.center,
                fontSize: 24.0000000000,
                fontWeight: FontWeight.w600,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("0");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            };
            draw_I9_196__9_14__9_137__9_85(canvas, frame);
            canvas.restore();
          };
          draw_I9_196__9_14__9_137(canvas, frame);

// I9:196;9:14;9:138 : Button/7 (INSTANCE)
          var draw_I9_196__9_14__9_138 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                172.0000000000,
                9.0000000000,
                68.0000000000,
                59.0000000000) /* H:SCALE V:SCALE F:(l:172,t:9,r:92,b:92,w:68,h:59) */;
            canvas.save();
            canvas.scale((container.width) / 332.0000000000,
                (container.height) / 77.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_1));

// I9:196;9:14;9:138;9:74 : Rectangle 25 (RECTANGLE)
            var draw_I9_196__9_14__9_138__9_74 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                  59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 68.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 59.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      Radius.circular(10)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_1);
              });
              canvas.restore();
            };
            draw_I9_196__9_14__9_138__9_74(canvas, frame);

// I9:196;9:14;9:138;9:85 : = (TEXT)
            var draw_I9_196__9_14__9_138__9_85 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  25.3559322357,
                  14.0000000000,
                  17.2881374359,
                  31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'IBM Plex Sans',
                textAlign: TextAlign.center,
                fontSize: 24.0000000000,
                fontWeight: FontWeight.w600,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("=");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            };
            draw_I9_196__9_14__9_138__9_85(canvas, frame);
            canvas.restore();
          };
          draw_I9_196__9_14__9_138(canvas, frame);

// I9:196;9:14;9:139 : Button/7 (INSTANCE)
          var draw_I9_196__9_14__9_139 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                253.0000000000,
                9.0000000000,
                68.0000000000,
                59.0000000000) /* H:LEFT V:TOP F:(l:253,t:9,r:11,b:11,w:68,h:59) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_1));

// I9:196;9:14;9:139;9:74 : Rectangle 25 (RECTANGLE)
            var draw_I9_196__9_14__9_139__9_74 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                  59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 68.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 59.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      Radius.circular(10)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_1);
              });
              canvas.restore();
            };
            draw_I9_196__9_14__9_139__9_74(canvas, frame);

// I9:196;9:14;9:139;9:85 : + (TEXT)
            var draw_I9_196__9_14__9_139__9_85 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  25.3559322357,
                  14.0000000000,
                  17.2881374359,
                  31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'IBM Plex Sans',
                textAlign: TextAlign.center,
                fontSize: 24.0000000000,
                fontWeight: FontWeight.w600,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("/");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            };
            draw_I9_196__9_14__9_139__9_85(canvas, frame);
            canvas.restore();
          };
          draw_I9_196__9_14__9_139(canvas, frame);

// I9:196;9:14;9:140 : Button/7 (INSTANCE)
          var draw_I9_196__9_14__9_140 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                10.0000000000,
                9.0000000000,
                68.0000000000,
                59.0000000000) /* H:LEFT V:TOP F:(l:10,t:9,r:254,b:254,w:68,h:59) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_1));

// I9:196;9:14;9:140;9:74 : Rectangle 25 (RECTANGLE)
            var draw_I9_196__9_14__9_140__9_74 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(0.0, 0.0, 68.0000000000,
                  59.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:68,h:59) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 68.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 59.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      Radius.circular(10)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_1);
              });
              canvas.restore();
            };
            draw_I9_196__9_14__9_140__9_74(canvas, frame);

// I9:196;9:14;9:140;9:85 : . (TEXT)
            var draw_I9_196__9_14__9_140__9_85 =
                (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  25.3559322357,
                  14.0000000000,
                  17.2881374359,
                  31.0000000000) /* H:SCALE V:SCALE F:(l:25.355932235717773,t:14,r:25.35593032836914,b:25.35593032836914,w:17.288137435913086,h:31) */;
              canvas.save();
              canvas.scale((container.width) / 68.0000000000,
                  (container.height) / 59.0000000000);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'IBM Plex Sans',
                textAlign: TextAlign.center,
                fontSize: 24.0000000000,
                fontWeight: FontWeight.w600,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText(".");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            };
            draw_I9_196__9_14__9_140__9_85(canvas, frame);
            canvas.restore();
          };
          draw_I9_196__9_14__9_140(canvas, frame);
          canvas.restore();
        };
        draw_I9_196__9_14(canvas, frame);
        canvas.restore();
      };
      draw_9_196(canvas, frame);
      canvas.restore();
    };
    draw_9_197(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(Android2Painter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(Android2Painter oldDelegate) {
    return false;
  }
}

class _PathCatalog {
  _PathCatalog() {}

  static final _PathCatalog instance = _PathCatalog();
}

class _PaintCatalog {
  _PaintCatalog() {
    this.paint_0 = (Paint()..color = _ColorCatalog.instance.color_2);
    this.paint_1 = (Paint()..color = _ColorCatalog.instance.color_3);
    this.paint_2 = (Paint()..color = _ColorCatalog.instance.color_0);
  }

  Paint paint_0;

  Paint paint_1;
//0-0 1-2 2-3      0-2 1-3 2-0    2>0  0>1  1>2
  Paint paint_2;

  static final _PaintCatalog instance = _PaintCatalog();
}

class _EffectCatalog {
  _EffectCatalog() {}

  static final _EffectCatalog instance = _EffectCatalog();
}

class _ColorCatalog {
  _ColorCatalog() {
    this.color_0 = Color.fromARGB(255, 191, 250, 240);
    this.color_1 = Color.fromARGB(0, 0, 0, 0);
    this.color_2 = Color.fromARGB(255, 150, 150, 150);
    this.color_3 = Color.fromARGB(255, 89, 89, 89);
    this.color_4 = Color.fromARGB(255, 0, 0, 0);
  }
  _ColorCatalog.zero() {
    this.color_0 = Color.fromARGB(255, 0, 0, 50);
    this.color_1 = Color.fromARGB(0, 0, 0, 0);
    this.color_2 = Color.fromARGB(255, 89, 89, 89);
    this.color_3 = Color.fromARGB(255, 150, 150, 150);
    this.color_4 = Color.fromARGB(255, 255, 255, 255);
  }

  Color color_0;

  Color color_1;

  Color color_2;

  Color color_3;

  Color color_4;

  static _ColorCatalog instance = _ColorCatalog();
  static _ColorCatalog instancelight = _ColorCatalog();
  static _ColorCatalog instancedark = _ColorCatalog.zero();
}

class _TextStyleCatalog {
  _TextStyleCatalog() {
    this.ui_TextStyle_0 = ui.TextStyle(
      fontFamily: 'IBM Plex Sans',
      color: _ColorCatalog.instance.color_4,
      fontSize: 24.0000000000,
      fontWeight: FontWeight.w600,
    );
  }

  ui.TextStyle ui_TextStyle_0;

  static final _TextStyleCatalog instance = _TextStyleCatalog();
}

class Data {
  Data({this.isVisible});

  final bool isVisible;

  @override
  bool operator ==(o) => o is Data && isVisible == o.isVisible;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    return result;
  }
}

class TextData extends Data {
  TextData({isVisible, this.text}) : super(isVisible: isVisible);

  final String text;

  @override
  bool operator ==(o) =>
      o is TextData && isVisible == o.isVisible && text == o.text;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    result = 37 * result + (this.text?.hashCode ?? 0);
    return result;
  }
}

class VectorData extends Data {
  VectorData({isVisible}) : super(isVisible: isVisible);

  @override
  bool operator ==(o) => o is VectorData && isVisible == o.isVisible;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    return result;
  }
}

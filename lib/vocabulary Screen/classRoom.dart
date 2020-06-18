import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:puzzleapp/size_config.dart';
class vocabularyScreen extends StatefulWidget {
  @override
  _vocabularyScreenState createState() => _vocabularyScreenState();
}

class _vocabularyScreenState extends State<vocabularyScreen> {
  static List<String> imgPath = [
    'assets/classRoom/Classroom-blackboard.png',
    'assets/classRoom/Classroom-book.png',
    'assets/classRoom/Classroom-chalk.png',
    'assets/classRoom/Classroom-Crayon-pencil.png',
    'assets/classRoom/Classroom-desk.png',
    'assets/classRoom/Classroom-dictionary.png',
    'assets/classRoom/Classroom-Eraser.png',
    'assets/classRoom/Classroom-Map.png',
    'assets/classRoom/Classroom-pen.png',
    'assets/classRoom/Classroom-Pencil.png',
    'assets/classRoom/Classroom-Pencil-sharpener.png',
    'assets/classRoom/Classroom-ruler.png',
    'assets/classRoom/Classroom-Student.png',
    'assets/classRoom/Classroom-trash-can.png',

  ];
  static List<String> imgPathName = [
    'assets/classRoom/blackboard-text.png',
    'assets/classRoom/book-text.png',
    'assets/classRoom/chalk-text.png',
    'assets/classRoom/Crayon-pencil-text.png',
    'assets/classRoom/desk-text.png',
    'assets/classRoom/dictionary-text.png',
    'assets/classRoom/Eraser text.png',
    'assets/classRoom/Map-text.png',
    'assets/classRoom/pen-text.png',
    'assets/classRoom/Pencil-text.png',
    'assets/classRoom/Pencil-sharpener-text.png',
    'assets/classRoom/ruler-text.png',
    'assets/classRoom/Student- text.png',
    'assets/classRoom/trash-can-text.png',

  ];
  static int i = 0;
  static String displayImg = imgPath[0];//"assets/puzzlePage/kid.png";
  static String displayName = imgPathName[0];

  ////////Row widget function ///////////////////
  Widget row_shoroBorno_letter(int j) {
    return Container(
      height: SizeConfig.blockSizeVertical * 8,
      width: SizeConfig.blockSizeHorizontal *12,
      decoration: myBoxDecoration(),
      child: GestureDetector(

        onTap: () {
          setState(() {
            i=j;
            displayImg = imgPath[j];
            displayName = imgPathName[j];
          });

        },
        child: Image.asset(imgPath[j]),
      ),
    );
  }
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: Colors.orangeAccent, //                   <--- border color
        width: 2.0,
      ),
    );


  }


  ///////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    //screen responsive
    SizeConfig().init(context);
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.red,
          )),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Image.asset('assets/playGround/Shape.png',height: SizeConfig.blockSizeVertical*3,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          title:Text("Class Room",textAlign: TextAlign.center,) ,
        ),
        body: Container(
          //background image set
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/homePage/home-screen-background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    child: Icon(Icons.arrow_back_ios,color: Colors.black,),
                    onPressed: (){
                      setState(() {
                        if(i>0 && i<14){
                          i--;
                          displayImg = imgPath[i];
                          displayName = imgPathName[i];
                        }
                      });
                    },
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: SizeConfig.blockSizeVertical*40,
                    width: SizeConfig.blockSizeHorizontal*50,
                    child: Image.asset(displayImg),
                  ),
                  FlatButton(
                    child: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                    onPressed: (){
                      setState(() {
                        if(i>=0 && i<13){
                          i++;
                          displayImg = imgPath[i];
                          displayName = imgPathName[i];
                        }
                      });
                    },
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topCenter,
                height: SizeConfig.blockSizeVertical*18,
                width: SizeConfig.blockSizeHorizontal*70,
                child: Image.asset(displayName),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical*8,
              ),
              Container(

                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      //height: SizeConfig.blockSizeVertical * 12,
                      //width: SizeConfig.blockSizeHorizontal *12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          row_shoroBorno_letter(0),
                          SizedBox(
                            height: SizeConfig.blockSizeHorizontal*1,
                          ),
                          row_shoroBorno_letter(1),
                          SizedBox(
                            height: SizeConfig.blockSizeHorizontal*1,
                          ),
                          row_shoroBorno_letter(2),
                          SizedBox(
                            height: SizeConfig.blockSizeHorizontal*1,
                          ),
                          row_shoroBorno_letter(3),
                          SizedBox(
                            height: SizeConfig.blockSizeHorizontal*1,
                          ),
                          row_shoroBorno_letter(4),
                          SizedBox(
                            height: SizeConfig.blockSizeHorizontal*1,
                          ),
                          row_shoroBorno_letter(5),
                          SizedBox(
                            height: SizeConfig.blockSizeHorizontal*1,
                          ),
                          row_shoroBorno_letter(6),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical*1,
                    ),
                    GestureDetector(
                      //height: SizeConfig.blockSizeVertical * 12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          row_shoroBorno_letter(7),
                          SizedBox(
                            height: SizeConfig.blockSizeHorizontal*1,
                          ),
                          row_shoroBorno_letter(8),
                          SizedBox(
                            height: SizeConfig.blockSizeHorizontal*1,
                          ),
                          row_shoroBorno_letter(9),
                          SizedBox(
                            height: SizeConfig.blockSizeHorizontal*1,
                          ),
                          row_shoroBorno_letter(10),
                          SizedBox(
                            height: SizeConfig.blockSizeHorizontal*1,
                          ),
                          row_shoroBorno_letter(11),
                          SizedBox(
                            height: SizeConfig.blockSizeHorizontal*1,
                          ),
                          row_shoroBorno_letter(12),
                          SizedBox(
                            height: SizeConfig.blockSizeHorizontal*1,
                          ),
                          row_shoroBorno_letter(13),
                        ],
                      ),
                    ),
                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    super.dispose();
    i=0;
    displayImg = imgPath[0];
    displayName = imgPathName[0];
  }
}

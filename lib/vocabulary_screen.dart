import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:puzzleapp/size_config.dart';
class vocabularyScreen extends StatefulWidget {
  @override
  _vocabularyScreenState createState() => _vocabularyScreenState();
}

class _vocabularyScreenState extends State<vocabularyScreen> {
  ////////Row widget function ///////////////////
  Widget row_shoroBorno_letter() {
    return Container(
      height: SizeConfig.blockSizeVertical * 12,
      width: SizeConfig.blockSizeHorizontal *12,
      child: GestureDetector(

        onTap: () {

        },
        child: Image.asset("assets/puzzlePage/kid.png"),
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
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          title:Text("Family",textAlign: TextAlign.center,) ,
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
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: SizeConfig.blockSizeVertical*40,
                    width: SizeConfig.blockSizeHorizontal*50,
                    child: Image.asset("assets/puzzlePage/kid.png"),
                  ),
                  FlatButton(
                    child: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                  ),
                ],
              ),
              Container(
                child: Text("Sister",style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,

                ),),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical*10,
              ),
              Container(

                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          row_shoroBorno_letter(),
                          row_shoroBorno_letter(),
                          row_shoroBorno_letter(),
                          row_shoroBorno_letter(),
                          row_shoroBorno_letter(),
                          row_shoroBorno_letter(),
                          row_shoroBorno_letter(),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          row_shoroBorno_letter(),
                          row_shoroBorno_letter(),
                          row_shoroBorno_letter(),
                          row_shoroBorno_letter(),
                          row_shoroBorno_letter(),
                          row_shoroBorno_letter(),
                          row_shoroBorno_letter(),
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
}

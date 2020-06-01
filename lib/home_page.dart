import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:puzzleapp/puzzle_screen.dart';
import 'package:puzzleapp/size_config.dart';
import 'package:puzzleapp/vocabulary_category_list.dart';
import 'package:puzzleapp/vocabulary_screen.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //screen responsive
    SizeConfig().init(context);
    // Set landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        //background image set
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/homePage/home-screen-background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              //height: SizeConfig.blockSizeVertical*10,
            ),
            Container(
              margin: EdgeInsets.only(top:SizeConfig.blockSizeVertical*5,),
              height: SizeConfig.blockSizeVertical*20,
              width: SizeConfig.blockSizeHorizontal*50,
              child: Image.asset("assets/homePage/home-main-logo.png"),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              //margin: EdgeInsets.only(top:SizeConfig.blockSizeVertical*5,),
              height: SizeConfig.blockSizeVertical*20,
              width: SizeConfig.blockSizeHorizontal*70,
              child: FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => vocabularyCategoryList()),
                  );
                },
                child: Image.asset("assets/homePage/home-btn-vocabulary.png"),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical*5,
            ),
            Container(
              alignment: Alignment.topCenter,
              height: SizeConfig.blockSizeVertical*20,
              width: SizeConfig.blockSizeHorizontal*70,
              child: FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => puzzleScreen()),
                  );
                },
                child: Image.asset('assets/homePage/home-btn-puzzle.png'),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(top:SizeConfig.blockSizeVertical*4),

              height: SizeConfig.blockSizeVertical*18,
              width: SizeConfig.blockSizeHorizontal*60,
              child: Image.asset("assets/homePage/home-screen-powerdBy.png"),
            ),

          ],
        ),
      ),
    );
  }
}

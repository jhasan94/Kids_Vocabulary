import 'package:flutter/material.dart';
import 'package:puzzleapp/home_page.dart';

class puzzleScreen extends StatefulWidget {
  @override
  _puzzleScreenState createState() => _puzzleScreenState();
}

class _puzzleScreenState extends State<puzzleScreen> {
  @override
  Widget build(BuildContext context) {
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
          title:Text("Puzzle",textAlign: TextAlign.center,) ,
        ),
        body:ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Ink(
              //color: Colors.indigo,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/puzzlePage/kid.png'),
                ),
                title: Text('Family'),
                trailing: Icon(Icons.keyboard_arrow_right),
                //title: Text('row $index'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage()),
                  );
                },
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),

      ),

    );
  }
}

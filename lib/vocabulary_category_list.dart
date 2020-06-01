import 'package:flutter/material.dart';
import 'package:puzzleapp/vocabulary_screen.dart';

class vocabularyCategoryList extends StatefulWidget {
  @override
  _vocabularyCategoryListState createState() => _vocabularyCategoryListState();
}

class _vocabularyCategoryListState extends State<vocabularyCategoryList> {
  List<String> categoryListName = ['family','number','alphabet'];

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
          itemCount: categoryListName.length,
          itemBuilder: (context, index) {
            return Ink(
              //color: Colors.indigo,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/puzzlePage/kid.png'),
                ),
                title: Text(categoryListName[index]),
                trailing: Icon(Icons.keyboard_arrow_right),
                //title: Text('row $index'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => vocabularyScreen()),
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

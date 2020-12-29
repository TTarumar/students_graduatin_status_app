import 'package:flutter/material.dart';
import 'package:tabbar_app/const/list_const.dart';

class PassScreen extends StatefulWidget {
  @override
  _PassScreenState createState() => _PassScreenState();
}

class _PassScreenState extends State<PassScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: passNames.length == null ? 0: passNames.length,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            subtitle: Text("Grade : "+'${passGrades[index]}'),
            title: Text('${passNames[index]}'),
            trailing: Icon(Icons.check_circle,color: Colors.green,),
          );
        }
    );
  }
}

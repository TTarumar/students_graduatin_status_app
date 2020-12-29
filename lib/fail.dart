import 'package:flutter/material.dart';
import 'package:tabbar_app/const/list_const.dart';


class FailScreen extends StatefulWidget {

  @override
  _FailScreenState createState() => _FailScreenState();
}

class _FailScreenState extends State<FailScreen> {



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: failNames.length == null ? 0: failNames.length,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            subtitle: Text("Grade : "+'${failGrades[index]}'),
            title: Text('${failNames[index]}'),
            trailing: Icon(Icons.cancel,color: Colors.red,),
          );
        }
    );
  }
}

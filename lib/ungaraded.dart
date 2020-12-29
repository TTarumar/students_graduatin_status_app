import 'package:flutter/material.dart';
import 'package:tabbar_app/const/list_const.dart';

class UngradedScreen extends StatefulWidget {


  @override
  _UngradedScreenState createState() => _UngradedScreenState();
}

class _UngradedScreenState extends State<UngradedScreen> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ungradedNames.length == null ? 0 : ungradedNames.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            subtitle: Text("Grade : " + '${ungradedGrades[index]}'),
            title: Text('${ungradedNames[index]}'),
            trailing: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    child: Container(
                      width: 50.0,
                      height: 30.0,
                      child: Icon(Icons.cancel, color: Colors.red),
                    ),
                    onTap: () {
                      setState(() {
                        failNames.add(ungradedNames[index]);
                        failGrades.add(ungradedGrades[index]);
                        ungradedNames.removeAt(index);
                        ungradedGrades.removeAt(index);
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: Container(
                      width: 50.0,
                      height: 30.0,
                      child: Icon(Icons.check_circle, color: Colors.green),
                    ),
                    onTap: () {
                      setState(() {
                        passNames.add(ungradedNames[index]);
                        passGrades.add(ungradedGrades[index]);
                        ungradedNames.removeAt(index);
                        ungradedGrades.removeAt(index);
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}

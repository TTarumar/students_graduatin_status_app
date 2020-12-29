import 'package:flutter/material.dart';
import 'package:tabbar/tabbar.dart';
import 'package:tabbar_app/const/list_const.dart';
import 'package:tabbar_app/fail.dart';
import 'package:tabbar_app/pass.dart';
import 'package:tabbar_app/ungaraded.dart';


class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {

  final controller = PageController();
  final nameCont = TextEditingController();
  final pointCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  title: Text("New Student"),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Student Name"
                          ),
                          controller: nameCont,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Student Grade"
                          ),
                          controller: pointCont,
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancel")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            ungradedNames.add(nameCont.text);
                            ungradedGrades.add(pointCont.text);
                          });
                          nameCont.text="";
                          pointCont.text="";
                          Navigator.pop(context);
                        },
                        child: Text("Add")),
                  ],
                );
              });
        },
      ),
      appBar: AppBar(
        title: Text("Students"),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TabbarHeader(
            controller: controller,
            tabs: [
              Tab(
                text: "Ungraded",
              ),
              Tab(
                text: "Pass",
              ),
              Tab(
                text: "Fail",
              ),
            ],
          ),
        ),
      ),
      body: TabbarContent(
        controller: controller,
        children: <Widget>[
          UngradedScreen(),
          PassScreen(),
          FailScreen(),
        ],
      ),
    );
  }
}

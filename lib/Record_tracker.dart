import 'package:flutter/material.dart';
import "package:getwidget/getwidget.dart";

class record_tracker extends StatefulWidget {
  const record_tracker({Key? key}) : super(key: key);

  @override
  _record_trackerState createState() => _record_trackerState();
}

class _record_trackerState extends State<record_tracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, top: 120),
            child: Text(
              'Hello '
              'Mateen',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      //color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  margin: EdgeInsets.only(left: 35, right: 35),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 0, top: 120),
                        child: Text(
                          'TEST',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 25,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GFButton(
                            onPressed: () {},
                            color: Colors.deepOrange,
                            text: "1",
                            shape: GFButtonShape.pills,
                          ),
                          GFButton(
                            onPressed: () {},
                            color: Colors.deepOrange,
                            text: "2",
                            shape: GFButtonShape.pills,
                          ),
                          GFButton(
                            onPressed: () {},
                            color: Colors.deepOrange,
                            text: "3",
                            shape: GFButtonShape.pills,
                          ),
                          GFButton(
                            onPressed: () {},
                            color: Colors.deepOrange,
                            text: "4",
                            shape: GFButtonShape.pills,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                  //color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              margin: EdgeInsets.only(left: 35, right: 35, top: 370),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(
                      'My Activity',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  TextField(
                    style: TextStyle(height: 5.0),
                    decoration: InputDecoration(
                        //fillColor: Colors.grey,
                        filled: true,
                        hintText: "Advices",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    style: TextStyle(height: 5.0),
                    obscureText: true,
                    decoration: InputDecoration(
                        //fillColor: Colors.grey,
                        filled: true,
                        hintText: "Status",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff4c505b),
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, 'form');
                        },
                        icon: Icon(
                          Icons.arrow_back,
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

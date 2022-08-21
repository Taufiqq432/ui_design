import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          size: 25.0,
          textColor: Colors.green,
          style: FlutterLogoStyle.markOnly,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_rounded),
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.drag_handle_rounded),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment(0.0, -0.4),
                color: Colors.white,
                height: 100,
                child: Text(
                  'Get Coaching',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(blurRadius: 2.0, color: Colors.grey)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 20, 5, 5),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 40, 5, 15),
                          child: Text(
                            '206',
                            style: TextStyle(fontSize: 45, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      width: 90,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'BUY MORE',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.only(left: 35, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MY COACHES',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                Text(
                  'View past session',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: [
              _bulidCard('Rolando', 'avabilable', 1),
              _bulidCard('Rolando', 'Away', 2),
              _bulidCard('Rolando', 'Away', 3),
              _bulidCard('Rolando', 'avabilable', 4),
              _bulidCard('Rolando', 'avabilable', 5),
              _bulidCard('Rolando', 'Away', 6),
            ],
          )
        ],
      ),
    );
  }

  Widget _bulidCard(String name, String status, int cardId) {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 8.0,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
         Stack(
           children: [
             Container(
               height: 70,
               width: 70,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(35.0),
                   image: DecorationImage(
                       image: NetworkImage(
                           'https://www.biography.com/.image/t_share/MTc5OTQ5OTg4NjY5ODI2MTcw/gettyimages-971463110.jpg'))),
             ),
             Container(
               margin: EdgeInsets.only(left: 50),
               height: 20,
               width: 20,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 color: status=='Away'?Colors.amber:Colors.green,
                   border:Border.all(
                     style: BorderStyle.solid,
                     width: 4,
                     color: Colors.white
                   )
               ),
             )
           ],
         ),
            SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              status,
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              //width: 170,
              decoration: BoxDecoration(
                  color: status == 'Away' ? Colors.grey : Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Center(
                child: Text(
                  'REQUEST',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ))
          ],
        ),
        margin: cardId.isEven
            ? EdgeInsets.fromLTRB(10, 0.0, 15, 10)
            : EdgeInsets.fromLTRB(15, 0.0, 10, 10));
  }
}

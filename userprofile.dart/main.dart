import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());     //The main() function is the starting point of all flutter apps.

class MyApp extends StatelessWidget       //Inheritance.
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(   //A Scaffold Widget provides a framework which implements the basic material design visual layout structure of the flutter app.

        appBar: AppBar(  //AppBar is used to display the title and back_arrow_ios at the top of the screen (above the bottom).
          centerTitle: true ,
          title: Text('Your Profile'),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
        ),

        backgroundColor: Colors.white, //sets the background color of the screen.
        body: SafeArea( //SafeArea is used to add necessary padding, to keep widget from being blocked by the system status bar, notches, holes, rounded corners.
          child: Column(
            children: <Widget>[
             CircleAvatar( //A circle that represents a user.
                radius:60.0,
                backgroundImage: AssetImage('images/userp.png'),
              ),
              Text(
                'Yashank',
                  style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '     Level-1 \nCSE | 2nd Year\n',

                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.grey,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                   'Batches Earned',
                    style: TextStyle(
                      fontFamily: 'verdana',
                      fontSize: 40.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      ),
                ),
              Container( //Container is used to add some styling properties.
                padding: EdgeInsets.all(10.0), //EdgeInsets class specifies offsets in terms of visual edges, left, top, right, and bottom.
                color: Color(0xffE6E6FA),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    Expanded( //Expanded widget is used for child of a Row, Column, to expand and fill the available space along the main axis.
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          height: 100.0,
                          width: 100.0,
                        image: AssetImage('images/B1.jpg'),
                    ),
                      )
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          height: 100.0,
                          width: 100.0,
                          image: AssetImage('images/B2.jpg'), //To insert image from our images directory.
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          height: 100.0,
                          width: 100.0,
                          image: AssetImage('images/B3.jpg'),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.all(10.0),
                color: Color(0xffE6E6FA),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            height: 100.0,
                            width: 100.0,
                            image: AssetImage('images/B1.jpg'),
                          ),
                        )
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          height: 100.0,
                          width: 100.0,
                          image: AssetImage('images/B2.jpg'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          height: 100.0,
                          width: 100.0,
                          image: AssetImage('images/B3.jpg'),
                        ),
                      ),
                    )
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

import 'package:flutter/material.dart';
import 'web_view_container.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  final links = 'https://github.com/fidelmak';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade900,
        // appBar: AppBar(

        // ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/myCard.jpeg'),
              ),
              SizedBox(height: 16),
              const Text(
                'Akintunde Oluborode',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              SizedBox(
                width: 300,
                child: Card(
                    elevation: 4, // Increase elevation for a taller card
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      width: 200,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.timelapse,
                            color: Colors.pink.shade900,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          WebViewContainer()));
                            },
                            child: Text('GO TO QUESTION ',
                                style: TextStyle(
                                  color: Colors.pink.shade900,
                                  fontFamily: 'fonts/SourceSansPro-Regular',
                                  fontSize: 16.0,
                                )),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.lightbulb_circle_rounded,
                              color: Colors.pink.shade900,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        )));
  }
}

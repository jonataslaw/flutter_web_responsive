import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/navigation_widget.dart';
import 'widgets/overlap_square_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            BackgroundOverlay(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  NavigationWidget(),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      "LET FLUTTER CHANGE THE WAY \nYOU DESIGN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: ".",
                                  style: TextStyle(
                                      color: Colors.yellow[900],
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Design and prototype website and apps intuitively, in a new product reworked for the digital age.",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MediaQuery.of(context).size.width > 800
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: body(),
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: body(),
                              )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> body() {
    return [
      SizedBox(
          height: 30,
          width: 150,
          child: RaisedButton(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.white, width: 2)),
            onPressed: () {},
            child: Text(
              "READ MORE",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            color: Colors.transparent,
            textColor: Colors.yellow[900],
          )),
      SizedBox(
        height: 20,
      ),
      SizedBox(
        height: 300,
        width: 500,
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: <Widget>[
              Image.network(
                "https://images.pexels.com/photos/3197389/pexels-photo-3197389.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.white.withOpacity(0.4),
                child: Center(
                  child: Icon(
                    Icons.play_circle_filled,
                    color: Colors.purple[800],
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ];
  }
}

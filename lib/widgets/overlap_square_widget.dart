import 'package:flutter/material.dart';

class BackgroundOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Container(
          height: 400,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(-1.0, -4.0),
                  end: Alignment(1.0, 4.0),
                  colors: <Color>[
                Colors.indigo,
                Color(0xffa915f3),
              ])),
          // color: Color(0Xff4B3385), // Color of Middle Container
          child: Stack(
            children: <Widget>[
              Positioned(
                right: 500,
                top: 100,
                child: CicleOverlay(
                  50,
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                left: 300,
                top: 100,
                child: CicleOverlay(
                  20,
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                right: 300,
                top: 50,
                child: CicleOverlay(
                  20,
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                right: 700,
                top: 200,
                child: CicleOverlay(
                  20,
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                right: 700,
                top: 200,
                child: CicleOverlay(
                  20,
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                right: -100,
                top: 100,
                child: CicleOverlay(
                  200,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / 2 - 100,
                bottom: -100,
                child: CicleOverlay(
                  200,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
              Positioned(
                left: -100,
                bottom: -100,
                child: CicleOverlay(
                  200,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 50,
                left: 300,
                child: CicleOverlay(
                  50,
                  color: Colors.deepPurpleAccent.withOpacity(0.8),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / 2 - 100,
                top: -100,
                child: CicleOverlay(
                  200,
                  color: Colors.deepPurpleAccent.withOpacity(0.5),
                ),
              ),
              Positioned(
                right: 10,
                top: 70,
                child: CicleOverlay(
                  30,
                  color: Colors.deepPurpleAccent.withOpacity(0.5),
                ),
              ),
              Positioned(
                left: 200,
                bottom: 10,
                child: CicleOverlay(
                  30,
                  color: Colors.deepPurpleAccent.withOpacity(0.5),
                ),
              ),
              Positioned(
                top: -100,
                left: -100,
                child: CicleOverlay(
                  200,
                  color: Colors.deepPurpleAccent.withOpacity(0.5),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CicleOverlay extends StatelessWidget {
  double size;
  Color color = Colors.white;
  CicleOverlay(this.size, {this.color});
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      clipBehavior: Clip.hardEdge,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

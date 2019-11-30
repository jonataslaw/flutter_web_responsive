import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "YOUR LOGO!",
          style: TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w900),
        ),
        MediaQuery.of(context).size.width > 800
            ? Row(
                children: <Widget>[
                  menuItem("FEATURES"),
                  menuItem("PRICING"),
                  menuItem("SUPPORT"),
                  buttonRounded("GET IN NOW"),
                ],
              )
            : PopupMenuButton<String>(
                color: Colors.deepPurple,
                elevation: 0,
                child: Icon(
                  Icons.filter_list,
                  color: Colors.white,
                ),
                onSelected: (result) {},
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: null,
                    child: menuItem("FEATURES"),
                  ),
                  PopupMenuItem<String>(
                    value: null,
                    child: menuItem("PRICING"),
                  ),
                  PopupMenuItem<String>(
                    value: null,
                    child: menuItem("SUPPORT"),
                  ),
                  PopupMenuItem<String>(
                    value: null,
                    child: buttonRounded("GET IN NOW"),
                  ),
                ],
              )
      ],
    );
  }

  Widget buttonRounded(title) {
    return RaisedButton(
      elevation: 0.0,
      onPressed: () {},
      child: Text(
        title,
        style:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.orange[800]),
      ),
      color: Colors.white,
      textColor: Colors.yellow[900],
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
        // side: BorderSide(color: Colors.red, width: 0)
      ),
    );
  }

  Widget menuItem(title) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 14),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

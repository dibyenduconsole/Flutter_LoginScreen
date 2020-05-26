import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenSate createState() => _LoginScreenSate();
}

class _LoginScreenSate extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.purpleAccent),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40.0,
                      child: Icon(
                        Icons.all_inclusive,
                        color: Colors.redAccent,
                        size: 50.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    TextFieldsNumber(),
                    TextFieldsPassword(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.white)),
                      color: Colors.white,
                      textColor: Colors.purple,
                      padding: EdgeInsets.all(10.0),
                      onPressed: () {
                        print("Loged In");
                        Navigator.of(context).pushNamed('/dashboardScreen');
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                    )



                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.purpleAccent)),
                      color: Colors.purpleAccent,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(10.0),
                      onPressed: () {
                        print("Register Now");
                        Navigator.of(context).pushNamed('/signupScreen');
                      },
                      child: Text(
                        "New User ? Register Now",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ));
  }

  Widget TextFieldsNumber() {
    return Material(
        color: Colors.transparent,
        child: Center(
            child: Container(
          margin: EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
          child: TextField(
            style: TextStyle(color: Colors.white, height: 0.8, fontSize: 25.0),
            onTap: () {
              print("Pressed-textfield");
            },
            onSubmitted: (value) => {print("Submitted textfield $value")},
            obscureText: false,
            cursorColor: Colors.white,
            keyboardType: TextInputType.number,
            maxLength: 10,
            maxLengthEnforced: true,
            decoration: InputDecoration(
              hintText: "Mobile",
              contentPadding: EdgeInsets.only(left: 20.0),
              hintStyle: TextStyle(color: Colors.white),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(35)),
                borderSide: BorderSide(width: 1, color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(35)),
                borderSide: BorderSide(width: 1, color: Colors.white),
              ),
            ),
          ),
        )));
  }

  Widget TextFieldsPassword() {
    return Material(
        color: Colors.transparent,
        child: Center(
            child: Container(
          margin: EdgeInsets.only(left: 50.0, right: 50.0),
          child: TextField(
            style: TextStyle(color: Colors.white, height: 0.8, fontSize: 25),
            onTap: () {
              print("Pressed-textfield");
            },
            onSubmitted: (value) => {print("Submitted textfield $value")},
            obscureText: true,
            cursorColor: Colors.white,
            keyboardType: TextInputType.number,
            maxLength: 8,
            maxLengthEnforced: false,
            decoration: InputDecoration(
              hintText: "Password",
              contentPadding: EdgeInsets.only(left: 20.0),
              hintStyle: TextStyle(color: Colors.white),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(35)),
                borderSide: BorderSide(width: 1, color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(35)),
                borderSide: BorderSide(width: 1, color: Colors.white),
              ),
            ),
          ),
        )));
  }
}

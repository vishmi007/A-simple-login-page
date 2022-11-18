import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


//Using a StatefulWidget because the state changes over time.
class LoginScreen extends StatefulWidget{

  @override
  _LoginScreenState createState() => _LoginScreenState();
  }




class _LoginScreenState extends State<LoginScreen>
{
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget> [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                        colors: [
                          Color(0XFFCE93D8),
                          Color(0XFFE1BEE7),
                          Color(0XFFF3E575),
                        ]

                  ),
                ),
              )
            ],
          )
        ),
      ),

    );
  }
}

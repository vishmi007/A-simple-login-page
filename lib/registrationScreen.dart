import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


//Using a StatefulWidget because the state changes over time.
class RegistrationScreen extends StatefulWidget{

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}


class _RegistrationScreenState extends State<RegistrationScreen>
{


  /*Method Name  : buildEmail
    Parameters   : None
    Purpose      : To Design the email text box.
  */
  Widget buildEmail()
  {
    return Column(
        children: <Widget>[
          Text(
              'Email',style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,

          )
          ),
          SizedBox(height: 10),
          Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 6,
                        offset:Offset(0,2)
                    )
                  ]
              ),
              height: 60,
              child: TextField(
                //Validating the user input
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                      color:Colors.black54
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14),
                      prefixIcon: Icon(
                          Icons.email,
                          color: Color(0XFFAB47BC)
                      ),
                      hintText: 'Enter your email address',
                      hintStyle: TextStyle(
                          color: Colors.black54
                      )
                  )
              )
          )
        ]

    );
  }
  /*Method Name  : buildPhone
    Parameters   : None
    Purpose      : To Design the email text box.
  */
  Widget buildPhone() {
    return Column(
        children: <Widget>[
          Text(
              'Phone', style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,

          )
          ),
          SizedBox(height: 10),
          Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 6,
                        offset: Offset(0, 2)
                    )
                  ]
              ),
              height: 60,
              child: TextField(
                //Validating the user input
                  keyboardType: TextInputType.phone,
                  style: TextStyle(
                      color: Colors.black54
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                          Icons.phone_android,
                          color: Color(0XFFAB47BC)
                      ),
                      hintText: 'Enter your phone number',
                      hintStyle: TextStyle(
                          color: Colors.black54
                      )
                  )
              )
          )
        ]

    );
  }


  Widget buildUsername()
  {
    return Column(
        children: <Widget>[
          Text(
              'Username',style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,

          )
          ),
          SizedBox(height: 10),
          Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 6,
                        offset:Offset(0,2)
                    )
                  ]
              ),
              height: 60,
              child: TextField(
                //Validating the user input
                  obscureText: true,
                  style: TextStyle(
                      color:Colors.black54
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14),
                      prefixIcon: Icon(
                          Icons.man,
                          color: Color(0XFFAB47BC)
                      ),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                          color: Colors.black54
                      )
                  )
              )
          )
        ]

    );
  }

/*Method Name  : buildPassword
    Parameters   : None
    Purpose      : To Design the Password text box.
  */
  Widget buildPassword()
  {
    return Column(
        children: <Widget>[
          Text(
              'Password',style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,

          )
          ),
          SizedBox(height: 10),
          Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 6,
                        offset:Offset(0,2)
                    )
                  ]
              ),
              height: 60,
              child: TextField(
                //Validating the user input
                  obscureText: true,
                  style: TextStyle(
                      color:Colors.black54
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14),
                      prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0XFFAB47BC)
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.black54
                      )
                  )
              )
          )
        ]

    );
  }
  /*Method Name  : buildConfirmPassword
    Parameters   : None
    Purpose      : To Design the Confirm Password text box.
  */
  Widget buildConfirmPassword()
  {
    return Column(
        children: <Widget>[
          Text(
              'Confirm Password',style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,

          )
          ),
          SizedBox(height: 10),
          Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 6,
                        offset:Offset(0,2)
                    )
                  ]
              ),
              height: 60,
              child: TextField(
                //Validating the user input
                  obscureText: true,
                  style: TextStyle(
                      color:Colors.black54
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14),
                      prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0XFFAB47BC)
                      ),
                      hintText: 'Enter the password again',
                      hintStyle: TextStyle(
                          color: Colors.black54
                      )
                  )
              )
          )
        ]

    );
  }

  /*Method Name  : buildLogin
    Parameters   : None
    Purpose      : To Design the Login button.
  */

  Widget buildLoginBtn()
  {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: OutlinedButton(
        child: Text('Sign Up', style:TextStyle(color: Color(0XFF7B1FA2),
            fontSize: 18,fontWeight: FontWeight.bold) ) ,
        onPressed: () => print('Login Button Pressed'),


      ),
    );

  }


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
                child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 120
                    ),
                    child : Column(
                        children: <Widget>[
                          Text('Register ',
                              style: TextStyle(
                                  color : Colors.white,
                                  fontSize: 40.0,
                                  fontWeight : FontWeight.bold
                              )),
                          SizedBox(height: 50),
                          buildUsername(),
                          SizedBox(height: 40 ),
                          buildEmail(),
                          SizedBox(height: 30),
                          buildPhone(),
                          SizedBox(height: 20),
                          buildPassword(),
                          SizedBox(height:10),
                          buildConfirmPassword(),

                          buildLoginBtn(),




                        ]

                    )
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


//Using a StatefulWidget because the state changes over time.
class LoginScreen extends StatefulWidget{

  @override
  _LoginScreenState createState() => _LoginScreenState();
  }






class _LoginScreenState extends State<LoginScreen>
{
  /*Method Name  : buildForgotpasswordButton
    Parameters   : None
    Purpose      : To Design the forgot password button.
  */
  Widget buildForgotPasswordBtn()
  {
    return Container(
        alignment: Alignment.centerRight,
        //New button types in Flutter are textButton and OutlinedButton
        child: OutlinedButton(
            onPressed: () => print("Want to reset your password?"),
            child:Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                )
            )

        )
    );
  }

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
                      hintText: 'Email',
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

  /*Method Name  : buildPassword
    Parameters   : None
    Purpose      : To Design the Login button.
  */

  Widget buildLoginBtn()
  {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: OutlinedButton(
        child: Text('LOGIN', style:TextStyle(color: Color(0XFF7B1FA2),
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
                          Text('Signin',
                              style: TextStyle(
                                  color : Colors.white,
                                  fontSize: 60.0,
                                  fontWeight : FontWeight.bold
                              )),
                          SizedBox(height: 50),
                          buildEmail(),
                          SizedBox(height: 20),
                          buildPassword(),
                          buildForgotPasswordBtn(),
                          buildLoginBtn()
                          

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

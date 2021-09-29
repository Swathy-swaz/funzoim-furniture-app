import 'package:flutter/material.dart';
import 'homeScreen.dart';
class SignUp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed:(){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios ,size:20,
            color:Colors.orange,),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment : MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("SignUp",
                        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height:20),
                      Text("Create new account !",
                        style: TextStyle(
                          fontSize: 15,
                          color : Colors.grey[600],
                        ),
                      )
                    ],
                  ),

                  Padding(

                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        inputText(label: "Email"),
                        inputText(label: "Phone"),
                        inputText(label: "Date Of Birth"),
                        inputText(label: "Password",obscureText: true),

                      ],
                    ),
                  ),
                  Padding(padding:
                  EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: EdgeInsets.only(top:3,left:3),
                      decoration:
                      BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height:60,
                        onPressed:(){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> HomeScreen()));
//
                        } ,
                        color:Colors.orangeAccent,
                        elevation:0,
                        shape: RoundedRectangleBorder(
                          borderRadius : BorderRadius.circular(50),
                        ),
                        //--------------------until---------
                        child: Text(
                            "SignUp", style: TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize:18,
                        )
                        ),

                      ),
                    ),
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text("Get connected with us !", style: TextStyle(fontSize:18),),
                        //Text("  Sign Up", style: TextStyle(fontWeight: FontWeight.bold,fontSize:18),
                       // ),

                      ]
                  ),

                  // Text("  Forgot Password", style: TextStyle(fontWeight: FontWeight.bold,fontSize:18),
                  // ),

                  Container(
                    padding: EdgeInsets.only(top:100),
                    height:200,
                    decoration:BoxDecoration(
                      image: DecorationImage(
                        image :AssetImage("assets/images/social.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),

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

Widget inputText({label, obscureText=false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Text(
        label,style:TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      SizedBox(height:5),
      TextField(
        obscureText: obscureText,
        decoration:InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey
            ),
          ),
        ),
      ),
      SizedBox(height:10),
    ],
  );

}


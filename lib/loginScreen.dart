import 'package:flutter/material.dart';
import 'login.dart';
import 'signupp.dart';
class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/unlocke.png'),
        //     fit:BoxFit.cover,
        //     //colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
        //   ),
        // ),

        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children:[
                Text(
                  "Welcome To Funzoim",
                  style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                ),
                SizedBox(height: 20,),
                Text("Funzoim provides you the best home decors and furniture to make your home look classy",
                    textAlign:TextAlign.center,
                    style: TextStyle(color:Colors.grey[600],
                    fontSize:15,
                    ),
                ),
              ],
            ),

            Container(
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:  AssetImage("assets/images/unlockee.png",),
                ),
                ),
              ),

            Column(
              children: [
                //------------------Login button------------------
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> Login()));
                  },
                  shape:RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text(
                    "Login",
                    style:TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height:20),
                //--------------Sinup BUtton----------------
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> SignUp()));
                  },
                  color:Colors.orangeAccent,
                  shape:RoundedRectangleBorder(
                      // side: BorderSide(
                      //     color: Colors.black
                      // ),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text(
                    "SignUp",
                    style:TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

              ],
            ),





          ],

        )
      ),
      ),
    );
  }
}


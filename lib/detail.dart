import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {

  final String img;
  final String title;
  final String price;
  final String dec;
  final BuildContext context;

DetailsPage({required this.img, required this.title, required this.price ,  required this.dec, required this.context});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        //---------Image-------------
        Image.asset("assets/images/homedecor$img.png",
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,fit: BoxFit.cover,
        ),
        //--------------Close Button--------------
        IconButton(
          padding: EdgeInsets.all(50),
          icon: Icon(
            Icons.close,
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        //--------------- Text conatiner Detal ppge-------------
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height/2.3,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
          child: Column(children: [
            //--------- Expanded conatiner for details of product and scroll--------
            Expanded(child: SingleChildScrollView(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text("About", style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("$title", style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                      Text("$price", style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height:20,),

                  Row(children :[
                    Expanded(
                    child :Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Status", style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),),
                        SizedBox(height:5,),
                        Text("Available", style:TextStyle(fontSize: 20,color: Colors.green),),

                    ],),),
                    Expanded(
                     child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Qty", style: TextStyle(fontSize: 18),),
                        SizedBox(height:5,),
                      Text("1",style: TextStyle(fontSize: 25),),
                    ],),),

                  ]),
                  SizedBox(height:20,),
                  Divider(thickness: 2,),
                  ListTile(
                    leading: Text(
                      "Details",
                      style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.add, color: Colors.black,
                      ),
                      onPressed: (){
                        //Navigator.pushNamed(context," ");
                      },
                    ),
                  ),

                  SizedBox(height: 5,),
                  SizedBox(width: 5,),
                  Text("$dec",style: TextStyle(fontSize: 18),
            ),
                  SizedBox(height: 5,),
                  Divider(thickness:2),
                  SizedBox(height: 5,),
                  ListTile(
                    leading: Text(
                      "Shopping",
                      style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.add, color: Colors.black,
                      ),
                      onPressed: (){
                        //Navigator.pushNamed(context," ");
                      },
                    ),
                  ),
                  SizedBox(height: 5,),
                  Divider(thickness:2),
                  SizedBox(height: 5,),

              ],
              ),
            ),
            ),

            //------------Conatainer for fixed bottom -> add to cart , fav--------------
            Container(height: 60,
                width: MediaQuery.of(context).size.width,
                //color: Colors.blue,
                child : Row(
                  mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                 children :[
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            height:50,width: 50,
                             child: Icon(Icons.favorite_border_outlined,  size: 40,),
                              // decoration: BoxDecoration(
                              //     border: Border.all(color: Colors.grey),
                              //     shape: BoxShape.circle),
                          ),
                          FlatButton.icon(onPressed: (){},
                              icon: Icon(Icons.shopping_bag),
                              label : Text("Add to cart", style: TextStyle(fontSize: 20,letterSpacing: 1),),
                              color: Colors.orange[300],
                              shape: StadiumBorder(),
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/6,vertical: 10),
                          ),
                  ],),

            ),
          ],
          ),


          ),
        ),


      ],
      ),

    );
  }



}

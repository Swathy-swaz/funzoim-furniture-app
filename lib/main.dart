import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey[200],
          leading: Image.asset("assets/images/hamburger.png"),
          actions: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.all(10),
              child: Image.asset("assets/images/SEARCH.png"),
            ),
          ],
        ),

        body: Column(

          children: [
            SizedBox(
                height:20
            ),
            Row(
              children:[
                SizedBox(
                  width: 15
                ),
                Text("Funzoim ",style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  ),
                ),
                Text("Furniture", style: TextStyle(fontSize: 36,letterSpacing: 1,),),
              ],
            ),
            SizedBox(
            height:20
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildFlatButton("Home Decor",isSelected: true),
                buildFlatButton("Sectionals"),
                buildFlatButton("Chaises"),
                buildFlatButton("Furniture"),
              ],
            ),
            SizedBox(height:20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 20,
                    ),
                  ]
                ),
                child: Column(
                  children: [
                    SizedBox(height:20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildColumnAtTop(" Shelfs",isSelected:true),
                        buildColumnAtTop(" Swings"),
                        buildColumnAtTop(" Pots"),
                        buildColumnAtTop(" Vases"),
                        buildColumnAtTop(" Stands "),
                      ],
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal ,
                    child: Row(
                      children: [
                        buildColumnImage("1","Home Decor Shelf","Rs 790"),
                        buildColumnImage("2","Home Decor Shelf","Rs 790"),
                        buildColumnImage("3","Home Decor Shelf","Rs 790"),
                        buildColumnImage("4","Home Decor Shelf","Rs 790"),
                        buildColumnImage("5","Home Decor Shelf","Rs 790"),
                        buildColumnImage("6","Home Decor Shelf","Rs 790"),
                      ],
                    ),
                    ),
                  ],
                )
              ),
            ),


          ],
        ),
      ),
    );
  }

  Padding buildColumnImage(String img, String title,String price){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height:20),
          Container(
            height:250,
            width: 250,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/homedecor$img.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height:10),
          Text(title, style:TextStyle(fontSize: 16),),
          SizedBox(height:10),
          Text(price, style:TextStyle(fontSize: 16),),
        ],
      ),
    );
  }



  Column buildColumnAtTop(String text, {bool isSelected=false}){
    return Column(
      children: [
        Text(text, style: TextStyle(color: isSelected? Colors.black : Colors.grey,
        fontSize: 20),
        ),
        SizedBox(height: 5,
        ),
       if(isSelected)
        Container(height: 5,width: 5,
          decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle
          ),
        )
      ],

    );
  }



  FlatButton buildFlatButton(String text, {bool isSelected=false}){
    return FlatButton(
      onPressed: (){
        print("Butteen pressed");
      },
      child: Text(
        text,
        style: TextStyle(color:isSelected? Colors.blue: Colors.black, fontSize: 20,),
      ),
      shape: StadiumBorder(),
      color:isSelected? Colors.green[100] : Colors.grey[300] ,

    );
  }









}

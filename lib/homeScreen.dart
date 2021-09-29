import 'package:flutter/material.dart';
import 'detail.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: Container(
        height:70,
      ),
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
             // buildFlatButton("Sectionals"),
             // buildFlatButton("Chaises"),
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height:20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildColumnAtTop(" Shelfs",isSelected:true),
                          buildColumnAtTop(" Swings"),
                          //buildColumnAtTop(" Pots"),
                         // buildColumnAtTop(" Vases"),
                          buildColumnAtTop(" Stands "),
                        ],
                      ),
                      MyDecorList(),
                      LineBar(),

                      SizedBox(height:20),
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Row(

                          children: [

                            Text("Special Offers",style: TextStyle(fontSize: 24),),
                            Spacer(),
                            Text("View all",style: TextStyle(fontSize: 20,color : Colors.grey),)
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal ,
                        child: Row(
                          children: [
                            buildBottomContainer("6","Swing Chair","MRP: 4000","Rs 3790"),
                            buildBottomContainer("8","Swing Chair","MRP: 4400","Rs 3999"),
                            buildBottomContainer("5","Intersecting Shelf","MRP: 2500","Rs 1999"),
                            buildBottomContainer("3","Floating Shelf","MRP: 2700","Rs 1999"),

                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ),


        ],
      ),
    );
  }
//}



  Container buildBottomContainer(String img, String txt, String mrp, String rs){
    return Container(
      height: 150,
      width: 310,
      margin:EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.all(Radius.circular(20),

        ),
      ),


      child: Row(children: [

        // ClipRRect(
        //     borderRadius : BorderRadius.circular(30),
        //     child: Image.asset("assets/images/homedecor$img.jpg"),),

        Container(
          padding: EdgeInsets.only(top:10),
          height:150,width: 150,
          decoration:BoxDecoration(
            image: DecorationImage(
              image :AssetImage("assets/images/homedecor$img.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(txt,),
                Spacer(),
                Text(mrp),
                Text(rs),
              ]),
        ),
      ],),
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
        print("$text pressed");
        if(text=="Furniture")
        {print("s");
        //Navigator.push(context,MaterialPageRoute(builder: (context)=> Furniture()));
//
        }

      },
      child: Text(
        text,
        style: TextStyle(color:isSelected? Colors.black87: Colors.black, fontSize: 20,),
      ),
      shape: StadiumBorder(),
      color:isSelected? Colors.orange[300] : Colors.grey[300] ,

    );
  }


}

class LineBar extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Container(
      height:5,
      width:MediaQuery.of(context).size.width,
      color:Colors.grey[200],
      margin: EdgeInsets.only(left:20),
      alignment: Alignment.centerLeft,

      child:Container(
          height:5,
          width: 200,
          color:Colors.black
      ),
    );
  }
}

class MyDecorList extends StatelessWidget{

  String dec1="     Decor rooms with these well designed and classic wall shelves , well organize your essentials or display decorative items."
                    "Easy to clean dust or any stain and spot from the shelf and also this laminated shelf gives a stylish matte look. \nSize : Length 18 inches, Breadth 5 inches, Height 18 inches. "
      "\n Type : Engineered Wood\n Style : Modern ";
  String dec2="Wood Wall Decor , Book Shelf Wall Made of Particle Board (High grade prelam engineering wood with natural wood grain finish)"
      "\nProduct Dimensions: Length (29.97 Cm) Breadth (13.97 Cm) Height (55.88Cm)."
      "\n Type : Engineered Wood\n Style : Modern ";
  String dec3="\tThin Hanging Wall that will make your room look classic and elegent"
      "With its space-saving design and unique molding, this corner shelf is perfect for displaying everything from framed family photos to plant pot\n 𝐒𝐭𝐚𝐧𝐝𝐢𝐧𝐠 𝐕𝐞𝐫𝐭𝐢𝐜𝐚𝐥𝐥𝐲 𝐎𝐫 𝐇𝐨𝐫𝐢𝐳𝐨𝐧𝐭𝐚𝐥𝐥𝐲\n Can be wall-mounted or freestanding in which way you want"
      "\n Type : Wall Mount\n Shape : Rectangle ";
  String dec4="Wooden Intersecting Wall Shelves elegent Look give your wall an elegant look with the help of this intersecting wall shelves and of premium quality / can be best serve for storing various stuffs and can be a home décor too / flexible with every "
      "texture and color of wall which will surely increase its utility.𝐆𝐫𝐞𝐚𝐭 𝐃𝐢𝐬𝐩𝐥𝐚𝐲 𝐒𝐡𝐞𝐥𝐟 "
      "\n Type : Wall Mount\n Shape : Rectangle ";
  String dec5="Wooden Intersecting Wall Shelves offers a surprising amount of space for storing books, pictures, and other decorative items. Plus it just looks really cool. Made in the mid century modern style, with clean lines and an interesting geometric shape, it transforms your room just by being there. "
      "\n Type : Wall Mount\n Shape : Rectangle ";
  String dec6="Sift through the sands of silent contemplation with this fanciful outdoor swing"
      "\nMaterial:	Metal \nColour:	Black \nCapacity :1";



  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal ,
      child: Row(
        children: [
          buildColumnImage("1","Home Decor Shelf","Rs 990",dec1,context),
          buildColumnImage("21","Wall Decor Book Shelf","Rs 999",dec2,context),
          buildColumnImage("3","Wooden Floating Shelf","Rs 1999",dec3,context),
          buildColumnImage("4","Intersecting Shelf","Rs 1990",dec4,context),
          buildColumnImage("5","Intersecting Shelf","Rs 1999",dec5,context),
          buildColumnImage("6","Swing Chair","Rs 3790",dec6,context),
        ],
      ),
    );
  }

  GestureDetector buildColumnImage(String img, String title,String price,String dec, BuildContext context){
    return GestureDetector(

      onTap: () {
        //print("clicked");
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailsPage(img:img,title:title,price: price, dec: dec ,context: context);
        }),);
      },

      child :Padding(
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
      ),
    );
  }



}
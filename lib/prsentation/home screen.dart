import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class myhomepage extends StatefulWidget {
  const myhomepage({Key? key, required String title}) : super(key: key);

  @override
  State<myhomepage> createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blue,
         title:const Text("Task1",style: TextStyle(color: Colors.white),) , ),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                child:Text("C",style: TextStyle( color:Colors.white,fontSize: 25),)
              ),
              accountName: Text("CAT",
                  style: TextStyle(
                      color:Colors.white, fontWeight: FontWeight.bold)),
              accountEmail: Text(
                  "CAT@CAT.com",
                  style: TextStyle(color:Colors.white)),
            ),
            ListTile(
              title: const Text('Home Page'),
              onTap: () {},
              leading: const Icon(Icons.home),
              iconColor: Colors.grey,
            ),
            ListTile(
              title: const Text('Help'),
              onTap: () {},
              leading: const Icon(Icons.help),
              iconColor:  Colors.grey,
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {},
              leading: const Icon(Icons.help_center_sharp),
              iconColor:  Colors.grey,
            ),
          ],
        ),
      ),
         backgroundColor: Colors.white70,
         body: Column(children: [
           Row(children: [
             Padding(
               padding: const EdgeInsets.all(20),
               child: Container(
                 height: 100,
                 width: 100,
                 decoration: BoxDecoration(gradient: const LinearGradient(colors: [
                 Colors.white ,
                   Colors.grey,
                   Colors.black,

                 ],begin: Alignment.bottomRight,end: Alignment.bottomLeft),
                 borderRadius: BorderRadius.circular(100),
                 border: Border.all(color:Colors.black,width: 3),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(15),
               child: Container(
                 height: 100,
                 width: 100,
                 decoration: BoxDecoration(gradient: const LinearGradient(colors: [
                      Colors.black        ,
                Colors.black,   Colors.blue,
                     Colors.black,Colors.black,


                 ],begin:AlignmentDirectional.topStart,end: AlignmentDirectional.topEnd),
                   borderRadius: BorderRadius.circular(100),
                   border: Border.all(color:Colors.blue,width: 3),
                  ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(15),
               child: Container(
                 height: 100,
                 width: 100,
                 decoration: BoxDecoration(gradient: const LinearGradient(colors: [

                 Colors.blue,
                   Colors.red

                 ],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                   borderRadius: BorderRadius.circular(100),
                   border: Border.all(color:Colors.blue,width: 3),),
               ),
             ),
           ],),
           const SizedBox(height: 30,),
           Container(

             decoration:  BoxDecoration(gradient: const LinearGradient(colors: [

              Colors.black,  Colors.blue,



             ],begin: Alignment.bottomLeft,end: Alignment.bottomRight),
               borderRadius: BorderRadius.circular(100),
               border: Border.all(color:Colors.white,width: 3),
         ),
             child: MaterialButton(onPressed: () {

             },child:const Padding(
               padding:  EdgeInsets.symmetric(horizontal: 130,vertical: 5),
               child: Text("POSTS",style: TextStyle(color: Colors.white,fontSize: 20),),
             ),),
           ),
           SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               width: double.infinity,
              height: 400,

               decoration: BoxDecoration( color: Colors.grey,borderRadius: BorderRadius.circular(20)),
               child: ListView(children: [
                 Padding(
                   padding: const EdgeInsets.all(14),
                   child: Row(children: [CircleAvatar(backgroundColor: Colors.black),Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("CAT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                   )],),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("It’s flutter task..good luck.^^"),
                 ),
                Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                  child: Divider(color: Colors.black)),
                 Container(
                   margin: EdgeInsets.only(left: 10,right: 10),
                   child: Row(children: [Icon(Icons.thumb_up_off_alt),Text("Like"),
                     SizedBox(width: 70,),
                     Icon(Icons.comment),Text("Comment"),
                     SizedBox(width: 70,),
                     Icon(Icons.share),Text("Share")],),
                 ),
                 Container(
                     margin: EdgeInsets.only(left: 10,right: 10),child: Divider(color: Colors.black,)),
                 Container(
                   width: 300,
                   height: 100,
                   margin: EdgeInsets.only(left: 20,right: 20),
                   decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),bottomLeft: Radius.circular(20)) ,
                   border:Border.all(color:Colors.black)),
                 child: Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,

                       children: [
                     Text("Hello CAT^^",style: TextStyle(fontWeight: FontWeight.bold),),
                     Text("Flutter task is great :)",style: TextStyle(fontWeight: FontWeight.bold))
                   ]),
                 ),)
               ]),
             ),
           ),

         ]) ,
    );
  }
}

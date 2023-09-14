import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InboxView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return Scaffold(
     appBar: AppBar(
       leading: CircleAvatar(),
       title: Text("Anam"),
       actions: [
         IconButton(onPressed: () {  },
           icon: Icon(Icons.video_call),),
         IconButton(onPressed: () {  },
           icon: Icon(Icons.call),),
         IconButton(onPressed: () {  },
           icon: Icon(Icons.menu),),


       ],

     ),
     body: Stack(
       children: <Widget>[
         Align(
           alignment: Alignment.bottomLeft,
           child: Container(
             padding:const  EdgeInsets.only(left: 10,bottom: 10,top: 10),
             height: 60,
             width: double.infinity,
             color: Colors.white,
             child: Row(
               children: <Widget>[
                 GestureDetector(
                   onTap: (){
                   },
                   child: Container(
                     height: 30,
                     width: 30,
                     decoration: BoxDecoration(
                       color: Colors.lightBlue,
                       borderRadius: BorderRadius.circular(30),
                     ),
                     child: const Icon(Icons.add, color: Colors.white, size: 20, ),
                   ),
                 ),
                 const SizedBox(width: 15,),
                 Expanded(
                   child: TextField(
                     decoration: InputDecoration(
                         hintText: "Write message...",
                         hintStyle: TextStyle(color: Colors.black54),
                         border: InputBorder.none
                     ),
                   ),
                 ),
                 const SizedBox(width: 15,),
                 FloatingActionButton(
                   onPressed: (){},
                   child:   Icon(Icons.send,color: Colors.white,size: 18,),
                   backgroundColor: Colors.blue,
                   elevation: 0,
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
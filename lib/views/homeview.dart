import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'inboxView.dart';

class  Homeview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 4,
     child: Scaffold(
       appBar: AppBar(
         elevation: 0,
          title: Text("Watsapp"),
         // leading: Icon(Icons.camera),
         actions: const [ Icon(Icons.search),
           SizedBox(width: 15.0,),
           Icon(Icons.camera_alt_outlined),
           SizedBox(width: 15.0,),
           Icon(Icons.menu),

         ],
         bottom: const TabBar(
           tabs: [
             Tab(icon: Icon(Icons.person)),
             Tab(text: "Chats",),
             Tab(text: "Status",),
             Tab(text: "Calls",),


           ],
         ), //
       ),
       body: TabBarView(
         children: [
           Icon(Icons.music_note),
           ListView_list(context),
           Icon(Icons.camera_alt),
           Icon(Icons.grade),
           Icon(Icons.email),
         ],
       ),
       endDrawer: Drawer(
         child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               const Text('This is the Drawer'),
               ElevatedButton(
                 onPressed: (){
                   // Navigator.push(
                   //   context,
                   //   MaterialPageRoute(builder: (context) => InboxView()),
                   // );
                 },
                 child: const Text('Close Drawer'),
               ),
             ],
           ),
         ),
       ),
     ),
   );
  }

}
ListView_list(BuildContext buildContext) {


  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount:20,
    itemBuilder: (BuildContext context, int index) {
      // String itemTitle = "List Item ${list[index]}";

      return GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InboxView()),
          );
        },
        child: ListTile(
          title: Text("name "),
          leading: CircleAvatar(radius: 25.0,backgroundColor: Colors.green,),
          subtitle: Text("Subtitle of list item"),
          trailing: Text("17:00")


        ),
      );
    },
  );
}
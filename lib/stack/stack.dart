import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [


          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu,color: Colors.white,),
                  Icon(Icons.notification_add,color: Colors.white,)
                ],
              ),
            ),
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.amber,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(60))
              )
            ),
       Container(

         child: Padding(
           padding: const EdgeInsets.only(left: 40,right: 40,bottom: 10),
           child: TextField(
             decoration: InputDecoration(
               prefixIcon: Icon(Icons.search),
               focusColor: Colors.white,
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(25)
               ),

             ),
           ),
         ),
       )

        ],
      )
    );
  }
}

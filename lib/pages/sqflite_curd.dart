import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SqfliteTodo extends StatelessWidget {
   SqfliteTodo({super.key});
  TextEditingController titleController=TextEditingController();
  TextEditingController decorationController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          InputDialouge();
        },
        child: Icon(Icons.add,
        color: Colors.white,
        ),
        backgroundColor: Colors.purple,
        hoverColor: Colors.black,
      ),
    );

  }
//popup dialouge
  InputDialouge(){
    Get.defaultDialog(
      title: "",
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      //title
          Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15,),
            child: TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Title",
                hintText: "title",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.only(left: 10),
              ),
             
            ),
          ),
          SizedBox(height: 10,),
      //description
           Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15),
            child: TextField(
              controller: decorationController,
              decoration: InputDecoration(
                labelText: "Discription",
                hintText: "discription",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.only(left: 10),
              ),
             
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius:BorderRadius.circular(15)
            ),
            child: Center(
              child: Text("submit",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                //fontWeight: FontWeight.bold,
              ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
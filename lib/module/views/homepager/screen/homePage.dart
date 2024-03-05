import 'package:adv_test/module/helper/api_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Homepage"),
            backgroundColor: Colors.lightGreen.shade300),
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/2.png"),fit: BoxFit.fill)),
          child:  SingleChildScrollView(
            child: Column(
              children: APIHelper.apiHelper.alldata
                  .map((e) => Container(
                height: 140,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),color:Colors.grey),
                child: Padding(
                  padding: EdgeInsets.only(top: 5,left: 4),
                    child:  Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Name : "),
                        Text(e.name,style: TextStyle(fontSize: 15),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("State : "),
                        Text(e.state??"",style: TextStyle(fontSize: 15),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Country : "),
                        Text(e.country,style: TextStyle(fontSize: 15),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline))
                      ],
                    )
                  ],
                ),)
              ))
                  .toList(),
            ),
          ),
        ));
  }
}

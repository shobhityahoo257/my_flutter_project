import 'dart:ffi';

import 'package:flutter/material.dart';

class MyMobile extends StatefulWidget {
  const MyMobile({super.key});

  @override
  State<MyMobile> createState() => _MyMobileState();
}

class _MyMobileState extends State<MyMobile> {
  TextEditingController countryCode=TextEditingController();
  @override
  void initState() {
    countryCode.text="+91";
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left:25,right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/img.png',width: 150,height: 150,),
              SizedBox(height: 20,),
              Text('Phone Authentication',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              Text('We need to register Before started',style: TextStyle(fontSize: 16)),
              SizedBox(height: 20,),
              Container(
                height: 55,
                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey),borderRadius: BorderRadius.circular(10)), 
                child:Row(children: [
                SizedBox(width: 50,child: TextField(
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                  controller: countryCode,
                  decoration: InputDecoration(
                  border: InputBorder.none,
                ),),),
                SizedBox(width: 10,),
                Text('|',style: TextStyle(fontSize: 33,color: Colors.grey),),
                Expanded(child: TextField(decoration: InputDecoration(
                    border: InputBorder.none,hintText: 'Enter Mobile Number') ))
              ],) ,)
              ,

              SizedBox(height: 20,),
              SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'otp');
                  }, child: Text('Send OTP'),style: ElevatedButton.styleFrom(
                  primary: Colors.green.shade600,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              )
              ),)
                )


            ],
          ),
        ),
      ),
    );
  }
}

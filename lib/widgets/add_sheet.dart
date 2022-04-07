import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manpower/constants.dart';
import 'package:file_picker/file_picker.dart';

class AddSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
              heightFactor: 0.9,
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 108, 112, 112),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: kSilver,
            borderRadius: BorderRadius.circular(15.0)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: 
                  [
                   IconButton(
                     onPressed: (){
                       Navigator.pop(context);
                     },
                     icon: Icon(FontAwesomeIcons.solidArrowAltCircleRight),
                   ),
                ],
              ),
              SizedBox(height: 30.0,),

              Card(
                // margin: EdgeInsets.only(left: 10.0,right: 10.0),
                borderOnForeground: true,
                elevation: 200.0,
                color: Color(0xffffff),
                child: Column(
                  children: [
                    SizedBox(height: 10.0,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kBlack.withOpacity(.2),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    cursorColor: kBlack,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Full Name",
                      hintStyle: kSubtitleStyle.copyWith(color: Colors.black.withOpacity(.3),),
                    ),
                  ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kBlack.withOpacity(.2),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    cursorColor: kBlack,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Phone Number",
                      hintStyle: kSubtitleStyle.copyWith(color: Colors.black.withOpacity(.3),),
                    ),
                  ),
                  ),
                  SizedBox(height: 10,),
                    Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kBlack.withOpacity(.2),
                    ),                  
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    cursorColor: kBlack,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Additional Number",
                      hintStyle: kSubtitleStyle.copyWith(color: Colors.black.withOpacity(.3),),
                    ),
                  ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kBlack.withOpacity(.2),
                    ),
                                      color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    cursorColor: kBlack,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Address",
                      hintStyle: kSubtitleStyle.copyWith(color: Colors.black.withOpacity(.3),),
                    ),
                  ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kBlack.withOpacity(.2),
                    ),                  
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    cursorColor: kBlack,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Passport Number",
                      hintStyle: kSubtitleStyle.copyWith(color: Colors.black.withOpacity(.3),),
                    ),
                  ),
                  ),
                  SizedBox(height: 10.0,),
                  
                  TextButton.icon(
                    onPressed: (){
                  }, 
                  icon: Icon(Icons.file_copy),
                   label: Text("Upload Your CV"),),
                  SizedBox(height: 20.0,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 50.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text(
                          "SUBMIT",
                          style: TextStyle(
                            color : Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,)
                  ],
                ),
              ),
           
              ]
              ),
        ),
      ),
    );
  }
}
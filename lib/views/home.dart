import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manpower/constants.dart';
import 'package:manpower/models/company.dart';
import 'package:manpower/views/job_details.dart';
import 'package:manpower/widgets/recent_job_card.dart';
import 'package:manpower/models/carousel.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kSilver,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: kSilver,
          leading: Padding(
            padding: EdgeInsets.only(
              left: 16,
              bottom: 12,
              top: 12,
              right: 12,
            ),
            child: SvgPicture.asset(
              "assets/drawer.svg",
              color: kBlack,
              ),
            ),
            actions: [
              SvgPicture.asset(
                "assets/user.svg",
                color: kBlack,
                width: 25.0,
                ),
                SizedBox(width: 18.0,)
            ],
        ),
        body: Column(
          children: 
            [
              Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20.0,),
                      Center(
                        child: Text(
                          "FIND BEST MANPOWER",
                          style: kPageTitleStyle,
                          ),
                      ),
                      SizedBox(height: 35.0,),
                      Container(
                        margin: EdgeInsets.only(right: 18.0),
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(11.0),
                            border: Border.all(
                              width: 3,
                            ),
                        ),
                        child: Carousel(),
                          ),
                      SizedBox(height: 25.0,),
                      Container(
                        width: double.infinity,
                          height: 50,
                          margin: EdgeInsets.only(right: 18.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.white
                                  ),
                                  child:  TextField(
                                    cursorColor: kBlack,
                                    decoration: InputDecoration(
                                      icon: const Icon(
                                        Icons.search,
                                        color: Colors.black,
                                        size: 25.0,
                                        ),
                                        border: InputBorder.none,
                                        hintText: "Search For the Best Manpower",
                                        hintStyle: kSubtitleStyle.copyWith(
                                          color: Colors.black
                                        ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.0,),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.black,
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.slidersH,
                                  color: Colors.white,
                                  ),
                              )
                            ],
                          ),
                      ),
                      Container(
                          width: double.maxFinite,
                          height: 50,
                          margin: EdgeInsets.only(right: 18.0),
                        child: Row(
                          children: 
                            [
                              Container(
                                 padding: EdgeInsets.symmetric(horizontal: 25.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.white
                                ),
                                child: MyStatefulWidget(),
                                ),
                              SizedBox(width: 5.0,),
                               Container(
                                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(12.0),
                                   color: Colors.white
                                 ),
                                 child: MyStatefulWidget(),
                                 ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Text(
                        "Manpowers",
                        style: kPageTitleStyle,
                        ),
                      SizedBox(height: 5.0,),
                   
                    ],
                  ),
                  
                ],
              ),
            ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 18.0,right: 18.0),
                  child: ListView.builder(
                             itemCount: recentList.length,
                             scrollDirection: Axis.vertical,
                             shrinkWrap: true,
                             physics: const BouncingScrollPhysics(),
                             itemBuilder: (context,index){
                               var recent = recentList[index];
                               return InkWell(
                                 onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => JobDetail(
                                    company: recent,
                                  ),
                                ),
                              );
                            },
                                 child: RecentJobCard(company: recent,),
                               );
                             },
                             ),
                ),
              ),
          ],
        ),
        
      ),
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Job Type';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Job Type', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

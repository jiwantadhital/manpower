import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manpower/constants.dart';
import 'package:manpower/models/company.dart';
import 'package:manpower/models/company.dart';
import 'package:manpower/views/company_tab.dart';
import 'package:manpower/views/description_tab.dart';
import 'package:manpower/views/home.dart';
import 'package:manpower/widgets/add_sheet.dart';

class JobDetail extends StatelessWidget {
  
final Company? company;
JobDetail({this.company});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kSilver,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: kSilver,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 12.0,
              right: 12.0,
              bottom: 12.0,
              ),
            child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
               icon:Icon(
                 Icons.arrow_back,
                 color: Colors.black,
                 size: 28,),
                 ),
          ),
          title: Center(
            child: Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Text(
                company!.companyName!,
                style: kPageTitleStyle.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          actions: [
            SvgPicture.asset(
              "assets/user.svg",
              height: 25.0,
              ),
              const SizedBox(width: 18.0,)
          ],
        ),
        body: DefaultTabController(
          length: 2,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 18,horizontal: 15),
              decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
            child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0,top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                                Container(
                                height: 70.0,
                                width: 70.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                    image: AssetImage(company!.image!),
                                    fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              SizedBox(width: 40.0,),
                              Column(
                                children: 
                                    [
                                      Text(
                                    company!.job!,
                                    style: kPageTitleStyle,
                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      company!.sallary!,
                                    ),
                                  ],
                              ),
                            ],
                          ),
                          SizedBox(height: 15.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: company!.tag!.map(
                              (e) => Container(
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                padding: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 8,
                                  ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: kBlack,
                                  )
                                ),
                                child: Text(
                                  e,
                                  style: kSubtitleStyle,
                                ),
                              ),
                              ).toList(),
                          ),
                          SizedBox(height: 25.0,),
                          Material(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(
                                color: kBlack.withOpacity(.2),
                              )
                            ),
                            child: TabBar(
                              unselectedLabelColor: kBlack,
                              indicator: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(12.0)
                              ),
                              tabs: [
                              Tab(
                                text: "Description"),
                                Tab(
                                text: "Company"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                      SizedBox(height: 10.0),
              Expanded(
                child: TabBarView(
                  children: [
                    DescriptionTab(company: company),
                    CompanyTab(company: company),
                  ],
                ),
              )       
                  ],
            ),
          ),  
        ),
        bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Container(
          padding: EdgeInsets.only(left: 18.0, bottom: 25.0, right: 18.0),
          // margin: EdgeInsets.only(bottom: 25.0),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              SizedBox(width: 15.0),
              Expanded(
                child: SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(isScrollControlled: true,context: context, builder: (context){
                        return AddSheet();
                        }
                        );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: kBlack,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Text(
                      "Apply for Job",
                      style: kTitleStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}

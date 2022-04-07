import 'package:flutter/material.dart';
import 'package:manpower/constants.dart';
import 'package:manpower/models/company.dart';

class DescriptionTab extends StatelessWidget {

final Company? company;
DescriptionTab({this.company});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 8.0),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 18.0,),
          Text(
            "About The Opportunity",
            style: kTitleStyle.copyWith(fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 5.0,),
          Text(
            company!.jobOpportunity!,
            style: kSubtitleStyle,
          ),
          SizedBox(height: 18.0,),
          Text(
            "Job Responsibility",
            style: kTitleStyle.copyWith(fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 5.0,),
          Column(
            children :
             company!.jobResponsbilities!.map((e) => 
            Row(
              children: [
                Text(". ",
                style: kPageTitleStyle.copyWith(fontWeight: FontWeight.w900),
                ),
                Expanded(
                  child: Text(
                    "$e\n",
                    style: kSubtitleStyle,
                    ),
                    ),
              ],
            ),
            ).toList(),
                      ),
        ],
      ),
    );
  }
}
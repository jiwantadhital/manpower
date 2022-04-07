import 'package:flutter/material.dart';
import 'package:manpower/constants.dart';
import 'package:manpower/models/company.dart';

class CompanyTab extends StatelessWidget {

final Company? company;
CompanyTab({this.company});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 8.0),
      child: ListView(
        children: [
          SizedBox(height: 18.0,),
          Text(
            "About Company",
            style: kTitleStyle.copyWith(fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            company!.aboutCompany!,
            style: kSubtitleStyle,
          ),
        ],
      ),
    );
  }
}
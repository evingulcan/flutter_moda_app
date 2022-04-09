import 'package:flutter/material.dart';
import 'package:moda_app/moda/constants/app_colors.dart';
import 'package:moda_app/moda/constants/app_radius.dart';
import 'package:moda_app/moda/constants/app_string.dart';
import 'package:moda_app/moda/constants/app_textstyle.dart';

class DetailCardWidget extends StatefulWidget {
  const DetailCardWidget({Key? key}) : super(key: key);

  @override
  State<DetailCardWidget> createState() => _DetailCardWidgetState();
}

class _DetailCardWidgetState extends State<DetailCardWidget> {
  double elevationsize = 4;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: RadiusConstant.boderRadius10,
      elevation: elevationsize,
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width - 30,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: RadiusConstant.boderRadius10,
        ),
        child: _buildColumnText(context),
      ),
    );
  }

  Column _buildColumnText(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(StringConstants.laminatedtittle,
            style: TextStyleConstants.getTitleTextStyle),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        Text(StringConstants.louistittle, style: TextStyleConstants.getTittleK),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 30,
          width: MediaQuery.of(context).size.width - 165,
          child: Text(StringConstants.detailtittle,
              style: TextStyleConstants.getTittleDetail),
        ),
      ],
    );
  }
}

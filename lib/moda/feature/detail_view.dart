import 'package:flutter/material.dart';
import 'package:moda_app/moda/constants/app_colors.dart';
import 'package:moda_app/moda/constants/app_radius.dart';
import 'package:moda_app/moda/constants/app_string.dart';
import 'package:moda_app/moda/constants/app_textstyle.dart';

import 'package:moda_app/moda/product/widget/detail_card_widget.dart';

class DetailPage extends StatefulWidget {
  String imgPath;
  DetailPage({Key? key, required this.imgPath}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imgPath), fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 20,
          right: MediaQuery.of(context).size.width / 20,
          bottom: MediaQuery.of(context).size.width / 20,
          child: const DetailCardWidget(),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2,
          left: MediaQuery.of(context).size.width / 10,
          child: _buildContLaminated(),
        )
      ]),
    );
  }

  Container _buildContLaminated() {
    double size = 18;
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.height / 20,
      decoration: BoxDecoration(
        color: AppColors.black.withOpacity(0.4),
        borderRadius: RadiusConstant.boderRadius8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
              child: Text(StringConstants.laminatedtittle,
                  style: TextStyleConstants.getTittleLaminated)),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColors.white,
            size: size,
          )
        ],
      ),
    );
  }
}

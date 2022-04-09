import 'package:flutter/material.dart';
import 'package:moda_app/moda/constants/app_colors.dart';
import 'package:moda_app/moda/constants/app_padding.dart';
import 'package:moda_app/moda/constants/app_string.dart';
import 'package:moda_app/moda/constants/app_textstyle.dart';
import 'package:moda_app/moda/product/widget/card_widget.dart';
import 'package:moda_app/moda/product/widget/listview_widget.dart';
import 'package:moda_app/moda/product/widget/tabbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double elevationsize = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TabBarWidget(),
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          StringConstants.apptittle,
          style: TextStyleConstants.getTitleTextStyle,
        ),
        elevation: elevationsize,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: AppColors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: PaddingConstant.paddingtop10,
        children: const [
          //üst taraftaki profil listesi
          ListViewProfil(),
          //Card
          CardWidget(),
        ],
      ),
    );
  }
}

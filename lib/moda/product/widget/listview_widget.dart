import 'package:flutter/material.dart';
import 'package:moda_app/moda/constants/app_colors.dart';
import 'package:moda_app/moda/constants/app_radius.dart';
import 'package:moda_app/moda/constants/app_padding.dart';
import 'package:moda_app/moda/constants/app_string.dart';
import 'package:moda_app/moda/constants/app_textstyle.dart';

class ListViewProfil extends StatefulWidget {
  const ListViewProfil({Key? key}) : super(key: key);

  @override
  State<ListViewProfil> createState() => _ListViewProfilState();
}

class _ListViewProfilState extends State<ListViewProfil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 6,
      child: _buildListviewProfil(),
    );
  }

  ListView _buildListviewProfil() {
    return ListView(
        padding: PaddingConstant.padding10,
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
              SizedBox(
                width: MediaQuery.of(context).size.width / 12,
              ),
              listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
              SizedBox(
                width: MediaQuery.of(context).size.width / 12,
              ),
              listeElemani('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
              SizedBox(
                width: MediaQuery.of(context).size.width / 12,
              ),
              listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
              SizedBox(
                width: MediaQuery.of(context).size.width / 12,
              ),
              listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
              SizedBox(
                width: MediaQuery.of(context).size.width / 12,
              ),
              listeElemani('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
            ],
          )
        ]);
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        _buildStackProfil(imagePath, logoPath),
        SizedBox(
          height: MediaQuery.of(context).size.height / 75,
        ),
        _buildFollowContainer(),
      ],
    );
  }

  Container _buildFollowContainer() {
    return Container(
      width: MediaQuery.of(context).size.width / 6,
      height: MediaQuery.of(context).size.height / 30,
      decoration: BoxDecoration(
          borderRadius: RadiusConstant.boderRadius15, color: AppColors.brown),
      child: Center(
          child: Text(StringConstants.followtittle,
              style: TextStyleConstants.getTitleFollow)),
    );
  }

  Stack _buildStackProfil(String imagePath, String logoPath) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 6,
          height: MediaQuery.of(context).size.height / 12,
          decoration: BoxDecoration(
            borderRadius: RadiusConstant.borderRadius38,
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 17,
          left: MediaQuery.of(context).size.width / 10,
          child: Container(
            width: MediaQuery.of(context).size.width / 12,
            height: MediaQuery.of(context).size.height / 50,
            decoration: BoxDecoration(
              borderRadius: RadiusConstant.boderRadius12,
              image: DecorationImage(
                  image: AssetImage(logoPath), fit: BoxFit.contain),
            ),
          ),
        ),
      ],
    );
  }
}

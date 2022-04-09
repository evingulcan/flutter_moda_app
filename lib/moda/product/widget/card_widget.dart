import 'package:flutter/material.dart';
import 'package:moda_app/moda/constants/app_colors.dart';
import 'package:moda_app/moda/constants/app_radius.dart';
import 'package:moda_app/moda/constants/app_padding.dart';
import 'package:moda_app/moda/constants/app_string.dart';
import 'package:moda_app/moda/constants/app_textstyle.dart';

import '../../feature/detail_view.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstant.padding16,
      child: Material(
        borderRadius: RadiusConstant.boderRadius16,
        elevation: 4,
        child: Container(
          height: MediaQuery.of(context).size.height - 300,
          width: double.infinity,
          padding: PaddingConstant.padding16,
          child: Column(
            children: [
              _buildRowDalsyProfil(context),
              SizedBox(
                height: MediaQuery.of(context).size.height / 100,
              ),
              _buildText(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              _buildRowImages(context),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              _buildRowContainer(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 100,
              ),
              const Divider(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              _buildRowIcons(context),
            ],
          ),
        ),
      ),
    );
  }

  Text _buildText() {
    return Text(StringConstants.texttittle,
        style: TextStyleConstants.getTitleText);
  }

  Row _buildRowContainer() {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 6,
          height: MediaQuery.of(context).size.height / 30,
          decoration: BoxDecoration(
              borderRadius: RadiusConstant.boderRadius5,
              color: AppColors.brown.withOpacity(0.2)),
          child: Center(
            child: Text(StringConstants.lovetittle,
                style: TextStyleConstants.getTitleLove),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 25,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 6,
          height: MediaQuery.of(context).size.height / 30,
          decoration: BoxDecoration(
              borderRadius: RadiusConstant.boderRadius5,
              color: AppColors.brown.withOpacity(0.2)),
          child: Center(
            child: Text(StringConstants.lovetittle,
                style: TextStyleConstants.getTitleLove),
          ),
        ),
      ],
    );
  }

  Row _buildRowIcons(BuildContext context) {
    double size = 30;
    return Row(
      children: [
        Icon(
          Icons.reply,
          color: AppColors.brown.withOpacity(0.2),
          size: size,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 40,
        ),
        Text(StringConstants.ktittle, style: TextStyleConstants.getTittleK),
        SizedBox(
          width: MediaQuery.of(context).size.width / 40,
        ),
        Icon(
          Icons.comment,
          color: AppColors.brown.withOpacity(0.2),
          size: size,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 40,
        ),
        Text(StringConstants.stittle, style: TextStyleConstants.getTittleK),
        SizedBox(
          width: MediaQuery.of(context).size.width - 235,
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Icon(
              Icons.favorite,
              color: AppColors.red,
              size: size,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 40,
            ),
            Text(StringConstants.kktittle,
                style: TextStyleConstants.getTittleK),
          ]),
        ),
      ],
    );
  }

  Row _buildRowImages(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    DetailPage(imgPath: 'assets/1_org_zoom.jpg')));
          },
          child: Hero(
            tag: 'assets/1_org_zoom.jpg',
            child: Container(
              height: MediaQuery.of(context).size.height / 4,
              width: (MediaQuery.of(context).size.width - 70) / 2,
              decoration: BoxDecoration(
                  borderRadius: RadiusConstant.boderRadius5,
                  image: const DecorationImage(
                      image: AssetImage('assets/1_org_zoom.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 40,
        ),
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        DetailPage(imgPath: 'assets/modelgrid2.jpeg')));
              },
              child: Hero(
                tag: 'assets/modelgrid2.jpeg',
                child: Container(
                  height: MediaQuery.of(context).size.height / 9,
                  width: (MediaQuery.of(context).size.width - 90) / 2,
                  decoration: BoxDecoration(
                      borderRadius: RadiusConstant.boderRadius5,
                      image: const DecorationImage(
                          image: AssetImage('assets/modelgrid2.jpeg'),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        DetailPage(imgPath: 'assets/modelgrid3.jpeg')));
              },
              child: Hero(
                tag: 'assets/modelgrid3.jpeg',
                child: Container(
                  height: MediaQuery.of(context).size.height / 9,
                  width: (MediaQuery.of(context).size.width - 90) / 2,
                  decoration: BoxDecoration(
                      borderRadius: RadiusConstant.boderRadius5,
                      image: const DecorationImage(
                          image: AssetImage('assets/modelgrid3.jpeg'),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row _buildRowDalsyProfil(BuildContext context) {
    double size = 22;
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 8,
          height: MediaQuery.of(context).size.height / 16,
          decoration: BoxDecoration(
            borderRadius: RadiusConstant.boderRadius20,
            image: const DecorationImage(
                image: AssetImage('assets/model1.jpeg'), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 50,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 160,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(StringConstants.daisytittle,
                style: TextStyleConstants.getTittleDaisy),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Text(StringConstants.agotittle,
                style: TextStyleConstants.getTittleAgo),
          ]),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 50,
        ),
        Icon(
          Icons.more_vert,
          color: AppColors.grey,
          size: size,
        )
      ],
    );
  }
}

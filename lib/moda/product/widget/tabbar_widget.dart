import 'package:flutter/material.dart';
import 'package:moda_app/moda/constants/app_colors.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double size = 22;
    return Material(
        color: AppColors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.transparent,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.more,
                color: AppColors.grey,
                size: size,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: AppColors.grey,
                size: size,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: AppColors.black,
                size: size,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: AppColors.grey,
                size: size,
              ),
            ),
          ],
        ));
  }
}

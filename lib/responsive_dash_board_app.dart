import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';
import 'package:full_course_project/core/utils/size_config.dart';
import 'package:full_course_project/core/widgets/adaptive_layout.dart';
import 'package:full_course_project/features/dash_board_desktop_layout.dart';
import 'package:full_course_project/features/dash_board_mobile_layout.dart';
import 'package:full_course_project/features/dash_board_tablet_layout.dart';
import 'package:full_course_project/features/drawer/ui/custom_drawer.dart';

class ResponsiveDashBoardApp extends StatelessWidget {
  const ResponsiveDashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: screenWidth < SizeConfig.tablet
            ? AppBar(
                title: Text(
                  'Dashboard',
                  style: AppTextStyles.f20Medium(context),
                ),
                leading: Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(Icons.menu, color: Color(0xFF064061)),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ),
              )
            : null,
        drawer: SizedBox(
          width: screenWidth * 0.7,
          child: const CustomDrawer(),
        ),
        backgroundColor: const Color(0xFFF7F9FA),
        body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout(),
          desktopLayout: (context) => const DashBoardDesktopLayout(),
        ),
      ),
    );
  }
}

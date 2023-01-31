import 'package:flutter/material.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/widget/common_drawer.dart';
import 'package:logeste/core/widget/navigation_pages.dart';
import 'package:logeste/side_menu/presentation/pages/side_menu_page.dart';

class AppScaffold extends StatelessWidget {
  final String? title;
  final Widget body;
  final Widget? floatingActionButton;
  final bool? hasDrawer;
  final PreferredSizeWidget? appBar;
  final Color? backgroundAppBar;
  final Color? backgroundColor;
  final Widget? bottomSheet;
  final Widget? bottomNavigationBar;
  final bool? isCaptain;

  const AppScaffold({
    Key? key,
    this.title,
    required this.body,
    this.floatingActionButton,
    this.hasDrawer = true,
    this.appBar,
    this.backgroundAppBar,
    this.bottomSheet,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.isCaptain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // this code remove the keyboard overflow.
      resizeToAvoidBottomInset: false,
      drawer: hasDrawer! ? SideMenuPage(isCaptain: isCaptain ?? true) : null,
      //SafeArea to save content from the phone top par.
      body: SafeArea(
        child: body,
      ),
      backgroundColor: backgroundColor ?? AppColors.appBackgroundColor,
      floatingActionButton: floatingActionButton,
      bottomSheet: bottomSheet,
      bottomNavigationBar: bottomNavigationBar,
      appBar: (title == null && appBar == null)
          ? null
          : appBar ??
              AppBar(
                title: Text(title ?? ''),
                backgroundColor: backgroundAppBar ?? Colors.black,
              ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/widget/common_drawer.dart';

class AppScaffold extends StatelessWidget {
  final String? title;
  final Widget body;
  final Widget? floatingActionButton;
  final bool? isDrawer;
  final PreferredSizeWidget? appBar;
  final Color? backgroundAppBar;
  final Widget? bottomSheet;
  final Widget? bottomNavigationBar;

  const AppScaffold(
      {Key? key,
      this.title,
      required this.body,
      this.floatingActionButton,
      this.isDrawer = true,
      this.appBar,
      this.backgroundAppBar,
      this.bottomSheet,
      this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // this code remove the keyboard overflow.
      drawer: isDrawer! ? const CommonDrawer() : null,
      //SafeArea to save content from the phone top par.
      body: SafeArea(
        child: body,
      ),
      backgroundColor: AppColors.appBackgroundColor,
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

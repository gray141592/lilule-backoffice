import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/header.dart';

class DashboardScreenView extends StatelessWidget {
  final String pageTitle;
  final Widget pageChild;

  const DashboardScreenView({Key? key, required this.pageTitle, required this.pageChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(
              title: pageTitle,
            ),
            SizedBox(height: defaultPadding),
            pageChild,
          ],
        ),
      ),
    );
  }
}

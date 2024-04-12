import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_course_project/features/drawer/ui/custom_drawer.dart';
import 'package:full_course_project/features/expenses_invoice/ui/expenses_invoice.dart';
import 'package:full_course_project/features/over_view/ui/over_view.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 8,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: ExpensesInvoice(),
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      flex: 3,
                      child: OverView(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rtsc_web/utils/constants/colors.dart';

import '../../widgets/custom_text_widgets.dart';

class PRDashboardScreen extends StatefulWidget {
  const PRDashboardScreen({Key? key}) : super(key: key);

  @override
  State<PRDashboardScreen> createState() => _PRDashboardScreenState();
}

class _PRDashboardScreenState extends State<PRDashboardScreen> {
  List<AdminModel> admins = [
    AdminModel(
      name: "ABC Corporation",
      joinedDate: DateTime(2023, 9, 10),
      subscription: 'Monthly',
      isSubscriptionPaid: true,
    ),
    AdminModel(
      name: "XYZ Ltd.",
      joinedDate: DateTime(2023, 8, 15),
      subscription: 'Monthly',
      isSubscriptionPaid: false,
    ),
    AdminModel(
      name: "Tech Innovators Inc.",
      joinedDate: DateTime(2023, 7, 20),
      subscription: 'Monthly',
      isSubscriptionPaid: true,
    ),
    // Add 10 more admins below
    AdminModel(
      name: "New Vision Enterprises",
      joinedDate: DateTime(2023, 10, 5),
      subscription: 'Monthly',
      isSubscriptionPaid: false,
    ),
    AdminModel(
      name: "Data Dynamics Ltd.",
      joinedDate: DateTime(2023, 11, 15),
      subscription: 'Monthly',
      isSubscriptionPaid: true,
    ),
    AdminModel(
      name: "Innovate Solutions Co.",
      joinedDate: DateTime(2023, 10, 1),
      subscription: 'Monthly',
      isSubscriptionPaid: false,
    ),
    AdminModel(
      name: "Eagle Tech Group",
      joinedDate: DateTime(2023, 11, 25),
      subscription: 'Monthly',
      isSubscriptionPaid: true,
    ),
    AdminModel(
      name: "Future Trends Inc.",
      joinedDate: DateTime(2023, 12, 10),
      subscription: 'Monthly',
      isSubscriptionPaid: false,
    ),
    AdminModel(
      name: "Strategic Visionaries Ltd.",
      joinedDate: DateTime(2023, 11, 5),
      subscription: 'Monthly',
      isSubscriptionPaid: true,
    ),
    AdminModel(
      name: "Smart Data Solutions",
      joinedDate: DateTime(2023, 12, 1),
      subscription: 'Monthly',
      isSubscriptionPaid: false,
    ),
    AdminModel(
      name: "Global Innovators Co.",
      joinedDate: DateTime(2023, 10, 15),
      subscription: 'Monthly',
      isSubscriptionPaid: true,
    ),
    AdminModel(
      name: "Tech Masters Inc.",
      joinedDate: DateTime(2023, 12, 15),
      subscription: 'Monthly',
      isSubscriptionPaid: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CustomTextWidget(
          text: 'Admin Dashboard',
          fSize: context.isLandscape ? 20 : 16,
          fWeight: FontWeight.w400,
          textColor: Colors.white,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: AppColors.scaffoldBackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
      ),
    );
  }
}

class AdminModel {
  String name;
  DateTime joinedDate;
  String subscription;
  bool isSubscriptionPaid;

  AdminModel({
    required this.name,
    required this.joinedDate,
    required this.subscription,
    this.isSubscriptionPaid = false,
  });
}

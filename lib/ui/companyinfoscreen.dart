import 'package:flutter/material.dart';

class CompanyInfoState extends State<CompanyInfoScreen> {
  String state = "Loading";

  void onApiCall() {
    setState(() {
      state = "Update";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(state);
  }
}

class CompanyInfoScreen extends StatefulWidget {
  const CompanyInfoScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CompanyInfoState();
}

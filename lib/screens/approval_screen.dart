import 'package:flutter/material.dart';
import 'package:holiday/models/holiday_request.dart';

class ApprovalScreen extends StatelessWidget {
  final HolidayRequest request;

  ApprovalScreen({required this.request});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Approval Screen')),
      body: Center(
        child: Text('Request: ${request}'),
      ),
    );
  }
}

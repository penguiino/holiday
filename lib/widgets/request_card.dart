import 'package:flutter/material.dart';
import 'package:holiday/models/holiday_request.dart';

class RequestCard extends StatelessWidget {
  final HolidayRequest request;

  RequestCard({required this.request});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(request.name),
        subtitle: Text(request.date),
        onTap: () {
          Navigator.pushNamed(
            context,
            '/approval',
            arguments: request,  // Pass the request object
          );
        },
      ),
    );
  }
}

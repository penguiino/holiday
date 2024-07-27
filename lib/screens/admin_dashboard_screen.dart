import 'package:flutter/material.dart';
import '../models/holiday_request.dart'; // Import the model if used

class AdminDashboardScreen extends StatelessWidget {
  final List<HolidayRequest> requests = [
    HolidayRequest(id: '1', name: 'Sami Bousarsar', date: '2024-08-15', status: 'Pending'),
    HolidayRequest(id: '2', name: 'Yosra Debiche', date: '2024-09-20', status: 'Approved'),
    HolidayRequest(id: '3', name: 'Mourad Lamjed', date: '2024-08-10', status: 'Denied'),
    HolidayRequest(id: '4', name: 'Sarra Majdi', date: '2024-10-02', status: 'Approved'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Dashboard')),
      body: ListView.builder(
        itemCount: requests.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(requests[index].name),
            subtitle: Text('Date: ${requests[index].date}'),
            trailing: Text(requests[index].status),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/approval',
                arguments: requests[index],
              );
            },
          );
        },
      ),
    );
  }
}

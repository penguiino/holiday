import 'package:flutter/material.dart';
import '../models/holiday_request.dart';
import '../screens/approval_screen.dart'; // Import the ApprovalScreen

class HomeScreen extends StatelessWidget {
  // Simulate fetching data
  final List<HolidayRequest> requests = [
    HolidayRequest(id: '1', name: 'Sami Bousarsar', date: '2024-08-15', status: 'Pending'),
    HolidayRequest(id: '2', name: 'Yosra Debiche', date: '2024-09-20', status: 'Approved'),
    HolidayRequest(id: '3', name: 'Mourad Lamjed', date: '2024-08-10', status: 'Denied'),
    HolidayRequest(id: '4', name: 'Sarra Majdi', date: '2024-10-02', status: 'Approved'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: ListView.builder(
        itemCount: requests.length,
        itemBuilder: (context, index) {
          final request = requests[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all( width: 1), // Border settings
              borderRadius: BorderRadius.circular(8), // Rounded corners
              color: Colors.white, // Background color
            ),
            child: ListTile(
              title: Text(request.name),
              subtitle: Text('Date: ${request.date}, Status: ${request.status}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ApprovalScreen(request: request),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/request-form');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

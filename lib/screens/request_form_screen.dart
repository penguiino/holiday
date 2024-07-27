import 'package:flutter/material.dart';
import '../models/holiday_request.dart'; // Import the model if used

class RequestFormScreen extends StatefulWidget {
  @override
  _RequestFormScreenState createState() => _RequestFormScreenState();
}

class _RequestFormScreenState extends State<RequestFormScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Request Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: dateController,
              decoration: InputDecoration(labelText: 'Date'),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final request = HolidayRequest(
                  id: DateTime.now().toString(),
                  name: nameController.text,
                  date: dateController.text,
                  status: 'Pending',
                );
                // Handle form submission
                Navigator.pop(context);
              },
              child: Text('Submit Request'),
            ),
          ],
        ),
      ),
    );
  }
}

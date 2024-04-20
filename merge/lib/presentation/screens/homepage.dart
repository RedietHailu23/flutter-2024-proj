import 'package:flutter/material.dart';
import 'adminProjects.dart';
import 'loginpage.dart';
import 'package:merge/presentation/widgets/reusableWidgets.dart'; // Import the CustomElevatedButton widget from its original directory



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // Ensure the container takes full width
        height: double.infinity, // Ensure the container takes full height
        color: Color.fromRGBO(238, 238, 238, 1),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/HOME1.jpg',
                height: 300,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 50),
              Text(
                'Hello!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to project hub and Free Project Application Plateform !',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              CustomElevatedButton( // Use the CustomElevatedButton widget
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                text: 'Log in',
                backgroundColor: Color.fromRGBO(83, 92, 145, 1), // Specify background color
                textColor: Colors.white, // Specify text color
              ),
              SizedBox(height: 10),
              CustomElevatedButton( // Use the CustomElevatedButton widget
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProjectScreen()),
                  );
                },
                text: 'login as admin',
                backgroundColor: Color.fromRGBO(83, 92, 145, 1), // Specify background color
                textColor: Colors.white, // Specify text color
              ),
              SizedBox(height: 20), // Add bottom padding
            ],
          ),
        ),
      ),
    );
  }
}

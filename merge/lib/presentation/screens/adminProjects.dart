import 'package:flutter/material.dart';
import 'package:merge/presentation/widgets/reusableWidgets.dart';
import 'package:merge/presentation/screens/adminProjectDetail.dart';
import 'addProject.dart';

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _createButtonPressed() {
      // Navigate to the review page
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                AddProjectForm()), // Navigate to the review page
      );
    }

    return Container(
      color: Color.fromRGBO(238, 238, 238, 1), // Set background color here

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Here  Are Our Projects'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle search action
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 8, top: 8), // Adjust padding here
                child: UserAccountsDrawerHeader(
                  accountName: Text('Bunny bun'), // Display user name
                  accountEmail:
                      Text('Bunny.bun@example.com'), // Display user email
                  currentAccountPicture: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        'data:image/jpeg;base64,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'), // Set profile picture
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  // Handle home action
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {
                  // Handle settings action
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                title: Text('Logout'),
                onTap: () {
                  // Handle logout action
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            ListView.builder(
              itemCount: projectList.length,
              itemBuilder: (context, index) {
                Project project = projectList[index];
                return Container(
                  height: MediaQuery.of(context).size.height *
                      0.2, // Adjust the height as needed
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Card(
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color.fromRGBO(
                        255, 247, 252, 1), // Change the color here
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16),
                      title: Text(
                        project.title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 56, 46, 46),
                        ),
                      ),
                      subtitle: Text(
                        project.deadline.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 56, 46, 46),
                        ),
                      ),
                      leading: Image.network(
                        project.imageUrl,
                        width: 100, // Adjust the width as needed
                        height: 110, // Adjust the height as needed
                        // Ensure the image covers the entire space
                      ),
                      onTap: () {
                        // Existing functionality to view project details
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProjectDetail(project),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),

            // Position the "Create Project" button at the bottom
            Positioned(
              bottom: 20.0, // Adjust the bottom padding as needed
              right: 20.0, // Adjust the right padding as needed
              child: ElevatedButton(
                onPressed: _createButtonPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(83, 92, 145, 1),
                  foregroundColor: Color.fromRGBO(238, 238, 238, 1),
                ),
                child: Text(
                  'Create',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

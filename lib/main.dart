// Name  : See Pao Yeong
// Matric Number : S58079
// Description of the task : This is a matrix card-like project that user has to provide a picture and the personal information.
// The output of the task is being showed in the instruction manual.
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter App',
      home: MyProfileCard(),
    );
  }
}

// Widget class to create the profile card using stateless widget
class MyProfileCard extends StatelessWidget {
  // personal information of user
  final String name = "See Pao Yeong";
  final String birthdate = "07/06/2000";
  final String address = "Taman Bestari, Gong Badak, Terengganu";
  final String email = "s58079@ocean.umt.edu.my";
  final String phone = "+60146226335";

  const MyProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true, // to move the title to the center
          title: const Text("My Profile"),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment
                .center, // to move the widgets in the column to the center
            children: <Widget>[
              // container that set the width for the main column
              Container(
                  width: double
                      .infinity, // set the width to the main column to entire screen
                  child: Column(children: <Widget>[
                    //to stack each the picture and the personal information vertically

                    // Container thats store the image of the and crop it to circle
                    Container(
                      height: 250,
                      width: 250,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/profile_picture.jpg"),
                        ),
                      ),
                    ),

                    // Container thats store all the personal information
                    // In the container, each criteria is stacked vertically through column
                    // and each criteria is wrapped also with another container for margin purpose
                    Container(
                      width: 350,
                      child: Column(children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Container that wraps Name information
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  Container(
                                    width: 130,
                                    child: const Text(
                                      "Name:",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Text(
                                    name,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                            // Container that wraps birthdate information
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    width: 130,
                                    child: const Text(
                                      "Date of Birth:",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Text(
                                    birthdate,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                            // Container that wraps address information
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    width: 130,
                                    child: const Text(
                                      "Address:",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  // expanded widget is used to move the overflow text to the next line
                                  Expanded(
                                    child: Text(
                                      address,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Container that wraps email information
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    width: 130,
                                    child: const Text(
                                      "Email:",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  // expanded widget is used to move the overflow text to the next line
                                  Expanded(
                                    child: Text(
                                      email,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Container that wraps phone information
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    width: 130,
                                    child: const Text(
                                      "Phone:",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Text(
                                    phone,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ]))
            ]));
  }
}

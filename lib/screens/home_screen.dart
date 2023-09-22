import 'package:flutter/material.dart';

import 'nextScreen.dart';


class Home extends StatelessWidget {
  final List<Map<String, dynamic>> workoutData = [
    {
      'title': 'UPPER BODY',
      'desc': '7X4 Challenge',
      'imagePath': 'assets/images/upper_body.jpg',
    },
    {
      'title': 'LOWER BODY',
      'desc': '7X4 Challenge',
      'imagePath': 'assets/images/lower_body.jpg',
    },
    {
      'title' : 'CHEST',
      'desc' : 'Begginer',
      'imagePath' :'assets/images/chest_begginer.jpg',
    },
    {
      'title' : 'CHEST',
      'desc' : 'Intermediate',
      'imagePath' :'assets/images/chest_intermediate.jpg',
    },
    {
      'title' : 'CHEST',
      'desc' : 'Advance',
      'imagePath' :'assets/images/chest_advance.jpg',
    },
    {
      'title' : 'Abs',
      'desc' : 'Begginner',
      'imagePath' :'assets/images/abs_begginer.jpg',
    },
    {
      'title' : 'Abs',
      'desc' : 'Intermediate',
      'imagePath' :'assets/images/abs_intermediate.jpg',
    },
    {
      'title' : 'Abs',
      'desc' : 'Advance',
      'imagePath' :'assets/images/abs_advance.jpg',
    },
    {
      'title' : 'Arm',
      'desc' : 'Begginner',
      'imagePath' :'assets/images/arm_begginer.jpg',
    },
    {
      'title' : 'Arm',
      'desc' : 'Intermediate',
      'imagePath' :'assets/images/arm_intermedaite.jpg',
    },
    {
      'title' : 'Arm',
      'desc' : 'Advance',
      'imagePath' :'assets/images/arm_advance.jpg',
    },
    {
      'title' : 'Legs',
      'desc' : 'Begginner',
      'imagePath' :'assets/images/leg_begginer.jpg',
    },
    {
      'title' : 'Legs',
      'desc' : 'Intermediate',
      'imagePath' :'assets/images/leg_intermediate.jpg',
    },
    {
      'title' : 'Legs',
      'desc' : 'Advance',
      'imagePath' :'assets/images/leg_advance.jpg',
    },



// bahi yaha pr ap  na jo title or dec or image path hai wo write kr do
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade800,
        title: Text("Daily Workout"),
        centerTitle: true,
        leading: Icon(Icons.menu,color: Colors.white,),
      ),

      body: SafeArea(
        child: ListView.builder(
          itemCount: workoutData.length,
          itemBuilder: (context, index) {
            final workout = workoutData[index];
            return buildCard(workout, index, height, width ,context);
          },
        ),
      ),
    );
  }

  Widget buildCard(
      Map<String, dynamic> workout, int index, double height, double width, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NextScreen(
              gettitle: workout['title'],
              getdesc: workout['desc'],
              getimage: workout['imagePath'],
              getnumber: (index + 1).toString(),
            ),
          ),
        );
      },
      child: Card(
        elevation: 8,
        child: Stack(
          children: [
            Container(
              width: width,
              height: height * 0.3,
              child: Image.asset(
                workout['imagePath'],
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: height * 0.02,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: height * 0.02,
                      vertical: width * 0.002,
                    ),
                    child: Text(
                      workout['title'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: height * 0.02,
                      vertical: width * 0.001,
                    ),
                    child: Text(
                      workout['desc'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(241, 224, 234, 1),
        title: Text('Detail Page', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: double.infinity, // Full width
        height: double.infinity, // Full height
        decoration: BoxDecoration(
          color: Color.fromRGBO(232, 222, 233, 1), // Background color
        ),
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0), // Adjusted padding
        child: SingleChildScrollView( // Make the body scrollable
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Profile photo and name
              _buildProfileSection(),
              SizedBox(height: 20), // Space between profile and cards
              _buildCard(context, "About", "Syafirli Pindaningtyas PPLG XII-2, saya sedang belajar flutter cita-cita saya ingin seperti cici Surabaya."),
              SizedBox(height: 20), // Space between cards
              _buildCard(context, "History", "Saya pernah diberi kesempatan untuk menjadi ketua Seni Suara selama 2 tahun."),
              SizedBox(height: 20), // Space between cards
              _buildSkillCard(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSection() {
    return Column(
      children: [
        CircleAvatar(
          radius: 50, // Adjust the radius as needed
          backgroundImage: AssetImage('assets/images/profile.jpeg'), // Replace with your image URL
          // If you want a placeholder color instead of an image, use:
          // backgroundColor: Colors.grey,
        ),
        SizedBox(height: 10), // Space between image and name
        Text(
          'Syafirli Pindaningtyas', // Replace with the name you want
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white), // Set text color to white
        ),
      ],
    );
  }

  Widget _buildCard(BuildContext context, String title, String content) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9, // Responsive width
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: const Color.fromARGB(255, 158, 154, 154), // Set card color
        child: Padding(
          padding: EdgeInsets.all(20.0), // Adjust padding as needed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 233, 235, 236)),
              ),
              SizedBox(height: 10),
              Text(
                content,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: const Color.fromARGB(179, 255, 255, 255)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillCard(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9, // Responsive width
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: const Color.fromARGB(255, 158, 154, 154), // Set card color
        child: Padding(
          padding: EdgeInsets.all(20.0), // Adjust padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Skill",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 233, 235, 236)),
              ),
              SizedBox(height: 10),
              _buildBulletPoint("PHP"),
              _buildBulletPoint("Typescript"),
              _buildBulletPoint("Javascript"),
              _buildBulletPoint("Angular"),
              _buildBulletPoint("Laravel"),
              _buildBulletPoint("UI/UX"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String skill) {
    return Row(
      children: <Widget>[
        Icon(Icons.circle, size: 8, color: Colors.white), // Bullet point
        SizedBox(width: 8), // Space between bullet and text
        Expanded(
          child: Text(
            skill,
            style: TextStyle(fontSize: 18, color: const Color.fromARGB(179, 255, 255, 255)),
          ),
        ),
      ],
    );
  }
}

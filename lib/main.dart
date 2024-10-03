import 'package:flutter/material.dart';
import 'page2.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/firly.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromRGBO(241, 224, 234, 1),
                child: SizedBox(
                  width: 450, // Atur lebar sesuai kebutuhan
                  height: 400, // Atur tinggi sesuai kebutuhan
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 100.0, // Atur radius sesuai kebutuhan
                          backgroundImage: AssetImage('assets/images/firly.jpg'),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Syafirli Pindaningtyas",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 214, 202, 202)),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Vocational High School Student at SMK Wikrama Bogor",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                        SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page2()),
                            );
                          },
                          child: Text('See more'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

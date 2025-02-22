import 'package:carousel_pro/carousel_pro.dart';
import 'package:ease_the_error/chatbot/start.dart';
import 'package:ease_the_error/doubt_app/board.dart';
import 'package:ease_the_error/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget image_carousel = new Container(
    height: 180.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage("assets/img1.jpeg"),
        AssetImage("assets/img2.jpeg"),
        AssetImage("assets/img3.jpeg"),
        AssetImage("assets/img4.jpeg"),
        AssetImage("assets/img5.jpeg"),
        AssetImage("assets/img6.jpeg"),
        AssetImage("assets/img7.jpeg"),
        AssetImage("assets/img8.jpeg"),
      ],
      autoplay: true,
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 2000),
    ),
  );
  Widget job_carousel = new Container(
    height: 180.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage("assets/emp.jpeg"),
        AssetImage("assets/emp2.jpeg"),
        AssetImage("assets/emp3.jpeg"),
        AssetImage("assets/emp1.jpeg"),
        AssetImage("assets/emp5.jpeg"),
      ],
      autoplay: true,
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 2000),
    ),
  );
  Widget alumni_carousel = new Container(
    height: 500.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage("assets/al1.jpeg"),
        AssetImage("assets/al2.jpeg"),
        AssetImage("assets/al3.jpeg"),
        AssetImage("assets/al4.jpeg"),
        AssetImage("assets/al5.jpeg"),
        AssetImage("assets/al6.jpeg"),
      ],
      autoplay: true,
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 2000),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        title: Text(
          'SVCE Mobile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/svce.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 20),
                    child: Text(
                      "Welcome !!!",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Text(
                            user.displayName,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      _launchURL("https://www.svce.ac.in/");
                    },
                    child: ListTile(
                      title: Text(
                        'Events',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                        ),
                      ),
                      leading: Icon(
                        Icons.control_point,
                        color: Colors.white,
                      ),
                      trailing: Icon(Icons.arrow_right,
                          color: Colors.white, size: 32),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _launchURL("https://svce.mastersofterp.in/");
                    },
                    child: ListTile(
                      title: Text(
                        'Student ERP',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                        ),
                      ),
                      leading: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      trailing: Icon(Icons.arrow_right,
                          color: Colors.white, size: 32),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    },
                    child: ListTile(
                      title: Text(
                        'Ask Veronica',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                        ),
                      ),
                      leading: Icon(
                        Icons.help,
                        color: Colors.white,
                      ),
                      trailing: Icon(Icons.arrow_right,
                          color: Colors.white, size: 32),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoardApp()));
                    },
                    child: ListTile(
                      title: Text(
                        'Sticky Notes',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                        ),
                      ),
                      leading: Icon(
                        Icons.notes,
                        color: Colors.white,
                      ),
                      trailing: Icon(Icons.arrow_right,
                          color: Colors.white, size: 32),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.logout();
                    },
                    child: ListTile(
                      title: Text(
                        'Logout',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_right,
                          color: Colors.white, size: 32),
                      leading: Icon(
                        Icons.logout,
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            image_carousel,
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'About Us',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 27,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'SVCE is a unit of Sri Venkateswara Educational and Health Trust (SVEHT). The Trust was founded on 1 August 1985 at the behest and benign blessings of His Holiness Pujashree Kanchi Kamakoti Peedathipathi Sri Jayendra Saraswathi Swamigal. Dr. A. C. Muthiah, a renowned engineer, industrialist and philanthropist, is the Chairman of the Governing Council of the college. The college is in a 95 acre lush green Campus. It is housed in architecturally exquisite buildings with ample infrastructure such as classrooms, laboratories, libraries, sports arena, canteen, hostels, dispensary, bank etc.,',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Mission',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 27,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "To develop SVCE as a 'CENTRE OF EXCELLENCE' offering Engineering Education to men and women at undergraduate and postgraduate degree levels, bringing out their total personality, emphasising ethical values and preparing them to meet the growing challenges of the industry and diverse societal needs of our nation.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Quality Policy',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 27,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "To impart quality education in Science, Engineering and Technology, nurturing right attitudes towards scholarship, research and entrepreneurship, enabling students to meet the challenges of industry, including Standards of Training, Certification and Watch keeping (STCW) requirements, society and environment.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/achieve.jpeg'),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Top Recruiters',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                job_carousel,
              ],
            ),
            SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Activities',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/act.jpeg'),
              ],
            ),
            SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Our Prominent Alumni',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                alumni_carousel,
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  _launchURL(String place) async {
    var url = place;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

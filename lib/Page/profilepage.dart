import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  Widget bioboxed({@required icon, text}) {
    return Material(
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.blue,
            ),
            SizedBox(width: 30),
            Text(
              text,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: double.infinity,
              color: Colors.blue.withOpacity(0.2),
            ),
            Container(
              margin: EdgeInsets.only(top: 100, left: 240),
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5),
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/profile.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Habib Dwi Prajoto",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: Colors.black45,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "1 Juni 2000",
                        style: TextStyle(fontSize: 12, color: Colors.black45),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.mail, color: Colors.black45),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "habibdwi73@gmail.com",
                        style: TextStyle(fontSize: 12, color: Colors.black45),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 50),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              bioboxed(icon: Icons.person, text: "Habib Dwi Prajoto"),
              Divider(
                thickness: 1,
              ),
              bioboxed(icon: Icons.calendar_today, text: "01/06.2000"),
              Divider(
                thickness: 1,
              ),
              bioboxed(icon: Icons.mail, text: "habibdwi73@gmail.com"),
              Divider(
                thickness: 1,
              ),
              bioboxed(icon: Icons.visibility, text: "haloo"),
              Divider(
                thickness: 1,
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 2),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Text(
            'Edite Profile',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          onPressed: () {},
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 2),
              side: BorderSide(width: 1, color: Colors.blue),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Text(
            'Sign Out',
            style: TextStyle(fontSize: 14, color: Colors.blue),
          ),
          onPressed: () {},
        )
      ],
    ));
  }
}

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: signupPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class signupPage extends StatefulWidget {
  const signupPage({super.key});

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  bool ispassword = true;

  final TextEditingController usernameTxt = TextEditingController();
  final TextEditingController passwordTxt = TextEditingController();
  final TextEditingController phonenNumberTxt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 180.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150.0),
                    bottomRight: Radius.circular(150.0),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFFD81E5B),
                        Color(0xFF23395B),
                      ])),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 115.0,
                left: MediaQuery.of(context).size.width / 3,
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://th.bing.com/th/id/OIP.pegfGc8sWHh2_RuwiuAknwHaHZ?pid=ImgDet&rs=1"),
                backgroundColor: Colors.white,
                radius: 65.0,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 250.0, right: 10.0, left: 10.0),
              child: Column(
                children: [
                  TextField(
                    controller: usernameTxt,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 170, 27, 134),
                      ),
                      //labelText: "username",
                      hintText: "username",
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    controller: passwordTxt,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Color.fromARGB(255, 175, 38, 145),
                      ),
                      //labelText: "username",
                      hintText: "password",
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    controller: phonenNumberTxt,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 150, 31, 118),
                      ),
                      //labelText: "username",
                      hintText: "phonenumber",
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("$usernameTxt+$passwordTxt+$phonenNumberTxt");
                    },
                    child: Container(
                      width: 180.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xFFD81E5B),
                          Color(0xFF23395B),
                        ]),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        child: Text(
                          "signup",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

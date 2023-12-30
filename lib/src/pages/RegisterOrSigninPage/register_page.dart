import 'package:flutter/material.dart';
import 'package:spotify/src/pages/MainPage/main_page.dart';
import 'package:spotify/src/pages/RegisterOrSigninPage/signin_page.dart';
import '../LoadingPage/loading_page.dart';
import '../MainPage/HomePage/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RegisterPage(),
    title: "Register Form",
  ));
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool hasText = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFF1C1B1B),
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Color(0xFF1C1B1B),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              height: 45,
              child: Image(image: AssetImage('images/Logo/Spotify.png')),
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
            child: Column(
          children: [
            // Sign In Characters
            Container(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 100),
                    child: Text(
                      "Register",
                      style: GoogleFonts.libreBaskerville(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "If You Need any Support, ",
                            style: GoogleFonts.libreBaskerville(
                                color: Colors.white60,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const SigninForm()));
                            },
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  "Close",
                                                  style: GoogleFonts
                                                      .libreBaskerville(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                ))
                                          ],
                                          title: Text(
                                            "Access to Spotify/support.com for more!",
                                            style: GoogleFonts.libreBaskerville(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          contentPadding: EdgeInsets.all(20),
                                        ));
                              },
                              child: Text(
                                "Click Here",
                                style: GoogleFonts.libreBaskerville(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Register Form
            Container(
              child: Stack(
                children: [
                  //Full Name Form
                  Container(
                    child: Stack(
                      children: [
                        // Email
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 28, vertical: 10),
                          child: TextFormField(
                            onChanged: (text) {
                              setState(() {
                                hasText = text.isNotEmpty;
                              });
                            },
                            style: TextStyle(
                                color: hasText ? Colors.white : Colors.grey),
                            decoration: InputDecoration(
                                hintText: "Full Name",
                                hintStyle: TextStyle(
                                    color: Colors.white60, fontSize: 12),
                                contentPadding:
                                    EdgeInsets.fromLTRB(30, 10.0, 50, 10.0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white60,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                        ),
                        // Email
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 28, vertical: 30),
                          margin: EdgeInsets.only(top: 40),
                          child: TextFormField(
                            onChanged: (text) {
                              setState(() {
                                hasText = text.isNotEmpty;
                              });
                            },
                            style: TextStyle(
                                color: hasText ? Colors.white : Colors.grey),
                            decoration: InputDecoration(
                                hintText: "Enter Email",
                                hintStyle: TextStyle(
                                    color: Colors.white60, fontSize: 12),
                                contentPadding:
                                    EdgeInsets.fromLTRB(30, 10.0, 50, 10.0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white60,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                        ),
                        // Password
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          margin: EdgeInsets.only(top: 130),
                          child: TextField(
                            onChanged: (text) {
                              setState(() {
                                hasText = text.isNotEmpty;
                              });
                            },
                            style: TextStyle(
                                color: hasText ? Colors.white : Colors.grey),
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Colors.white60, fontSize: 12),
                                contentPadding:
                                    EdgeInsets.fromLTRB(30, 10.0, 50, 10.0),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white60,
                                    ),
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Create Account
            Container(
              padding: EdgeInsets.only(top: 30),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                height: 92,
                minWidth: 325,
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Create Account",
                  style: GoogleFonts.libreBaskerville(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),

            // Or Text
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 1,
                    width: 150,
                    color: Colors.white60,
                  ),
                  Container(
                    child: Text("Or",
                        style: GoogleFonts.libreBaskerville(
                            color: Colors.white60)),
                  ),
                  Container(
                    height: 1,
                    width: 150,
                    color: Colors.white60,
                  )
                ],
              ),
            ),
            // Sign in Else
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset('images/Icon/google.png'),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset('images/Icon/apple.png'),
                  ),
                ],
              ),
            ),
            // Register Text
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Do You Have An Account?  ",
                      style: GoogleFonts.libreBaskerville(
                          color: Colors.white60,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SigninPage()));
                    },
                    child: Text(
                      "Sign In Now",
                      style: GoogleFonts.libreBaskerville(
                          color: Colors.green,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    ));
  }
}

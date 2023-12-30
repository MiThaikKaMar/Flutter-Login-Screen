import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomePage()),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
        centerTitle: true,
        title: Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,
           // decoration: TextDecoration.underline,
            decorationColor: Colors.white
          ),
        ),
        //  backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
        leading: Icon(
          Icons.chevron_left,
          size: 32,
          color: Colors.white,
        ),
        // actions: [
        //   Icon(Icons.access_alarm,color: Colors.white,)
        // ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        color: Color.fromRGBO(19, 19, 19, 1.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(38, 38, 38, 1.0),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 16,),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(38, 38, 38, 1.0),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () {
                  print("Sign in button tapped");
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  print("Recover password tapped");
                },
                child: Text(
                  "Recover password",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

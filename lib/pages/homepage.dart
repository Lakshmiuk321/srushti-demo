import 'package:flutter/material.dart';
import 'package:miniproject/pages/dashboardpage.dart';
import 'package:miniproject/utils/sidebar.dart';
// import 'package:miniproject/utils/custom_appbar.dart';
// import 'package:miniproject/utils/sidebar.dart';

class Homepage extends StatefulWidget {

  @override
  _Homepage createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(),
      drawer: Sidebar(),
      
      body: Container(
        height: 900,
        width: 500,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
Colors.deepOrange,   Colors.yellow,  ],
            end: Alignment.topCenter,
                        begin: Alignment.bottomCenter,
         ),
        ),
        
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/head.png',
                  ),
                  const SizedBox(height: 55),
                  const Text(
                    'Telugu Desam Party',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  const Text('AndhraPradesh',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                  const SizedBox(
                    height: 25,
                  ),
                  // Text('Admin Login'),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: 'Email',
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white,
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: 'Password',
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.lock_open_rounded,
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white,
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    Checkbox(
                      checkColor: Colors.black,
                      activeColor: Colors.white,
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value ?? false;
                        });
                      },
                    ),
                    const Text(
                      'Reminder Me',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: const Text('Sign in',
                        style: TextStyle(fontSize: 15, color: Colors.orange)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dashboardpage()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}


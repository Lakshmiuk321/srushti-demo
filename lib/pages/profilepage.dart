import 'package:flutter/material.dart';
import 'package:miniproject/pages/secondprofile.dart';

class Profilepage extends StatefulWidget {
  @override
  _Profilepage createState() => _Profilepage();
}

class _Profilepage extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: Colors.orange,

      appBar: AppBar(
                      backgroundColor: Colors.orange,

        title: const Text(
          'Hi, Ramkumar Ramdevu',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: 
      Container( 
        decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),color: Colors.white),
        padding: const EdgeInsets.all(16),
        child: Column(
        
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              // padding: const EdgeInsets.all(16),
              height: 240,
              width: 350,
              child: Card(
                color: const Color.fromRGBO(252, 228, 212, 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/rss-logo.png'),
                      const SizedBox(
                        height: 10,
                      ),
                        const Text(
                          'Ramkumar Ramdevu',
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                       const Text(
                          'Swayamsevak',
                          style: TextStyle(
                              color: Colors.orangeAccent, fontSize: 18),
                        ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'vibhag      :Godavari\nZilla        :East Godavari\n City        :Rajahmundry',
                            style:
                                TextStyle(color: Colors.orange, fontSize: 12),
                          ),
                          Image.asset('assets/images/qr.png'),
                        ],
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Profilesecondpage()));
                  },
               child: Image.asset(
                  'assets/images/My Profile.png',
                  height: 100,
                  width: 100,
                ),),
                
                const SizedBox(
                  width: 4,
                ),
                Image.asset(
                  'assets/images/MyGatanayakGatapramukh.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(
                  width: 4,
                ),
                Image.asset(
                  'assets/images/Transfer.png',
                  height: 100,
                  width: 100,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
               Image.asset(
                  'assets/images/Library.png',
                  height: 100,
                  width: 100,
                ),
              ])
          ],
        ),
          
        
      ),
      bottomNavigationBar:                             
      BottomNavigationBar(
                backgroundColor: Colors.white,
                selectedItemColor: Colors.orange,
                unselectedItemColor: Colors.grey,
                type: BottomNavigationBarType.fixed,
                onTap: (index) {
                  setState(() {});
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.message_outlined),
                    label: 'message',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: 'settings',
                  ),
                ])

    );
    
  }
}

import 'package:flutter/material.dart';
import 'package:miniproject/pages/adduserspage.dart';
import 'package:miniproject/pages/adminofficialstab_page.dart';
import 'package:miniproject/pages/allgraviancepage.dart';
import 'package:miniproject/pages/areapage.dart';
import 'package:miniproject/pages/dashboardpage.dart';
import 'package:miniproject/pages/deptcontacts_tabs.dart';
import 'package:miniproject/pages/griviancepage.dart';
import 'package:miniproject/pages/griviinchargetabspage.dart';
import 'package:miniproject/pages/masterpage.dart';
import 'package:miniproject/pages/partyleaders_tabspage.dart';

class Sidebar extends StatefulWidget {
  @override
  _Sidebar createState() => _Sidebar();
}

class _Sidebar extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      // height: 100,
      child: Drawer(
        child: ListView(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Image.asset(
                'assets/images/cycle.jpg',
                height: 40,
                width: 40,
              ),
              const Icon(Icons.menu),
            ]),
            const SizedBox(
              height: 10,
            ),
            ListTile(
                leading: const Icon(Icons.home_work_outlined,
                    color: Colors.deepOrange),
                title: const Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 13),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboardpage()));
                }),
            ExpansionTile(
                collapsedIconColor: Colors.deepOrange,
                leading: const Icon(Icons.link, color: Colors.deepOrange),
                title: const Text('Grievance', style: TextStyle(fontSize: 13)),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                children: <Widget>[
                  ListTile(
                      title: const Text('My Grievance',
                          style: TextStyle(fontSize: 13)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Griviancepage()));
                      }),
                  ListTile(
                      title: const Text('All Grievance',
                          style: TextStyle(fontSize: 13)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Allgraviancepage()));
                      })
                ]),
            ListTile(
              leading: const Icon(
                Icons.pie_chart,
                color: Colors.deepOrange,
              ),
              title: const Text("Grievance Incharge",
                  style: TextStyle(fontSize: 13)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => grivitabspage()));
              },
            ),
            ExpansionTile(
                collapsedIconColor: Colors.deepOrange,
                leading: const Icon(Icons.home, color: Colors.deepOrange),
                title:
                    const Text('Govt Contacts', style: TextStyle(fontSize: 13)),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                children: <Widget>[
                  ListTile(
                      title: const Text('Department Contacts',
                          style: TextStyle(fontSize: 13)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DeptcontactsTabs()));
                      }),
                  ListTile(
                      title: const Text('Administrative Officials',
                          style: TextStyle(fontSize: 13)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdminofficialstabPage()));
                      })
                ]),
            ExpansionTile(
                collapsedIconColor: Colors.deepOrange,
                leading: const Icon(Icons.person, color: Colors.deepOrange),
                title:
                    const Text('Party Leaders', style: TextStyle(fontSize: 13)),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                children: <Widget>[
                  ListTile(
                      title: const Text('ADD LEADER',
                          style: TextStyle(fontSize: 13)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Candidatesdetails()));
                      }),
                ]),
            ListTile(
              leading: const Icon(Icons.rocket_launch_outlined,
                  color: Colors.deepOrange),
              title: const Text("Area", style: TextStyle(fontSize: 13)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Areapage()));
              },
            ),
            const ListTile(
              title: Text('MASTER DATA', style: TextStyle(fontSize: 12)),
            ),
            ExpansionTile(
                collapsedIconColor: Colors.deepOrange,
                leading: const Icon(Icons.rocket_launch_outlined,
                    color: Colors.deepOrange),
                title:
                    const Text('Master Data', style: TextStyle(fontSize: 13)),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                children: <Widget>[
                  ListTile(
                      title: const Text('Master Data',
                          style: TextStyle(fontSize: 13)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Masterpage()));
                      }),
                  ListTile(
                      title: const Text(' Add User',
                          style: TextStyle(fontSize: 13)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Adduserspage()));
                      }),
                ]),
          ],
        ),
      ),
    );
  }
}

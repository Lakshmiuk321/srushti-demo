import 'package:flutter/material.dart';
import 'package:miniproject/pages/changepasswordpage.dart';
import 'package:miniproject/pages/homepage.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;
  final PreferredSizeWidget? bottom;

  const CustomAppBar({super.key, this.height = kToolbarHeight, this.bottom});

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize =>
      Size.fromHeight(bottom == null ? height : height + 50);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow, Colors.deepOrange],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              _showCustomDialog(context);
            },
            child: const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                'assets/images/cycle.jpg',
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            'Admin',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
      bottom: widget.bottom,
    );
  }

  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Stack(
          children: [
            Positioned(
              top: 50, // Adjust the vertical position
              right: 20, // Adjust the horizontal position
              child: Material(
                color: Colors.transparent,
                child: Container(
                  // height: 200,
                  // width: 80,

                  width: MediaQuery.of(context).size.width * 0.7,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'WELCOME!',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ListTile(
                        leading: const Icon(
                          Icons.lock,
                          size: 20,
                        ),
                        title: const Text(
                          'Change Password',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Changepasswordpage(),
                              ));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.directions_run),
                        title: const Text(
                          'Logout',
                          style: TextStyle(fontSize: 13),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepage()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

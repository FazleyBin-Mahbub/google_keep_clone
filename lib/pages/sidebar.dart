import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_keep_notes/constants/constanst.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: bgColor,
          ),
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 16),
                child: Text(
                  'Google Keep',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(
                color: white.withOpacity(0.3),
              ),
              // first section
              sideBarSections(
                color: Colors.orangeAccent.withOpacity(0.3),
                icon: Icons.lightbulb_outline,
                title: 'Notes',
                onClick: () {},
              ),

              // second section
              sideBarSections(
                  icon: Icons.archive_outlined,
                  title: 'Archive',
                  onClick: () {}),
              // settings section
              sideBarSections(
                icon: Icons.settings_outlined,
                title: 'Settings',
                onClick: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sideBarSections(
      {required IconData icon,
      required String title,
      Color? color,
      VoidCallback? onClick}) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          color,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
        ),
      ),
      onPressed: onClick,
      child: ListTile(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: Colors.white.withOpacity(0.7),
            size: 30,
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.roboto(
            color: Colors.white.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}

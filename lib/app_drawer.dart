import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce_app/about_page.dart';
import 'package:ecommerce_app/app_drawer.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container (
        child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Sung Han Bin',
              style: GoogleFonts.montserrat( 
                fontWeight: FontWeight.w500,
                fontSize: 22,
                ),
            ),
            accountEmail: Text('bpsunghanbinkr@gmail.com',
            style: GoogleFonts.montserrat( 
                fontSize: 12,
                decoration: TextDecoration.underline,
                color: Color.fromRGBO(33, 150, 243, 1),
                fontStyle: FontStyle.italic,
                ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('../assets/shb.jpg'))
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  '../assets/backimage.jpg'
                  ), 
                  fit: BoxFit.cover
                  )
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_rounded,
            color: Color.fromARGB(255, 44, 156, 94),
            ),
            title: Text('Home',
            style: GoogleFonts.montserrat( 
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 44, 156, 94),
                ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.account_box,
            color: Color.fromARGB(255, 44, 156, 94),
            ),
            title: Text('My Account',
            style: GoogleFonts.montserrat( 
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 44, 156, 94),
                ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag_rounded,
            color: Color.fromARGB(255, 44, 156, 94),
            ),
            title: Text('My Orders',
            style: GoogleFonts.montserrat( 
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 44, 156, 94),
                ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart,
            color: Color.fromARGB(255, 44, 156, 94),
            ),
            title: Text('My Cart',
            style: GoogleFonts.montserrat( 
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 44, 156, 94),
                ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings_rounded,
            color: Color.fromARGB(255, 44, 156, 94),
            ),
            title: Text('Settings',
            style: GoogleFonts.montserrat( 
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 44, 156, 94),
                ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.people,
            color: Color.fromARGB(255, 44, 156, 94),
            ),
            title: Text('About Us',
            style: GoogleFonts.montserrat( 
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 44, 156, 94),
                ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.help_rounded,
            color: Color.fromARGB(255, 44, 156, 94),
            ),
            title: Text('Help',
            style: GoogleFonts.montserrat( 
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 44, 156, 94),
                ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.logout,
            color: Color.fromARGB(255, 44, 156, 94),
            ),
            title: Text('Sign Out',
            style: GoogleFonts.montserrat( 
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 44, 156, 94),
                ),
            ),
            onTap: () => null,
          ),
        ],
      )
      ),
    );
  }
}
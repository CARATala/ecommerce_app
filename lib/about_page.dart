import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce_app/about_page.dart';
import 'package:ecommerce_app/app_drawer.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        ),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 44, 156, 94),
          title: Text('EcoBambusa', style: GoogleFonts.caveat(fontStyle: FontStyle.normal, fontSize: 50)),
          centerTitle: true,
        ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
        children: <Widget> [
          _buildCompanyTagline(context), // EcoBambusa's Tagline
          _buildCompanyProfile(context), // EcoBambusa Logo
          _buildCompanyAboutUs(context), // EcoBambusa's About Page (Content)
          _buildBottomText(context), // The texts at the bottom part
        ],
        ),
        ),
      ),
    );
  }

  Widget _buildCompanyTagline(BuildContext context){
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          RichText(
            text: TextSpan(
              text: '" ',
              style: GoogleFonts.montserrat(
                fontStyle: FontStyle.italic, 
                fontSize: 15,
                color: Color.fromARGB(255, 44, 156, 94),
                ),
              children: <TextSpan> [
                TextSpan(
                  text: 'EcoBambusa',
                  style: GoogleFonts.caveat(
                    fontStyle: FontStyle.normal, 
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 44, 156, 94),
                  ),
                ),
                TextSpan(
                  text: ' : Crafted with care for you and the planet "',
                  style: GoogleFonts.montserrat(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Color.fromARGB(255, 44, 156, 94),
                  )
                )
              ]
            )
          )
        ],
      ),
    );
  }

  Widget _buildCompanyProfile(BuildContext context){
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset('../assets/ecologo.png',
        fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
  Widget _buildCompanyAboutUs(BuildContext context){
    return Container(
      padding: const EdgeInsets.fromLTRB(100, 5, 100, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Text(
            'About Ecobambusa',
            style: GoogleFonts.montserrat(
              fontSize: 30, 
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 16, 87, 48),
              ),
          ),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: 'Welcome to ',
              style: GoogleFonts.montserrat(
                fontSize: 15, 
                color: Colors.black,
                ),
              children: <TextSpan>[
                TextSpan(
                  text: 'EcoBambusa',
                  style: GoogleFonts.caveat(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      text: ' --the premier online destination for sustainable bamboo products! ',
                      style: GoogleFonts.montserrat(
                        decoration: TextDecoration.none,
                        decorationStyle: TextDecorationStyle.solid,
                        fontSize: 15,
                      ),
                    ),
                    TextSpan(
                      text: 'From bamboo crafts and accessories to bamboo homeware and kitchenware, we have got everything you need to live a more sustainable lifestyle. Durability, functionality, and sustainability are all assured by the careful selection of the finest bamboo materials for our products.',
                      style: GoogleFonts.montserrat(
                        decoration: TextDecoration.none,
                        decorationStyle: TextDecorationStyle.double,
                        fontSize: 15,
                      ), 
                    ),
                    TextSpan(
                      text: '\n\nAt EcoBambusa, we are passionate about the environment and believe in the power of bamboo to make a difference. That is why we have made it our mission to offer a wide selection of high-quality bamboo products that are both eco-friendly and stylish. We also believe that everyone can make a difference by making small changes in their daily lives. By choosing bamboo products, you are not only making a choice that is better for the planet but also supporting a more ethical and sustainable way of life.',
                      style: GoogleFonts.montserrat(
                        decoration: TextDecoration.none,
                        decorationStyle: TextDecorationStyle.double,
                        fontSize: 15,
                      ), 
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
    Widget _buildBottomText(BuildContext context){
    return Container(
      padding: const EdgeInsets.fromLTRB(100, 15, 100, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Text(
            '\nWe take pride in being a small business that is committed to ethical and sustainable practices.',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              fontSize: 12, 
              fontWeight: FontWeight.w400,
              color: Colors.red,
              ),
          ),
        ]
      ),
    );
  }
}
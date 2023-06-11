import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Ecobambusa - Events',
            style: GoogleFonts.montserrat(
              fontSize: 30, 
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 16, 87, 48),
              ),
          )
        ],
      ),
    );
  }
    
}

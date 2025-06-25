import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.only(
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      elevation: 8,
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,

      //App name and logo
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              color: Theme.of(context).appBarTheme.backgroundColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(24),
              ),
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 200,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 12),
                Text(
                  'তাসবিহ By Fardeen',
                  style: GoogleFonts.galada(
                    fontSize: 22,
                    letterSpacing: 1,
                    color: Theme.of(context).appBarTheme.foregroundColor,
                  ),
                ),
              ],
            ),
          ),
          //const Spacer(),
          const Divider(thickness: 1, indent: 16, endIndent: 16),

          //My Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
            child: Row(
              children: [
                Icon(Icons.facebook, color: Colors.blue[600]),
                const SizedBox(width: 10),
                Text(
                  'facebook.com/fardeenhimself',
                  style: GoogleFonts.spaceMono(fontSize: 12, letterSpacing: 1),
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              children: [
                Icon(Icons.email, color: Colors.deepOrange[600]),
                const SizedBox(width: 10),
                Text(
                  'fardeen.cse20@gmail.com',
                  style: GoogleFonts.spaceMono(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

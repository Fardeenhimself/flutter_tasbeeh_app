import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasbeeh_app/utils/custom_app_style.dart';

class ShowSuccessModal extends StatelessWidget {
  const ShowSuccessModal({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(20),
      ),
      contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
      titlePadding: const EdgeInsets.only(top: 20),
      title: Column(
        children: [
          Text('🎉', style: TextStyle(fontSize: 40)),
          const SizedBox(height: 12),
          Text(
            'মাশা আল্লাহ!',
            textAlign: TextAlign.center,
            style: CustomAppStyle.cardTitleStyle,
          ),
          const SizedBox(height: 12),
        ],
      ),
      content: Text(
        'আপনি আপনার লক্ষ্য পূর্ণ করেছেন।',
        textAlign: TextAlign.center,
        style: CustomAppStyle.cardTranslationStyle,
      ),
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: const EdgeInsets.only(bottom: 16, top: 10),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal[600],
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
            ),
            elevation: 4,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'জাযাকআল্লাহু খায়ের',
            style: GoogleFonts.notoSerifBengali(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ],
    );
  }
}

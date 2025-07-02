import 'package:flutter/material.dart';

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
          Text('🎉', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 12),
          Text(
            'মাশা আল্লাহ!',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 12),
        ],
      ),
      content: Text(
        'আপনি আপনার লক্ষ্য পূর্ণ করেছেন।',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      actions: [
        ElevatedButton(
          style: Theme.of(context).elevatedButtonTheme.style,
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'জাযাকআল্লাহু খায়ের',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}

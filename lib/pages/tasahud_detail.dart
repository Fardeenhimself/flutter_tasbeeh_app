import 'package:flutter/material.dart';
import 'package:tasbeeh_app/components/custom_drawer.dart';
import 'package:tasbeeh_app/model/tasahud_model.dart';
import 'package:tasbeeh_app/utils/custom_app_style.dart';

class TasahudDetail extends StatelessWidget {
  const TasahudDetail({super.key, required this.tasahud});

  final TasahudModel tasahud;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tasahud.tCat,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      endDrawer: CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: CustomAppStyle.styledCard(
              context: context,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tasahud.tName,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    tasahud.tArabic,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    tasahud.tMeaning,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    tasahud.tIdentity,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

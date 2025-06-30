import 'package:flutter/material.dart';
import 'package:tasbeeh_app/components/custom_drawer.dart';
import 'package:tasbeeh_app/model/tasahud_model.dart';
import 'package:tasbeeh_app/pages/tasahud_detail.dart';
import 'package:tasbeeh_app/utils/custom_tasahud_cat.dart';

class TasahudCategory extends StatelessWidget {
  const TasahudCategory({super.key, required this.tasahuds});

  final List<TasahudModel> tasahuds;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('দুয়া', style: Theme.of(context).textTheme.titleLarge),
      ),
      endDrawer: CustomDrawer(),

      body: ListView.builder(
        itemCount: tasahuds.length,
        itemBuilder: (context, index) {
          final tasahud = tasahuds[index];
          return CustomTasahudCat(
            tasahud: tasahuds[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TasahudDetail(tasahud: tasahud),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

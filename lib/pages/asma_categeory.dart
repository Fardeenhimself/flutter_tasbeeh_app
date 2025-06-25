import 'package:flutter/material.dart';
import 'package:tasbeeh_app/lists/asma_list.dart';
import 'package:tasbeeh_app/model/asma_model.dart';
import 'package:tasbeeh_app/pages/counter_page.dart';
import 'package:tasbeeh_app/utils/custom_app_style.dart';
import 'package:tasbeeh_app/utils/custom_asma_cat.dart';

class AsmaCategeory extends StatelessWidget {
  const AsmaCategeory({super.key, required this.duas});

  final List<AsmaModel> duas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('দুয়া', style: CustomAppStyle.appBarStyle(context)),
      ),

      body: SafeArea(
        child: ListView.builder(
          itemCount: duas.length,
          itemBuilder: (context, index) {
            final dua = duas[index];
            return CustomAsmacat(
              dua: duas[index],
              onTap: () {
                {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (context) {
                      int selectedCount = 10;
                      return StatefulBuilder(
                        builder: (context, setModalState) {
                          return Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('আপনি কতবার করতে চান?'),
                                Slider(
                                  min: 1,
                                  max: 100,
                                  divisions: 99,
                                  value: selectedCount.toDouble(),
                                  onChanged: (value) {
                                    setModalState(() {
                                      selectedCount = value.toInt();
                                    });
                                  },
                                ),
                                Text('নির্বাচনঃ $selectedCount'),
                                const SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CounterPage(
                                          reflectionType: dua,
                                          maxCount: selectedCount,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text('Start'),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}

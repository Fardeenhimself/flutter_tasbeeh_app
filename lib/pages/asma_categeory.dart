import 'package:flutter/material.dart';
import 'package:haptic_feedback/haptic_feedback.dart';
import 'package:tasbeeh_app/components/custom_drawer.dart';
import 'package:tasbeeh_app/components/haptics_helper.dart';
import 'package:tasbeeh_app/model/asma_model.dart';
import 'package:tasbeeh_app/pages/counter_page.dart';
import 'package:tasbeeh_app/utils/custom_asma_cat.dart';

class AsmaCategeory extends StatelessWidget {
  const AsmaCategeory({super.key, required this.duas});

  final List<AsmaModel> duas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('দুয়া', style: Theme.of(context).textTheme.titleLarge),
      ),
      endDrawer: CustomDrawer(),

      body: SafeArea(
        child: ListView.builder(
          itemCount: duas.length,
          itemBuilder: (context, index) {
            final dua = duas[index];
            return CustomAsmacat(
              dua: duas[index],
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (context) {
                    int selectedCount = 10;
                    return SafeArea(
                      child: StatefulBuilder(
                        builder: (context, setModalState) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'আপনি কতবার করতে চান?',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                SliderTheme(
                                  data: Theme.of(context).sliderTheme,
                                  child: Slider(
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
                                ),
                                Text(
                                  'নির্বাচনঃ $selectedCount',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.displaySmall,
                                ),
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  style: Theme.of(
                                    context,
                                  ).elevatedButtonTheme.style,
                                  onPressed: () async {
                                    Navigator.pop(context);
                                    await HapticsHelper.vibrate(
                                      HapticsType.light,
                                    );
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
                                  child: Text(
                                    'শুরু করুন',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}

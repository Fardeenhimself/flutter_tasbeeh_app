import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasbeeh_app/components/custom_drawer.dart';
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
                                  style: CustomAppStyle.cardTranslationStyle,
                                ),
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    activeTrackColor: Color(0xFF50C878),
                                    inactiveTrackColor: Color(0xFF355E3B),
                                    thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0,
                                    ),
                                    overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 12.0,
                                    ),
                                    thumbColor: Colors.red,
                                  ),
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
                                  style: CustomAppStyle.duaIdentityStyle,
                                ),
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.teal,
                                    foregroundColor: Colors.white,
                                    minimumSize: Size(double.infinity, 50),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusGeometry.circular(12),
                                    ),
                                    padding: EdgeInsets.symmetric(vertical: 14),
                                    elevation: 4,
                                  ),
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
                                  child: Text(
                                    'শুরু করুন',
                                    style: GoogleFonts.notoSerifBengali(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                    ),
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

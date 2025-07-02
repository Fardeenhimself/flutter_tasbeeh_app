import 'package:haptic_feedback/haptic_feedback.dart';

class HapticsHelper {
  //Private Constructor
  HapticsHelper._();

  static bool? _canVibrate;

  static Future<void> vibrate(HapticsType hapticsType) async {
    // Check once if the device supports vibration
    _canVibrate ??= await Haptics.canVibrate();

    // Only vibrate if it's supported
    if(_canVibrate ?? false){
      await Haptics.vibrate(hapticsType);
    }  
    
    }
}

import 'package:flutter/material.dart';
import 'package:music_player/component/colors.dart';
import 'package:music_player/router/router.dart';
import 'package:music_player/router/router.gr.dart';

import 'component/text.dart';

void main() {
  runApp(
    MusicApp()
  );
}

class MusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // checkerboardRasterCacheImages: true,
      title: AppText.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColor.kmainColor,
        accentColor: AppColor.ksubMainColor,
        secondaryHeaderColor: Colors.black,
        
      ),
     onGenerateRoute: Router(),
    );
  }
}

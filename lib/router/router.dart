import 'package:auto_route/auto_route_annotations.dart';
import 'package:music_player/app/explore_screen.dart';
import 'package:music_player/app/homepage.dart';

@MaterialAutoRouter(
  routes: [
    // initial route is named "/"
    MaterialRoute(page: HomePage, initial: true),
    MaterialRoute(page: ExploreScreen),
   
  ],
)
class $Router{}
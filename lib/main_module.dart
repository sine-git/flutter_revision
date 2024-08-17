import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_revision/about_dialog.dart';
import 'package:flutter_revision/about_listtile.dart';
import 'package:flutter_revision/ainmated_default_textstyle.dart';
import 'package:flutter_revision/main_service.dart';
import 'package:flutter_revision/my_home_page.dart';

import 'absorb_pointer.dart';
import 'alert_digalog.dart';
import 'align.dart';
import 'animated_align.dart';
import 'animated_builder.dart';
import 'animated_container.dart';
import 'animated_cross_fade.dart';
import 'app_animated_icon.dart';
import 'app_animated_list.dart';
import 'app_animated_modal_barrier.dart';
import 'app_new_animated_list.dart';
import 'my_animation.dart';

class MainModule extends Module {
  List<Bind> get binds => [Bind((i) => MainService())];

  List<ModularRoute> get routes =>
      [ChildRoute("/", child: (context, args) => AppAnimatedModalBarrier())];
}
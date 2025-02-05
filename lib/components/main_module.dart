import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_revision/animations/animated-container.dart';
import 'package:flutter_revision/components/app_snack_bar.dart';
import 'package:flutter_revision/components/increment_intent.dart';
import 'package:flutter_revision/components/main_service.dart';
import 'package:flutter_revision/pages/contact-page/contact-page.dart';
import 'package:flutter_revision/pages/green-landing-page/home.dart';
import 'package:flutter_revision/pages/music-player/music-module.dart';
import 'package:flutter_revision/pages/music-player/play-list.dart';
import 'package:flutter_revision/pages/music-player/song-player.dart';
import 'package:flutter_revision/pages/pink-home-page/card-page.dart';
import 'package:flutter_revision/pages/pink-home-page/home.dart';
import 'package:flutter_revision/components/scale_transition.dart';
import 'package:flutter_revision/components/scroll_widget.dart';
import 'package:flutter_revision/components/selectable_text.dart';
import 'package:flutter_revision/components/sementic_widget.dart';
import 'package:flutter_revision/components/shader_mask.dart';
import 'package:flutter_revision/components/short_cut_widget.dart';
import 'package:flutter_revision/components/simple_dialog.dart';
import 'package:flutter_revision/components/single_child_scroll_view_app.dart';
import 'package:flutter_revision/components/size_box.dart';
import 'package:flutter_revision/components/size_transition.dart';
import 'package:flutter_revision/components/sized_overflow_box.dart';
import 'package:flutter_revision/components/slide_transition.dart';
import 'package:flutter_revision/components/slider.dart';
import 'package:flutter_revision/components/sliver_app_bar.dart';
import 'package:flutter_revision/components/sliver_fixed_extend.dart';
import 'package:flutter_revision/components/sliver_grid.dart';
import 'package:flutter_revision/components/sliver_list.dart';
import 'package:flutter_revision/components/sliver_opacity.dart';
import 'package:flutter_revision/components/sliver_padding.dart';
import 'package:flutter_revision/components/sliver_to_box_adapter.dart';
import 'package:flutter_revision/components/spacer.dart';
import 'package:flutter_revision/components/stack.dart';
import 'package:flutter_revision/components/stepper.dart';
import 'package:flutter_revision/components/stream_builder.dart';
import 'package:flutter_revision/components/switch.dart';
import 'package:flutter_revision/components/switch_list_tile.dart';
import 'package:flutter_revision/components/system_mous_cursors.dart';
import 'package:flutter_revision/components/tab_page_selector.dart';
import 'package:flutter_revision/components/tabbar.dart';
import 'package:flutter_revision/components/table.dart';
import 'package:flutter_revision/components/text.dart';
import 'package:flutter_revision/components/textButton.dart';
import 'package:flutter_revision/components/text_field.dart';
import 'package:flutter_revision/components/text_form_field.dart';
import 'package:flutter_revision/components/text_span.dart';
import 'package:flutter_revision/components/time_picker.dart';
import 'package:flutter_revision/components/toggle_button.dart';
import 'package:flutter_revision/components/tool_tip.dart';
import 'package:flutter_revision/components/transform.dart';
import 'package:flutter_revision/components/tween_animation_builder.dart';
import 'package:flutter_revision/components/value_listenable.dart';
import 'package:flutter_revision/components/vertical_divider.dart';
import 'package:flutter_revision/components/visibility.dart';
import 'package:flutter_revision/components/will_pop_scope.dart';
import 'package:flutter_revision/components/wrap.dart';

class MainModule extends Module {
  @override
  List<Bind> get binds => [Bind((i) => MainService())];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (context, args) => const SongPlayerPage()),
        ModuleRoute("/music", module: MusicModule())
      ];
}

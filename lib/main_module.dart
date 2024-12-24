import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_revision/app_snack_bar.dart';
import 'package:flutter_revision/increment_intent.dart';
import 'package:flutter_revision/main_service.dart';
import 'package:flutter_revision/scale_transition.dart';
import 'package:flutter_revision/scroll_widget.dart';
import 'package:flutter_revision/selectable_text.dart';
import 'package:flutter_revision/sementic_widget.dart';
import 'package:flutter_revision/shader_mask.dart';
import 'package:flutter_revision/short_cut_widget.dart';
import 'package:flutter_revision/simple_dialog.dart';
import 'package:flutter_revision/single_child_scroll_view_app.dart';
import 'package:flutter_revision/size_box.dart';
import 'package:flutter_revision/size_transition.dart';
import 'package:flutter_revision/sized_overflow_box.dart';
import 'package:flutter_revision/slide_transition.dart';
import 'package:flutter_revision/slider.dart';
import 'package:flutter_revision/sliver_app_bar.dart';
import 'package:flutter_revision/sliver_fixed_extend.dart';
import 'package:flutter_revision/sliver_grid.dart';
import 'package:flutter_revision/sliver_list.dart';
import 'package:flutter_revision/sliver_opacity.dart';
import 'package:flutter_revision/sliver_padding.dart';
import 'package:flutter_revision/sliver_to_box_adapter.dart';
import 'package:flutter_revision/spacer.dart';
import 'package:flutter_revision/stack.dart';
import 'package:flutter_revision/stepper.dart';
import 'package:flutter_revision/stream_builder.dart';
import 'package:flutter_revision/switch.dart';
import 'package:flutter_revision/switch_list_tile.dart';
import 'package:flutter_revision/system_mous_cursors.dart';
import 'package:flutter_revision/tab_page_selector.dart';
import 'package:flutter_revision/tabbar.dart';
import 'package:flutter_revision/table.dart';
import 'package:flutter_revision/text.dart';
import 'package:flutter_revision/textButton.dart';
import 'package:flutter_revision/text_field.dart';
import 'package:flutter_revision/text_form_field.dart';
import 'package:flutter_revision/text_span.dart';
import 'package:flutter_revision/time_picker.dart';
import 'package:flutter_revision/toggle_button.dart';
import 'package:flutter_revision/tool_tip.dart';
import 'package:flutter_revision/transform.dart';
import 'package:flutter_revision/tween_animation_builder.dart';
import 'package:flutter_revision/value_listenable.dart';
import 'package:flutter_revision/vertical_divider.dart';
import 'package:flutter_revision/visibility.dart';
import 'package:flutter_revision/will_pop_scope.dart';
import 'package:flutter_revision/wrap.dart';

class MainModule extends Module {
  @override
  List<Bind> get binds => [Bind((i) => MainService())];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute("/", child: (context, args) => const AppWrapWidget())];
}

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_revision/main_service.dart';
import 'package:flutter_revision/raw_autocomplete_widget.dart';

class MainModule extends Module {
  @override
  List<Bind> get binds => [Bind((i) => MainService())];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/",
            child: (context, args) => const AppRawAutoCompleteWidget())
      ];
}

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_revision/components/main_service.dart';
import 'package:flutter_revision/pages/music-player/play-list.dart';
import 'package:flutter_revision/pages/music-player/song-player.dart';
import 'package:modular_interfaces/src/route/route_context.dart';

class MusicModule extends Module {
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => [
        Bind(
          (i) => MainService(),
        )
      ];
  @override
  // TODO: implement modules
  List<ModularRoute> get routes => [
        ChildRoute("/player", child: (context, args) => const SongPlayerPage()),
        ChildRoute("/play-list", child: (context, args) => const PlayListPage())
      ];
}

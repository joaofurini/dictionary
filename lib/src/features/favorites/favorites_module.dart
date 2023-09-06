import 'package:dictionary/src/features/favorites/favorites_store.dart';
import 'package:dictionary/src/features/favorites/view/favorites_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:dictionary/src/features/history/view/history_screen.dart';

import 'package:dictionary/src/shared/views/root_layout.dart';

class FavoritesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => FavoritesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => RootLayout(
        currentIndex: 2,
        child: const FavoritesScreen(),
      ),
    ),
  ];
}

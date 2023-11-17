import 'package:flutter/material.dart';
import 'package:rayon_flutter_core/presentation/utils/l10n/l10n.dart';
import 'package:rayon_flutter_core/presentation/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const SizedBox(),
    );
  }
}

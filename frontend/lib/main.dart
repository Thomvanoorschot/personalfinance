import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/providers/user.dart';
import 'package:frontend/src/routing/app_router.dart';
import 'package:frontend/src/utils/size_config.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    initialization();
  }

  void initialization() async {
    final notifier = ref.watch(userProvider.notifier);
    await notifier.registerUnverifiedUser();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textButtonTheme:  TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xFFBC6C25),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFFFEFAE0),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF606C38), // #606C38 (96,108,56)
          primaryContainer: Color(0xFF283618), // #283618 (40,54,24)
          secondary: Color(0xFFDDA15E), // #DDA15E (221,161,94)
          secondaryContainer: Color(0xFFBC6C25), // #BC6C25 (188,108,37)
          surface: Color(0xFFFEFAE0), // #FEFAE0 (254,250,224)
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Color(0xFF283618), // Text/icons on surfaces
          onError: Colors.white,
          brightness: Brightness.light,
        )
      ),
    );
  }
}

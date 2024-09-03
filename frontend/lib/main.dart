import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/providers/user.dart';
import 'package:frontend/src/routing/app_router.dart';
import 'package:frontend/src/utils/size_config.dart';

bool shouldUseFirebaseEmulator = false;

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // await Firebase.initializeApp();
  // if (shouldUseFirebaseEmulator) {
  //   await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  // }

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
    const surface = Color(0xFFFEFAE0);
    const primary = Color(0xFF4E5D4E);
    const primaryContainer = Color(0xFF283618);
    const secondary = Color(0xFFDDA15E);
    const secondaryContainer = Color(0xFFBC6C25);

    SizeConfig().init(context);
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              backgroundColor: primary,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          navigationBarTheme: NavigationBarThemeData(
            backgroundColor: surface,
            indicatorColor: primary,
            labelTextStyle: WidgetStateProperty.all(
              const TextStyle(
                color: primaryContainer,
              ),
            ),
            iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((states) {
              if (states.contains(WidgetState.selected)) {
                return const IconThemeData(color: Colors.white);
              }
              return const IconThemeData(color: primaryContainer);
            }),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(
                backgroundColor: primary,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                disabledBackgroundColor: primary.withOpacity(0.7)),
          ),
          scaffoldBackgroundColor: surface,
          textTheme: const TextTheme(
            labelSmall: TextStyle(
              fontSize: 8
            ),
          ),
          colorScheme: const ColorScheme.light(
            primary: primary,
            primaryContainer: primaryContainer,
            onPrimary: Colors.white,
            secondary: secondary,
            secondaryContainer: secondaryContainer,
            onSecondary: Colors.white,
            surface: surface,
            onSurface: primaryContainer,
            error: Colors.red,
            onError: Colors.white,
            brightness: Brightness.light,
          )),
    );
  }
}

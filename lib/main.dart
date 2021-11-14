// @dart=2.9
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:smartdriver/amplifyconfiguration.dart';
import 'package:smartdriver/startpage.dart';
import 'package:amplify_api/amplify_api.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _configureAmplify();
  runApp(MyApp());
}

Future<void> _configureAmplify() async {
  bool _amplifyConfigured = false;

  if (!_amplifyConfigured) {
    //New
    // Add Pinpoint and Cognito Plugins

    AmplifyAuthCognito authPlugin = AmplifyAuthCognito();
    Amplify.addPlugin(authPlugin);

    try {
      // Once Plugins are added, configure Amplify
      await Amplify.configure(amplifyconfig);
      _amplifyConfigured = true;
    } catch (e) {
      print(e);
    }
  } // New
}
// Future<void> configureAmplify() async {
//   final AmplifyAPI _apiPlugin = AmplifyAPI();

//   final AmplifyAuthCognito authplugin = AmplifyAuthCognito();

//   try {
//     Amplify.addPlugins([authplugin, _apiPlugin]);
//     await Amplify.configure(amplifyconfig);
//   } catch (e) {
//     print("Amplify is Already Configured");
//   }
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Color(0xff2855ae)),
          textTheme: TextTheme(
              bodyText1:
                  TextStyle(fontFamily: 'source sans pro', fontSize: 18))),
      // theme: ThemeData(
      // This is the theme of your application.
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.
      // primarySwatch: Colors.orange,
      // ),
      home: StartPage(),
    );
  }
}

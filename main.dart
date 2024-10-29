import "package:device_preview/device_preview.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:recipe/providers/chnages.dart";
import "package:recipe/screens/homePage.dart";
void main(){
  runApp(
    MultiProvider(providers: [
            ChangeNotifierProvider(
              create: (_)=>changesProvider()
            ),
        ],child: DevicePreview(builder:(context)=>MyApp())), 
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(),debugShowCheckedModeBanner: false,);
  }
}
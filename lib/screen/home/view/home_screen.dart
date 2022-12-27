import 'dart:io';

import 'package:allnews/screen/home/modal/modal_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(Platform.isAndroid)
      {
        WebView.platform = AndroidWebView();
      }
  }

  @override
  Widget build(BuildContext context) {

    homeProvidertrue = Provider.of<HomeProvider>(context,listen: true);
    homeProviderfalse = Provider.of<HomeProvider>(context,listen: false);

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade900,
        title: Text("All in one News", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(itemCount: homeProviderfalse!.NewsData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2), itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 120,
                    width: 170,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  boxShadow: [BoxShadow(blurRadius: 2,)],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                        height: 40,
                        color: Colors.white,
                          alignment: Alignment.center,
                          child: TextButton(
                              onPressed: (){
                                Navigator.pushNamed(context, 'web');
                              },child: Text("${homeProviderfalse!.NewsData[index].name}"),
                          ),
                        ),
                      ),
                    ],
                  )],
                ),
                  ),
                ],
              );
            }),
          )
        ],
      ),
    ));
  }
}


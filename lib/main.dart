import "package:flutter/material.dart";
import "package:shimmer/shimmer.dart";

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home:const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Shimmer Effect')),
        body: Center(
          child: SizedBox(
            height: 800,
            width: double.infinity,
            // ignore: sort_child_properties_last
            child: Shimmer.fromColors(
              direction:ShimmerDirection.ltr,
              // ignore: sort_child_properties_last
             // child:const Text('Subscribe',
           // style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold 
           // ),
        //    ), 
            baseColor: Colors.grey.shade500,highlightColor:Colors.grey.shade400,
              child:ListView.builder(itemCount: 6, itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(20),
                  height: 100,
                  width: 400,
                  color: Color.fromARGB(255, 133, 71, 71)       );
              },),),
            )
          ),
          );
  }
      }
import 'package:clothing_app_demo/model/ClothList.dart';
import 'package:clothing_app_demo/widgets/cloth_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Cloth> _clothList = [
    Cloth(
        id: 1,
        image: Image.asset(
          'assets/images/waiting.png',
          fit: BoxFit.cover,
        ),
        description:
            'cotton which is generally accepted and made off thread-like material creats a comfort when its worn  '),

    Cloth(
        id: 1,
        image: Image.asset(
          'assets/images/waiting.png',
          fit: BoxFit.cover,
        ),
        description:
            'it keeps the body warm during cold weather and as well cool during harsh weather'),

            Cloth(
        id: 1,
        image: Image.asset(
          'assets/images/waiting.png',
          fit: BoxFit.cover,
        ),
        description:
            'plain and pattern material are use occassionially for making native wears '),

            Cloth(
        id: 1,
        image: Image.asset(
          'assets/images/waiting.png',
          fit: BoxFit.cover,
        ),
        description:
            'suite wears as the name implies serves as an attire for making suites during wedding and other occasions  '),

            Cloth(
        id: 1,
        image: Image.asset(
          'assets/images/waiting.png',
          fit: BoxFit.cover,
        ),
        description:
            'cotton which is generally accepted and made off thread-like material creats a comfort when its worn  '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}

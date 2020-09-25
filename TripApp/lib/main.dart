import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Homepage(),
      ),
    );

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PageController _pageController;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: <Widget>[
        createPage(),
        createPage(),
        createPage(),
      ],
    ));
  }

  Widget createPage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/one.jpg'),
        ),
      ),
    );
  }
}

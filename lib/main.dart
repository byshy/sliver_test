import 'package:flutter/material.dart';
import 'package:sliver_test/portfolio_tutorials_sub_page.dart';

import 'media_center_screen.dart';
import 'portfolio_sliver_app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  int length = 2;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: length, vsync: this);
    _tabController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            PortfolioSliverAppBar(
              'title',
            ),
            StickyHeader(
              child: TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                controller: _tabController,
                tabs: List.generate(length, (index) => Tab(text: '$index')),
              ),
            ),
//            SliverPersistentHeader(
//              delegate: SliverPersistentHeaderDelegateImpl(
//                tabBar: ,
//              ),
//            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children:
              List.generate(length, (index) => PortfolioTutorialsSubPage()),
        ),
      ),
    );
  }
}

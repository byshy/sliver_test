import 'package:flutter/material.dart';

class PortfolioSliverAppBar extends StatelessWidget {
  final String _title;

  const PortfolioSliverAppBar(
    this._title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: BackButton(
        onPressed: () {},
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Color(0xFFFAFAFA),
      elevation: 0,
      expandedHeight: 200,
      pinned: true,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        background: Image.network(
          'https://himdeve.eu/wp-content/uploads/2015/05/himdeve_labrador_with_cute_woman_model.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

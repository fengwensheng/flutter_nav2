import 'package:flutter/material.dart';
import 'package:flutter_nav2/detail_page.dart';

class Home extends StatelessWidget {
  void _nav1ToDetail(BuildContext context) {
    //nav1方式
    //命令式
    //直接操作Navigator
    // Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPage()));
  }

  const Home();
  @override
  Widget build(_) => Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () => _nav1ToDetail(_),
            child: Text('nav'),
          ),
        ),
      );
}

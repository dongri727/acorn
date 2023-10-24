import 'package:flutter/material.dart';

import '../index.dart';
import '../search/multiple_search_page.dart';
import '../utils/custom_page_route.dart';


class FourDViewPage extends StatelessWidget {
  const FourDViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon:const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push<String>(
                context,
                MaterialPageRoute(
                  builder: (context) => MultiSearchPage(),
                ),
              );
            },
          ),
          title: const Text('4D VIEW'),
        ),
        body: Container(
          constraints: const BoxConstraints.expand( ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/4d.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }}

import 'package:acorn_flutter/search/multiple_search_page.dart';
import 'package:flutter/material.dart';
import '../utils/custom_page_route.dart';


class ThreeDViewPage extends StatelessWidget {
  final List<int>? principalIds;
  const ThreeDViewPage({super.key, this.principalIds});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand( ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/3d.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: OutlinedButton(
          onPressed: () {
            Navigator.push<String>(
              context,
              CustomPageRoute(
                MultiSearchPage(),
              ),
            );
          },
          child: const Text(
            "return",
          ),
        ),
      ),
    );
  }}
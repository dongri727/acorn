import 'package:acorn_flutter/utils/formats.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'result_page.dart';
import 'search_model.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SelectModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Search Page'),
        ),
        body: Consumer<SelectModel>(
          builder: (context, model, child) {
            return Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/both.png'),
                    fit: BoxFit.cover,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(20.0),
                      child: Text(
                        'SEARCH',
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                    ),

                    ///Country Name
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: FormatGrey(
                        controller: model.controller,
                        hintText: 'current Country name where it happened',
                        onChanged: (text){},
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(5,20,20,20),
                        child: ElevatedButton(
                          onPressed: () {
/*                            print("Submitted country: ${model.controller.text}");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResultPage(query: model.controller.text)
                                )
                            );//model.controller.clear();*/
                          },
                          child: const Text("Submit"),
                        )),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

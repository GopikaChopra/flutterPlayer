import 'package:flutter/material.dart';
import 'package:new_player/screens/homepage/categorydropdown.dart';
import 'package:new_player/screens/searchScreen/live_category.dart';
import 'package:new_player/screens/searchScreen/movie_category.dart';
import 'package:new_player/screens/searchScreen/seacrh_category_page.dart';
import 'package:new_player/screens/searchScreen/series_category.dart';
import 'package:new_player/screens/searchScreen/single_category_movie.dart';
import 'package:new_player/screens/searchScreen/single_live_category.dart';
import 'package:tab_container/tab_container.dart';
import 'package:new_player/screens/movie_screen_view.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return Navigator(
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              settings: settings,
              builder: (BuildContext context) {
                switch (settings.name) {
                  case '/':
                    return SearchCategoryPage();
                  case '/books2':
                    return SingleCategoryMovies();
                  case '/singlelivecategory':
                    return SingleLiveCategory();

                  default:
                    return Text("data");
                }
              });

        }
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layout/cubit/cubit.dart';
import 'package:news_app/layout/cubit/states.dart';
import 'package:news_app/modules/search/search_screen.dart';
import 'package:news_app/shared/components/components.dart';

class NewsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        NewsCubit cubit = NewsCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(cubit.titles[cubit.currentIndex]),
            actions: [
              IconButton(
                  onPressed: () {
                    navigateTo(
                      context,
                      SearchScreen(),
                    );
                  },
                  icon: Icon(
                    Icons.search,
                  )),
              IconButton(
                  onPressed: () {
                    cubit.changeAppMode();
                  },
                  icon: Icon(
                    Icons.brightness_4_outlined,
                  )),
            ],
            centerTitle: true,
          ),
          body: cubit.screen[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeIndex(index);
              },
              items: cubit.bottomItems),
        );
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/home/components/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // this key was given because we wanna open drawer of this scaffold
      key: _scaffoldKey,
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/backdrop_1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 8,
                  top: MediaQuery.of(context).size.height * 0.07,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: const Icon(
                        CupertinoIcons.back,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      appBar: buildAppBar(context),
      body: const HomeScreenBody(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        onPressed: () {
          _scaffoldKey.currentState!.openDrawer();
          /*
          if (_scaffoldKey.currentState!.isDrawerOpen) {
            _scaffoldKey.currentState!.openEndDrawer();
          } else {
            _scaffoldKey.currentState!.openDrawer();
          }
          */
        },
        icon: SvgPicture.asset('assets/icons/menu.svg'),
      ),
      actions: [
        IconButton(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/search.svg'),
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sidebar/bloc/sidebar.bloc.dart';
import 'package:sidebar/ios/widgets/sidebar.widget.dart';

class IosHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<SideBarBloc>(context);

    return CupertinoPageScaffold(
      backgroundColor: Color(0xFF2B292A),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: CupertinoNavigationBar(
              backgroundColor: Color(0xFF2B292A),
              border: Border.all(
                style: BorderStyle.none,
              ),
              actionsForegroundColor: CupertinoColors.white,
              leading: GestureDetector(
                onTap: () => bloc.change(),
                child: Icon(
                  IconData(0xF394,
                      fontFamily: CupertinoIcons.iconFont,
                      fontPackage: CupertinoIcons.iconFontPackage),
                ),
              ),
            ),
          ),
          SideBar(),
        ],
      ),
    );
  }
}

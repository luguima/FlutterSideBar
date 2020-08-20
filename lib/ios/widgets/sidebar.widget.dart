import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sidebar/bloc/sidebar.bloc.dart';

import 'menu-item.widget.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<SideBarBloc>(context);

    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
      top: 0.0,
      bottom: 0.0,
      left: bloc.isOpen() ? 0.0 : -(MediaQuery.of(context).size.width / 3) * 2,
      child: Container(
        width: (MediaQuery.of(context).size.width / 3) * 2,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height -
                  (MediaQuery.of(context).size.height / 1.8 - 90.0) -
                  120.0,
              color: Color(0xFFB42827),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 50.0,
                    left: 20.0,
                    child: GestureDetector(
                      onTap: () => bloc.change(),
                      child: Icon(
                        CupertinoIcons.clear,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 46.0, bottom: 46.0),
                      child: Container(
                        child: Text(
                          "Teste",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.8 + 30.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 46.0, top: 46.0),
                  child: Column(
                    children: <Widget>[
                      MenuItem(
                        icon: Icon(FontAwesomeIcons.solidBell),
                        label: 'Message center',
                      ),
                      MenuItem(
                        icon: Icon(FontAwesomeIcons.clipboardList),
                        label: 'Ticket research',
                      ),
                      MenuItem(
                        icon: Icon(FontAwesomeIcons.shieldAlt),
                        label: 'Suggestion',
                      ),
                      MenuItem(
                        icon: Icon(Icons.phone),
                        label: 'Contact us',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

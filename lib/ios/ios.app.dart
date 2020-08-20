import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sidebar/bloc/sidebar.bloc.dart';
import 'package:sidebar/ios/home.page.dart';

class IosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SideBarBloc>.value(
          value: SideBarBloc(),
        ),
      ],
      child: CupertinoApp(
        title: "Navigation Menu",
        debugShowCheckedModeBanner: false,
        home: IosHomePage(),
      ),
    );
  }
}

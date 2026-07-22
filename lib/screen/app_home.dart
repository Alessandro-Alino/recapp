import 'package:flutter/material.dart';
import 'package:recapp/feature/select_file/widget/select_widget.dart';
import 'package:recapp/widget/app_drawer.dart';
import '../config/helpers/extensions.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text(context.ltr.title_app)),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context,index){
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
      floatingActionButton: SelectWidget(),
    );
  }
}

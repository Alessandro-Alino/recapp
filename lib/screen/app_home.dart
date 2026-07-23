import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recapp/feature/ai/bloc/ai_bloc.dart';
import 'package:recapp/feature/ai/widget/select_ai.dart';
import 'package:recapp/feature/ai/widget/summary_ai.dart';
import 'package:recapp/feature/select_file/bloc/select_file_bloc.dart';
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
      body: CustomScrollView(
        slivers: [
          // AppBar
          SliverAppBar(
            title: Text(context.ltr.title_app),
            actions: [
              IconButton.filledTonal(
                onPressed: () {
                  context.read<SelectFileBloc>().init();
                  context.read<AiBloc>().init();
                },
                icon: Icon(Icons.refresh),
              ),
            ],
          ),
          // Select AI
          SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Seleziona AI',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                // Content
                SelectAi(),
              ],
            ),
          ),
          const SliverPadding(padding: EdgeInsets.all(8.0)),
          // Select File
          SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Seleziona un File:',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                // Content
                SelectWidget(),
              ],
            ),
          ),
          const SliverPadding(padding: EdgeInsets.all(8.0)),
          // Summary AI
          SliverFillRemaining(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Riassunto:',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                // Content
                Expanded(child: const SummaryAi()),
              ],
            ),
          ),
        ],
      ),
      //floatingActionButton: SelectWidget(),
    );
  }
}

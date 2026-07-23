import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recapp/config/helpers/helpers.dart';
import 'package:recapp/feature/ai/bloc/ai_bloc.dart';
import 'package:recapp/feature/ai/model/ai_model/ai_model.dart';

class SelectAi extends StatelessWidget {
  const SelectAi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade700.withAlpha(50),
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: Colors.grey, width: 2.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        clipBehavior: Clip.hardEdge,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: BlocBuilder<AiBloc, AiState>(
            builder: (context, state) {
              return Card(
                child: ListTile(
                  onTap: () {
                    // Select AI Model
                    Helpers.showGenericModal(
                      context: context,
                      initialChildSize: 0.6,
                      maxChildSize: 0.6,
                      builder: (context, scrollCntrl) {
                        return Container(
                          clipBehavior: Clip.hardEdge,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: BlocBuilder<AiBloc, AiState>(
                            builder: (context, state) {
                              return CustomScrollView(
                                controller: scrollCntrl,
                                physics: const BouncingScrollPhysics(),
                                slivers: [
                                  // App Bar
                                  SliverAppBar(
                                    pinned: true,
                                    leading: IconButton.filledTonal(
                                      onPressed: () => context.router.pop(),
                                      icon: Icon(Icons.close),
                                    ),
                                    backgroundColor: Colors.blueGrey,
                                    elevation: 0.0,
                                    scrolledUnderElevation: 0.0,
                                    title: const Text('Seleziona Modello AI'),
                                  ),
                                  // Supported AI Model List
                                  SliverList.builder(
                                    itemCount: state.supportedAIModels.length,
                                    itemBuilder: (context, index) {
                                      final AiModel aiModel =
                                          state.supportedAIModels[index];
                                      final bool isModelSelected =
                                          state.supportedAIModels[index] ==
                                          state.selectedAIModels;
                                      return Card(
                                        clipBehavior: Clip.hardEdge,
                                        color: isModelSelected
                                            ? Colors.green.shade900
                                            : null,
                                        child: ListTile(
                                          onTap: () {
                                            // Select Ai Model
                                            context
                                                .read<AiBloc>()
                                                .selectAiModel(
                                                  selectedAIModels: aiModel,
                                                );
                                            // Close Modal
                                            context.router.pop();
                                          },
                                          leading: isModelSelected
                                              ? Icon(
                                                  Icons.check_circle,
                                                  color: Colors.green.shade200,
                                                )
                                              : null,
                                          title: Text(aiModel.name),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                  leading: Icon(Icons.connecting_airports),
                  title: Text(
                    state.selectedAIModels != null
                        ? state.selectedAIModels!.name
                        : 'Seleziona Model AI',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  trailing: Icon(Icons.arrow_drop_down_outlined),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

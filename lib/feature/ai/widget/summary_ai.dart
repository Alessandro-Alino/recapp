import 'dart:developer';
import 'dart:ui';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recapp/feature/ai/bloc/ai_bloc.dart';
import 'package:recapp/feature/select_file/bloc/select_file_bloc.dart';
import 'package:recapp/widget/app_loading.dart';

class SummaryAi extends StatelessWidget {
  const SummaryAi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 64.0),
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
              switch (state.status) {
                case AiStatus.initial:
                  return Center(
                    child: ActionChip(
                      // Generate Summary
                      onPressed: () {
                        final PlatformFile? selectedFile = context
                            .read<SelectFileBloc>()
                            .state
                            .selectedFile;
                        if (selectedFile != null &&
                            state.selectedAIModels != null) {
                          context.read<AiBloc>().generateSummary(
                            selectedFile: selectedFile,
                          );
                        } else {
                          log('SelectedFile = $selectedFile');
                          log('SelectedAI = ${state.selectedAIModels}');
                        }
                      },
                      label: const Text('Summary AI'),
                    ),
                  );
                case AiStatus.loading:
                  return Center(child: AppLoading());
                case AiStatus.success:
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        spacing: 16.0,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableText(
                            state.aiResponse.title,
                            style: Theme.of(
                              context,
                            ).textTheme.titleLarge?.copyWith(fontSize: 26.0),
                          ),
                          SelectableText(state.aiResponse.summary,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge,),
                        ],
                      ),
                    ),
                  );
                case AiStatus.error:
                  return Center(
                    child: TextButton(
                      onPressed: () {
                        context.read<AiBloc>().init();
                      },
                      child: const Text(
                        'Errore nella generazione del Riassunto',
                      ),
                    ),
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}

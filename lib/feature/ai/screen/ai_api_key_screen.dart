import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recapp/config/helpers/extensions.dart';
import 'package:recapp/config/helpers/helpers.dart';
import 'package:recapp/feature/ai/bloc/ai_bloc.dart';
import 'package:recapp/feature/ai/model/ai_model/ai_model.dart';
import 'package:recapp/feature/secure_value/bloc/secure_value_bloc.dart';
import 'package:recapp/feature/secure_value/widget/save_api_key.dart';
import 'package:recapp/widget/snackbar/app_snackbar.dart';
import 'package:recapp/widget/snackbar/model/app_mex_model.dart';

@RoutePage()
class AiApiKeyScreen extends StatelessWidget {
  const AiApiKeyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.ltr.api_key)),
      body: BlocListener<SecureValueBloc, SecureValueState>(
        listener: (context, state) {
          switch (state) {
            case SuccessSecureValueState():
              context.appSnackBar(
                appMex: AppMex(mex: 'Fatto!', type: MexType.success),
              );
              // Reload List
              context.read<AiBloc>().readSupportedAIModels();
              break;
            case ErrorSecureValueState():
              context.appSnackBar(
                appMex: AppMex(mex: 'Errore', type: MexType.error),
              );
              // Reload List
              context.read<AiBloc>().readSupportedAIModels();
              break;
            case _:
              break;
          }
        },
        child: BlocBuilder<AiBloc, AiState>(
          builder: (context, state) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.supportedAIModels.length,
              itemBuilder: (context, index) {
                final AiModel aiModel = state.supportedAIModels[index];
                return Card(
                  clipBehavior: Clip.hardEdge,
                  color: aiModel.hasApiKey
                      ? Colors.green.shade900
                      : Colors.blueGrey.shade900,
                  child: ListTile(
                    title: Text(
                      aiModel.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    subtitle: Row(
                      spacing: 4.0,
                      children: [
                        Icon(
                          aiModel.hasApiKey
                              ? Icons.check_circle
                              : Icons.not_interested,
                          size: 16.0,
                        ),
                        Text(aiModel.hasApiKey ? 'API Key saved.' : 'Click to add API Key.'),
                      ],
                    ),
                    onTap: () {
                      // Open Modal to save API Key
                      Helpers.showGenericModal(
                        context: context,
                        maxChildSize: 0.9,
                        initialChildSize: 0.5,
                        builder: (context, scrollCntrl) {
                          return SaveApiKey(
                            scrollCntrl: scrollCntrl,
                            aiModel: aiModel,
                          );
                        },
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

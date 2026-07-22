import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recapp/config/helpers/extensions.dart';
import 'package:recapp/feature/ai/bloc/ai_bloc.dart';
import 'package:recapp/feature/ai/model/ai_model/ai_model.dart';
import 'package:recapp/feature/secure_value/bloc/secure_value_bloc.dart';

class SaveApiKey extends StatefulWidget {
  const SaveApiKey({
    super.key,
    required this.scrollCntrl,
    required this.aiModel,
  });

  final ScrollController scrollCntrl;
  final AiModel aiModel;

  @override
  State<SaveApiKey> createState() => _SaveApiKeyState();
}

class _SaveApiKeyState extends State<SaveApiKey> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _apiKeyCntrl = TextEditingController();

  @override
  void dispose() {
    _apiKeyCntrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      child: BlocSelector<AiBloc, AiState, bool>(
        selector: (state) {
          final bool hasAPIKey = state.supportedAIModels
              .firstWhere((e) => e.name == widget.aiModel.name)
              .hasApiKey;
          return hasAPIKey;
        },
        builder: (context, hasAPIKey) {
          return Form(
            key: _formKey,
            child: CustomScrollView(
              controller: widget.scrollCntrl,
              physics: const BouncingScrollPhysics(),
              slivers: [
                // AppBar
                SliverAppBar(
                  pinned: true,
                  elevation: 0.0,
                  scrolledUnderElevation: 0.0,
                  leading: IconButton.filledTonal(
                    onPressed: () => context.router.pop(),
                    icon: Icon(Icons.close),
                  ),
                  title: Text('${widget.aiModel.name} ${context.ltr.api_key}'),
                ),
                // Title
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: hasAPIKey
                        ? Card(
                            clipBehavior: Clip.hardEdge,
                            color: Colors.blueGrey.shade900,
                            child: ListTile(
                              title: Text(
                                '${context.ltr.api_key} ${widget.aiModel.name}',
                              ),
                              trailing: IconButton.filledTonal(
                                onPressed: () {
                                  // Show Dialog
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text(context.ltr.delete),
                                        content: Text(
                                          'Eliminare la chiave API?',
                                        ),
                                        actionsAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        actions: [
                                          // No
                                          TextButton(
                                            onPressed: () =>
                                                context.router.pop(),
                                            child: Text(context.ltr.no),
                                          ),
                                          // Delete
                                          ActionChip.elevated(
                                            onPressed: () {
                                              // Delete API key
                                              context
                                                  .read<SecureValueBloc>()
                                                  .deleteAPIKey(
                                                    aiModel: widget.aiModel,
                                                  );
                                              // Close Modal
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                              context.router.pop();
                                            },
                                            label: Text(context.ltr.delete),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                icon: Icon(Icons.delete),
                              ),
                            ),
                          )
                        : Column(
                            spacing: 8.0,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Title
                              Text(
                                'Insert API key',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              // Text Field
                              TextFormField(
                                controller: _apiKeyCntrl,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: context.ltr.api_key,
                                ),
                              ),
                              // Button Save
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ActionChip.elevated(
                                    label: Text(context.ltr.yes),
                                    onPressed: () {
                                      final apiKey = _apiKeyCntrl.text.trim();
                                      // Save API Key
                                      context
                                          .read<SecureValueBloc>()
                                          .saveAPIKey(
                                            aiModel: widget.aiModel,
                                            apiKey: apiKey,
                                          );
                                      // Close Modal
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                      context.router.pop();
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

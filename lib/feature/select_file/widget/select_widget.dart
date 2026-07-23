import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recapp/config/helpers/extensions.dart';
import 'package:recapp/feature/ai/repo/ai_repo.dart';
import 'package:recapp/feature/select_file/bloc/select_file_bloc.dart';
import 'package:recapp/feature/select_file/widget/select_source_card.dart';

class SelectWidget extends StatelessWidget {
  const SelectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectFileBloc, SelectFileState>(
      builder: (context, state) {
        return Container(
          height: 100.0,
          //width: MediaQuery.of(context).size.width * 0.93,
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
              child: Center(
                child: state.selectedFile != null
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          spacing: 16.0,
                          children: [
                            // Icon File
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors.blueGrey.shade700,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: AiRepo.getIconByExtension(
                                state.selectedFile!.extension,
                              ),
                            ),
                            // File Name and Size
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // File Name
                                  SingleChildScrollView(
                                    physics: const BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    child: Text(
                                      state.selectedFile!.name,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(fontSize: 20.0),
                                    ),
                                  ),
                                  // Size
                                  Text(
                                    state.selectedFile!.size.formatFileSize(),
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            // Remove File Button
                            IconButton.filledTonal(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                  Colors.red.shade900.withAlpha(80),
                                ),
                              ),
                              onPressed: () {
                                context.read<SelectFileBloc>().init();
                              },
                              icon: Icon(
                                Icons.close,
                                color: Colors.red.shade500,
                              ),
                            ),
                          ],
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Select from Gallery
                          SelectSourceCard(
                            icon: Icon(Icons.photo),
                            title: 'Galleria',
                            onTap: () {
                              context.read<SelectFileBloc>().selectFile(
                                source: SelectFileSource.gallery,
                              );
                            },
                          ),
                          // Took picture
                          SelectSourceCard(
                            icon: Icon(Icons.camera_alt),
                            title: 'Camera',
                            onTap: () {
                              context.read<SelectFileBloc>().selectFile(
                                source: SelectFileSource.camera,
                              );
                            },
                          ),
                          // Select File
                          SelectSourceCard(
                            icon: Icon(Icons.file_copy),
                            title: 'File',
                            onTap: () {
                              context.read<SelectFileBloc>().selectFile(
                                source: SelectFileSource.document,
                              );
                            },
                          ),
                        ],
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}

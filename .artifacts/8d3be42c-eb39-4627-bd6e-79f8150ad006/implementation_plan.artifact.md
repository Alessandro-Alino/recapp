# Implementazione selezione file da diverse sorgenti

L'obiettivo è estendere il `SelectFileBloc` per permettere la selezione di file da tre diverse sorgenti: Galleria, Camera e File System (Documenti).

## Proposta di Modifica

### [feature/select_file]

#### [MODIFY] [select_file_event.dart](file:///C:/Users/Alessandro/Documents/Projects/recapp/lib/feature/select_file/bloc/select_file_event.dart)
- Definire l'enum `SelectFileSource` con i valori: `gallery`, `camera`, `document`.
- Aggiornare il factory `selectFile` per accettare un parametro `source` di tipo `SelectFileSource`.

#### [MODIFY] [select_file_bloc.dart](file:///C:/Users/Alessandro/Documents/Projects/recapp/lib/feature/select_file/bloc/select_file_bloc.dart)
- Importare `image_picker`.
- Implementare la logica in `_selectFile`:
    - Se `source` è `document`: usare `FilePicker.platform.pickFiles()`.
    - Se `source` è `gallery` o `camera`: usare `ImagePicker().pickImage()`.
- Convertire il risultato (`XFile` o `FilePickerResult`) in `PlatformFile` per mantenere la coerenza dello stato.
- Gestire il caso in cui l'utente annulla la selezione.

### [UI/Screens]

#### [MODIFY] [app_home.dart](file:///C:/Users/Alessandro/Documents/Projects/recapp/lib/screen/app_home.dart)
- Collegare i tasti `SelectSourceCard` al `SelectFileBloc`, passando la sorgente corretta.

## Piano di Verifica

### Verifica Manuale
1. Premere il tasto "Galleria": verificare che si apra la galleria del dispositivo.
2. Premere il tasto "Camera": verificare che si apra la fotocamera.
3. Premere il tasto "File": verificare che si apra il file picker dei documenti.
4. Dopo la selezione, verificare (tramite log o debug) che `SelectFileState.selectedFile` sia popolato correttamente con il file scelto.

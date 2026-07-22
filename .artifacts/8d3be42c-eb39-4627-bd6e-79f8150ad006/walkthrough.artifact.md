# Walkthrough - Selezione File Multi-Sorgente

È stata implementata la possibilità di selezionare file da diverse sorgenti (Galleria, Camera, Documenti) utilizzando un unico Bloc.

## Modifiche apportate

### [feature/select_file]

#### [select_file_event.dart](file:///C:/Users/Alessandro/Documents/Projects/recapp/lib/feature/select_file/bloc/select_file_event.dart)
- Aggiunto l'enum `SelectFileSource` per distinguere tra `gallery`, `camera` e `document`.
- Aggiornato l'evento `selectFile` per richiedere la sorgente.

#### [select_file_bloc.dart](file:///C:/Users/Alessandro/Documents/Projects/recapp/lib/feature/select_file/bloc/select_file_bloc.dart)
- Integrata la libreria `image_picker` per gestire la selezione da galleria e fotocamera.
- Implementata la logica di conversione da `XFile` (image_picker) a `PlatformFile` (file_picker) per uniformare lo stato del Bloc.
- Gestione degli stati di caricamento (`loading`), successo (`success`) ed errore.

### Configurazione

#### [app_injection.dart](file:///C:/Users/Alessandro/Documents/Projects/recapp/lib/config/app_injection.dart)
- Registrato `SelectFileBloc` nel `MultiBlocProvider` globale per renderlo accessibile in tutta l'app.

### UI

#### [app_home.dart](file:///C:/Users/Alessandro/Documents/Projects/recapp/lib/screen/app_home.dart)
- Collegati i tasti della `HomePage` (Galleria, Camera, File) al Bloc, passando la sorgente corrispondente al tocco.

## Come Verificare
1. Avvia l'app e vai nella Home.
2. Tocca uno dei tre pulsanti nel pannello rosso in basso.
3. Verifica che si apra il selettore corrispondente.
4. Dopo aver scelto un file, il Bloc aggiornerà il suo stato con il file selezionato (disponibile in `state.selectedFile`).

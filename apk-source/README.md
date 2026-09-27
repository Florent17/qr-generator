# IHS-CIV Portfolio — code source récupéré depuis l'APK

Code source décompilé de `base.apk` (package `com.elvalere.ihs_civportfolio`, version 5.1, minSdk 17, targetSdk 23).

Outils utilisés : [jadx 1.5.1](https://github.com/skylot/jadx) (Java) et [Apktool 2.10.0](https://github.com/iBotPeaches/Apktool) (smali).

## Contenu

| Dossier | Contenu |
|---|---|
| `app/src/main/java/com/elvalere/ihs_civportfolio/` | Code Java de l'application (79 fichiers) |
| `app/src/main/res/` | Layouts, images, chaînes, styles décodés |
| `app/src/main/assets/IHS_Sites_Portfolio.sqlite` | Base de données SQLite embarquée |
| `app/src/main/AndroidManifest.xml` | Manifeste décodé |
| `smali/com/elvalere/` | Bytecode smali de l'application (fidèle à 100 %, utile si un fichier Java est mal décompilé) |
| `build.gradle`, `app/build.gradle` | Projet Gradle pour Android Studio |

## Structure de l'application

- `SplashScreen` — écran de démarrage (activité lanceur)
- `Main/` — `MainActivity`…`MainActivity4`, `MainActivityFin`, `Main_Synchro`, `Site_View`, `Autres_App`
- `Maps_Activity/` — `MapsActivity2`, `MapsActivity3` (Google Maps)
- `Services/` — `LocationUpdaterService`, `Portfolio_Update`
- `Site_Tracker_BDD/` — `TodoListActivity`, `AddTodoActivity`, `ModifyTodoActivity` (base SQLite)

## Clé Google Maps

La clé API Google Maps a été retirée de `app/src/main/res/values/strings.xml` pour ne pas la publier.
Remplacez `VOTRE_CLE_GOOGLE_MAPS_ICI` par votre clé avant de compiler.

## Limites

- L'APK a été compilé avec ProGuard : les classes internes/anonymes s'appellent `a.java`, `b.java`… et certains noms de variables sont perdus. Les commentaires d'origine ne peuvent pas être récupérés.
- Les bibliothèques tierces (Android Support, Google Play Services 8.4, Facebook SDK) ne sont pas incluses : elles sont déclarées comme dépendances dans `app/build.gradle`. Leurs classes obfusquées (ex. `com.google.android.gms.common.api.n`) référencées dans le code devront être remplacées par les vrais noms d'API pour recompiler.

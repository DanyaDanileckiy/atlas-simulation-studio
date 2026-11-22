<div align="center">
  <img src="../icon.svg" width="96" alt="Atlas Simulation Studio">

  <h1>Atlas Simulation Studio</h1>

  <p><strong>Eine professionell gestaltete PWA auf Basis der ursprünglichen Bevölkerungswettlauf-Simulation.</strong></p>

  <p>
  <img alt="Windows" src="https://img.shields.io/badge/Windows-EXE-0078D4?logo=windows&amp;logoColor=white">
  <img alt="Android" src="https://img.shields.io/badge/Android-APK-3DDC84?logo=android&amp;logoColor=white">
  <img alt="Web" src="https://img.shields.io/badge/Web-PWA-4285F4?logo=googlechrome&amp;logoColor=white">
  <img alt="PWA" src="https://img.shields.io/badge/PWA-ready-5A0FC8?logo=pwa&amp;logoColor=white">
  <img alt="D3.js" src="https://img.shields.io/badge/D3.js-v7-F9A03C?logo=d3.js&amp;logoColor=white">
  <img alt="Tailwind CSS" src="https://img.shields.io/badge/Tailwind_CSS-38B2AC?logo=tailwindcss&amp;logoColor=white">
  <img alt="35 languages" src="https://img.shields.io/badge/languages-35-8A2BE2">
  </p>

  <p>
    <a href="../README.md">English</a> ·
    <a href="README.ru.md">Русский</a> ·
    <a href="README.es.md">Español</a> ·
    <strong>Deutsch</strong> ·
    <a href="README.fr.md">Français</a> ·
    <a href="README.uk.md">Українська</a> ·
    <a href="README.zh-CN.md">简体中文</a>
  </p>
</div>

Atlas Simulation Studio ist eine professionell gestaltete Progressive Web App auf Basis der ursprünglichen Bevölkerungswettlauf-Simulation. Der Startkatalog umfasst **150 Länder** und **244 Städte**, dazu eine Zeitleiste, Diagramme und einen Editor. Das Panel **Teilnehmer** filtert Länder und Städte nach Land, Kontinent, Unterregion, internationaler Organisation und Bevölkerung. Sie können alle aktivieren, alle deaktivieren, nur Treffer behalten, Treffer hinzufügen oder sie ausschließen. Die Listen der ausgewählten Teilnehmer werden für Länder und Städte getrennt auf dem Gerät gespeichert. Ändern Sie den Projektnamen, wählen Sie das Simulationsthema in der oberen Leiste oder in den Einstellungen und konfigurieren Sie anschließend die Wettlauf-Metrik.

## ✨ Funktionen

- Startkatalog mit 150 Ländern und 244 Städten
- Zeitleiste und Diagramme sowie ein Dateneditor für Länder und Städte
- Filterpanel **Teilnehmer**: Filter nach Land, Kontinent, Unterregion, internationaler Organisation und Bevölkerung
- Filteraktionen: alle aktivieren, alle deaktivieren, nur Treffer behalten, Treffer hinzufügen oder Treffer ausschließen
- Bevölkerungsvoreinstellung für Städte unter 1 Million Einwohnern
- Ausgewählte Länder- und Städtelisten werden getrennt auf dem Gerät gespeichert
- Eigener Projektname, Simulationsthema und Wettlauf-Metrik
- Optionale Modi für BIP, Produktion, Migration und Kriminalität (siehe [Simulationsgenauigkeit](#simulationsgenauigkeit))
- Wettlauf- und Editor-Registerkarten für Länder und für Städte
- Wiedergabesteuerung: Wiedergabe / Pause, Zurücksetzen auf den Anfang sowie Geschwindigkeiten von 15, 10 oder 5 Sekunden pro Jahr
- Editor-Werkzeuge: Bevölkerung auf null setzen, Zeile hinzufügen, starke Sprünge glätten, 10 Jahre hinzufügen, Daten übernehmen und Zeile löschen
- 35 Sprachen der Benutzeroberfläche, mit lokalisierten Länder- und Kontinentnamen
- Installierbare PWA: ein Service Worker speichert die App-Hülle für spätere Starts im Cache
- Die ursprüngliche Breite von Visualisierung und Editor bleibt erhalten; die Fensterhöhe passt sich dem Gerät an

## 📦 Herunterladen und installieren

Für Windows und Android stehen getrennte **EXE**- und **APK**-Installer bereit. Sie können sie unter [GitHub Releases](https://github.com/DanyaDanileckiy/atlas-simulation-studio/releases) oder über die unten verlinkten Repository-Dateien herunterladen. Installationshinweise stehen auch in [`installer-output/README.md`](../installer-output/README.md).

| Plattform | Paket | Anforderungen und Hinweise |
| --- | --- | --- |
| Windows | [AtlasSimulationStudioSetup.exe](../installer-output/AtlasSimulationStudioSetup.exe) | Windows-PC. Schritte siehe unten. |
| Android | [Atlas-Simulation-Studio.apk](../installer-output/Atlas-Simulation-Studio.apk) | Android 6.0 oder neuer. Die APK ist signiert; Schlüssel und Passwort der APK-Signatur werden nur lokal aufbewahrt und absichtlich nicht in dieses Repository aufgenommen. |
| iPhone / iPad | PWA über Safari | Eine iOS-IPA wurde nicht erstellt. Für deren Verbreitung wären eine Apple-Signatur und eine iOS-Build-Toolchain erforderlich. |
| Web | PWA im Browser | Damit die Website mit Symbol und Offline-Start installiert werden kann, muss sie auf einem HTTPS-Hosting veröffentlicht sein. |

### Windows

1. Laden Sie [AtlasSimulationStudioSetup.exe](../installer-output/AtlasSimulationStudioSetup.exe) von [GitHub Releases](https://github.com/DanyaDanileckiy/atlas-simulation-studio/releases) oder aus dem Repository herunter.
2. Starten Sie den Installer. Er legt die App in `%LOCALAPPDATA%\Programs\Atlas Simulation Studio` ab, erstellt Verknüpfungen auf dem Desktop und im Startmenü und öffnet die App.
3. Windows SmartScreen kann eine Warnung zu einem unbekannten Herausgeber anzeigen, weil die EXE nicht mit einem Herausgeberzertifikat signiert ist. Klicken Sie auf **Weitere Informationen** und anschließend auf **Trotzdem ausführen**.

### Android

1. Laden Sie [Atlas-Simulation-Studio.apk](../installer-output/Atlas-Simulation-Studio.apk) von [GitHub Releases](https://github.com/DanyaDanileckiy/atlas-simulation-studio/releases) oder aus dem Repository herunter.
2. Installieren Sie die APK auf einem Gerät oder Emulator mit **Android 6.0** oder neuer.

### iPhone / iPad

1. Öffnen Sie die veröffentlichte HTTPS-Website in **Safari**.
2. Tippen Sie auf **Teilen** und dann auf **Zum Home-Bildschirm**.

### Web (PWA)

1. Laden Sie alle Dateien des Projektordners auf ein HTTPS-Hosting hoch (zum Beispiel GitHub Pages, Cloudflare Pages, Netlify oder einen eigenen Server).
2. Öffnen Sie die Adresse in Chrome oder Edge auf einem PC oder unter Android und klicken Sie auf **App installieren**, oder wählen Sie die Installation im Browsermenü.
3. Auf iPhone oder iPad verwenden Sie Safari → **Teilen** → **Zum Home-Bildschirm**, wie oben beschrieben.

Der Service Worker speichert die App-Hülle für spätere Starts im Cache. Wird die HTML-Datei als `file://` geöffnet, ist die Installation nicht verfügbar.

## 💻 Lokal ausführen

Öffnen Sie die Website über einen lokalen HTTP-Server. Entweder:

- `start-local.bat` ausführen oder
- `python -m http.server 8080` ausführen und anschließend [http://localhost:8080](http://localhost:8080) öffnen.

Wird `index.html` direkt als `file://` geöffnet, steht die PWA-Installation nicht zur Verfügung.

## 🌍 Sprachen

Die App bietet eine Auswahl aus **35 Sprachen**: Russisch, Englisch, Spanisch, Französisch, Deutsch, Italienisch, Portugiesisch, Niederländisch, Polnisch, Ukrainisch, Türkisch, Arabisch, Chinesisch, Japanisch, Koreanisch, Hindi, Bengalisch, Indonesisch, Malaiisch, Vietnamesisch, Thai, Schwedisch, Norwegisch, Dänisch, Finnisch, Griechisch, Hebräisch, Persisch, Urdu, Rumänisch, Ungarisch, Tschechisch, Slowakisch, Bulgarisch und Serbisch.

| Bereich | Abdeckung |
| --- | --- |
| Länder- und Kontinentnamen | Werden für die gewählte Sprache lokalisiert (alle 35) |
| Oberfläche der Studio-Hülle | Vollständig übersetzt ins Russische, Englische, Spanische, Französische, Deutsche, Ukrainische, Chinesische, Japanische und Arabische. Bei den übrigen Sprachen wechselt die Hülle auf Englisch. |
| Beschriftungen der ursprünglichen Simulation und des Editors | Bleiben auf Russisch |

## ⚠️ Simulationsgenauigkeit

Die Bevölkerungszahlen neu hinzugefügter Städte sind gerundete Richtwerte für das Jahr 2020; Stadt- und Agglomerationsgrenzen können sich in den Ausgangsdatensätzen unterscheiden. Historische Reihen und Prognosen für kürzlich hinzugefügte Städte basieren auf einem vereinfachten Modell zur Visualisierung und stellen keine offizielle Statistikreihe dar.

Die Modi BIP, Produktion, Migration und Kriminalität erlauben die Wahl eines Gegenstands und eines Projektnamens, ersetzen die demografischen Daten aber nicht durch Statistiken aus diesen Bereichen: Die im Editor eingegebenen Ausgangsreihen bleiben demografisch. Damit diese Modi ein inhaltlich tragfähiges Ergebnis liefern, müsste der Editor um eigene Sätze benutzerdefinierter Metriken erweitert und dafür Daten geladen werden. Werte konkurrierender Metriken mit der Kennzeichnung **Demo-Index** dürfen daher nicht als reale Kennzahlen interpretiert werden.

## 📁 Projektstruktur

```text
├── index.html                 # Einzelseitige Haupt-App
├── icon.svg                   # App-Symbol
├── manifest.webmanifest       # PWA-Manifest
├── sw.js                      # Service Worker
├── start-local.bat            # Lokaler HTTP-Server für Windows
├── capacitor.config.json      # Capacitor-7-Konfiguration
├── package.json
├── desktop/
│   └── main.cjs
├── vendor/
│   ├── d3.v7.min.js           # D3.js v7
│   └── tailwindcss.js         # Tailwind CSS
├── public/                    # Web-Ressourcen (Symbol, App, Manifest, Service Worker, Vendor)
├── android/                   # Capacitor-7-Android-Projekt
└── installer-output/
    ├── AtlasSimulationStudioSetup.exe
    ├── Atlas-Simulation-Studio.apk
    ├── README.md              # Installationshinweise
    ├── win-installer.cpp
    ├── windows-installer.sed
    ├── windows-payload/
    ├── android-native/
    ├── build-apk.ps1
    └── download-android-tools.ps1
```

## 🛠️ Technik

| Schicht | Technologie |
| --- | --- |
| App | Eine einzelne Seite `index.html` |
| Gestaltung | Tailwind CSS |
| Diagramme und Visualisierung | D3.js v7 |
| Offline- / installierbare Web-App | Service Worker und Web-App-Manifest (PWA) |
| Android | Capacitor 7 |
| Windows | EXE-Installer (`AtlasSimulationStudioSetup.exe`) |
| Lokale Entwicklung | `start-local.bat` oder `python -m http.server 8080` |

Schlüssel und Passwort der APK-Signatur werden nur lokal gespeichert und absichtlich nicht in dieses GitHub-Repository aufgenommen.

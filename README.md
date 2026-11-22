<div align="center">
  <img src="icon.svg" width="96" alt="Atlas Simulation Studio">

  <h1>Atlas Simulation Studio</h1>

  <p><strong>A professionally designed PWA based on the original population-race simulation.</strong></p>

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
    <strong>English</strong> ·
    <a href="docs/README.ru.md">Русский</a> ·
    <a href="docs/README.es.md">Español</a> ·
    <a href="docs/README.de.md">Deutsch</a> ·
    <a href="docs/README.fr.md">Français</a> ·
    <a href="docs/README.uk.md">Українська</a> ·
    <a href="docs/README.zh-CN.md">简体中文</a>
  </p>
</div>

Atlas Simulation Studio is a professionally designed progressive web app based on the original population-race simulation. The starting catalog includes **150 countries** and **244 cities**, along with a timeline, charts, and an editor. The **Participants** panel filters countries and cities by country, continent, subregion, international organization, and population. You can enable all, disable all, keep only matches, add them, or exclude them. Selected participant lists are saved separately for countries and cities on the device. Change the project name, choose the simulation subject in the top bar or in Settings, then configure the race metric.

## ✨ Features

- Starting catalog of 150 countries and 244 cities
- Timeline and charts, plus a data editor for countries and cities
- **Participants** filter panel: filter by country, continent, subregion, international organization, and population
- Filter actions: enable all, disable all, keep only matches, add matches, or exclude matches
- Population preset for cities under 1 million
- Selected country and city lists are stored separately on the device
- Custom project name, simulation subject, and race metric
- Optional subject modes for GDP, production, migration, and crime (see [Simulation accuracy](#simulation-accuracy))
- Race and editor tabs for countries and for cities
- Playback controls: play / pause, reset to the start, and speeds of 15, 10, or 5 seconds per year
- Editor tools: clear population values, add a row, smooth sharp jumps, add 10 years, apply data, and delete a row
- 35 interface languages, with localized country and continent names
- Installable PWA: a service worker caches the app shell for later launches
- The original visualization and editor width is preserved; window height adapts to the device

## 📦 Download and install

Separate **EXE** and **APK** installers are available for Windows and Android. You can download them from [GitHub Releases](https://github.com/DanyaDanileckiy/atlas-simulation-studio/releases) or from the repository files linked below. Installation notes are also in [`installer-output/README.md`](installer-output/README.md).

| Platform | Package | Requirements and notes |
| --- | --- | --- |
| Windows | [AtlasSimulationStudioSetup.exe](installer-output/AtlasSimulationStudioSetup.exe) | Windows PC. See the steps below. |
| Android | [Atlas-Simulation-Studio.apk](installer-output/Atlas-Simulation-Studio.apk) | Android 6.0 or later. The APK is signed; the signing key and password are kept only locally and are intentionally not included in this repository. |
| iPhone / iPad | PWA via Safari | No iOS IPA has been built. Distribution of an IPA would require Apple signing and an iOS build toolchain. |
| Web | PWA in the browser | To install the site with an icon and offline launch, it must be published on HTTPS hosting. |

### Windows

1. Download [AtlasSimulationStudioSetup.exe](installer-output/AtlasSimulationStudioSetup.exe) from [GitHub Releases](https://github.com/DanyaDanileckiy/atlas-simulation-studio/releases) or from the repository.
2. Run the installer. It places the app in `%LOCALAPPDATA%\Programs\Atlas Simulation Studio`, creates Desktop and Start Menu shortcuts, and opens the app.
3. Windows SmartScreen may show a warning about an unknown publisher, because the EXE is not signed with a publisher certificate. Click **More info**, then **Run anyway**.

### Android

1. Download [Atlas-Simulation-Studio.apk](installer-output/Atlas-Simulation-Studio.apk) from [GitHub Releases](https://github.com/DanyaDanileckiy/atlas-simulation-studio/releases) or from the repository.
2. Install the APK on a device or emulator running **Android 6.0** or later.

### iPhone / iPad

1. Open the published HTTPS site in **Safari**.
2. Tap **Share**, then **Add to Home Screen**.

### Web (PWA)

1. Upload all files from the project folder to HTTPS hosting (for example GitHub Pages, Cloudflare Pages, Netlify, or your own server).
2. Open the address in Chrome or Edge on a PC or Android and click **Install app**, or choose install from the browser menu.
3. On iPhone or iPad, use Safari → **Share** → **Add to Home Screen**, as above.

The service worker caches the app shell for later launches. If you open the HTML file as `file://`, installation is not available.

## 💻 Run locally

Open the site through a local HTTP server. Either:

- run `start-local.bat`, or
- run `python -m http.server 8080`, then open [http://localhost:8080](http://localhost:8080).

Opening `index.html` directly as `file://` makes installation unavailable.

## 🌍 Languages

The app offers a choice of **35 languages**: Russian, English, Spanish, French, German, Italian, Portuguese, Dutch, Polish, Ukrainian, Turkish, Arabic, Chinese, Japanese, Korean, Hindi, Bengali, Indonesian, Malay, Vietnamese, Thai, Swedish, Norwegian, Danish, Finnish, Greek, Hebrew, Persian, Urdu, Romanian, Hungarian, Czech, Slovak, Bulgarian, and Serbian.

| Area | Coverage |
| --- | --- |
| Country and continent names | Localized for the selected language (all 35) |
| Studio shell interface | Fully translated into Russian, English, Spanish, French, German, Ukrainian, Chinese, Japanese, and Arabic. For the other languages the shell falls back to English. |
| Original simulation and editor labels | Remain in Russian |

## ⚠️ Simulation accuracy

Population figures for newly added cities are rounded approximate estimates for 2020; city and agglomeration boundaries may differ across source datasets. Historical series and forecasts for recently added cities are produced by a simplified model for visualization; they are not an official statistical series.

The GDP, production, migration, and crime modes let you choose a subject and a project name, but they do not replace the demographic data with statistics from those domains: the source series entered in the editor remain demographic. For those modes to produce a meaningful result, the editor would need to be extended for separate custom metric sets, and data would need to be loaded for them. Values of competing metrics labeled **demo index** must not be interpreted as real-world indicators.

## 📁 Project structure

```text
├── index.html                 # Main single-page app
├── icon.svg                   # App icon
├── manifest.webmanifest       # PWA manifest
├── sw.js                      # Service worker
├── start-local.bat            # Local HTTP server helper for Windows
├── capacitor.config.json      # Capacitor 7 config
├── package.json
├── desktop/
│   └── main.cjs
├── vendor/
│   ├── d3.v7.min.js           # D3.js v7
│   └── tailwindcss.js         # Tailwind CSS
├── public/                    # Web assets (icon, app, manifest, service worker, vendor)
├── android/                   # Capacitor 7 Android project
└── installer-output/
    ├── AtlasSimulationStudioSetup.exe
    ├── Atlas-Simulation-Studio.apk
    ├── README.md              # Installer instructions
    ├── win-installer.cpp
    ├── windows-installer.sed
    ├── windows-payload/
    ├── android-native/
    ├── build-apk.ps1
    └── download-android-tools.ps1
```

## 🛠️ Tech stack

| Layer | Technology |
| --- | --- |
| App | A single `index.html` page |
| Styling | Tailwind CSS |
| Charts and visualization | D3.js v7 |
| Offline / installable web app | Service worker and web app manifest (PWA) |
| Android | Capacitor 7 |
| Windows | EXE installer (`AtlasSimulationStudioSetup.exe`) |
| Local development | `start-local.bat` or `python -m http.server 8080` |

The APK signing key and password are stored only locally and are intentionally not included in this GitHub repository.

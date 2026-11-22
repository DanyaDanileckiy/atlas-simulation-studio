<div align="center">
  <img src="../icon.svg" width="96" alt="Atlas Simulation Studio">

  <h1>Atlas Simulation Studio</h1>

  <p><strong>Une PWA au design professionnel, fondée sur la simulation originale de course de population.</strong></p>

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
    <a href="README.de.md">Deutsch</a> ·
    <strong>Français</strong> ·
    <a href="README.uk.md">Українська</a> ·
    <a href="README.zh-CN.md">简体中文</a>
  </p>
</div>

Atlas Simulation Studio est une application web progressive au design professionnel, fondée sur la simulation originale de course de population. Le catalogue de départ comprend **150 pays** et **244 villes**, ainsi qu’une frise chronologique, des graphiques et un éditeur. Le panneau **Participants** filtre les pays et les villes par pays, continent, sous-région, organisation internationale et population. Vous pouvez tout activer, tout désactiver, ne conserver que les correspondances, les ajouter ou les exclure. Les listes de participants sélectionnés sont enregistrées séparément pour les pays et les villes sur l’appareil. Modifiez le nom du projet, choisissez le sujet de la simulation dans la barre supérieure ou dans les paramètres, puis réglez la métrique de la course.

## ✨ Fonctionnalités

- Catalogue de départ de 150 pays et 244 villes
- Époque de départ : 1800, 1900, 1950, 2000 ou 2026, avec la population et les drapeaux historiques de cette année
- Frise chronologique et graphiques, plus un éditeur de données pour les pays et les villes
- Panneau **Participants** : filtres par pays, continent, sous-région, organisation internationale et population
- Actions de filtre : tout activer, tout désactiver, ne garder que les correspondances, ajouter les correspondances ou les exclure
- Préréglage de population pour les villes de moins d’un million d’habitants
- Les listes de pays et de villes sélectionnés sont enregistrées séparément sur l’appareil
- Nom de projet, sujet de simulation et métrique de course personnalisables
- Modes facultatifs PIB, production, migration et criminalité (voir [Précision de la simulation](#précision-de-la-simulation))
- Onglets de course et d’éditeur pour les pays et pour les villes
- Contrôles de lecture : lecture / pause, réinitialisation au début, et vitesses de 15, 10 ou 5 secondes par an
- Outils de l’éditeur : remettre la population à zéro, ajouter une ligne, lisser les sauts brusques, ajouter 10 ans, appliquer les données et supprimer une ligne
- 35 langues d’interface, avec les noms de pays et de continents localisés
- PWA installable : un service worker met en cache l’enveloppe de l’application pour les lancements suivants
- La largeur d’origine de la visualisation et de l’éditeur est conservée ; la hauteur de la fenêtre s’adapte à l’appareil

## 📦 Télécharger et installer

Des installeurs **EXE** et **APK** distincts sont disponibles pour Windows et Android. Vous pouvez les télécharger depuis [GitHub Releases](https://github.com/DanyaDanileckiy/atlas-simulation-studio/releases) ou à partir des fichiers du dépôt liés ci-dessous. Les instructions d’installation se trouvent aussi dans [`installer-output/README.md`](../installer-output/README.md).

| Plateforme | Paquet | Exigences et notes |
| --- | --- | --- |
| Windows | [AtlasSimulationStudioSetup.exe](../installer-output/AtlasSimulationStudioSetup.exe) | PC Windows. Voir les étapes ci-dessous. |
| Android | [Atlas-Simulation-Studio.apk](../installer-output/Atlas-Simulation-Studio.apk) | Android 6.0 ou ultérieur. L’APK est signé ; la clé de signature et le mot de passe sont conservés uniquement en local et ne sont volontairement pas inclus dans ce dépôt. |
| iPhone / iPad | PWA via Safari | Aucun fichier IPA iOS n’a été généré. Sa distribution nécessiterait une signature Apple et une chaîne de compilation iOS. |
| Web | PWA dans le navigateur | Pour installer le site avec une icône et un lancement hors ligne, il doit être publié sur un hébergement HTTPS. |

### Windows

1. Téléchargez [AtlasSimulationStudioSetup.exe](../installer-output/AtlasSimulationStudioSetup.exe) depuis [GitHub Releases](https://github.com/DanyaDanileckiy/atlas-simulation-studio/releases) ou depuis le dépôt.
2. Lancez l’installeur. Il place l’application dans `%LOCALAPPDATA%\Programs\Atlas Simulation Studio`, crée des raccourcis sur le Bureau et dans le menu Démarrer, puis ouvre l’application.
3. Windows SmartScreen peut afficher un avertissement concernant un éditeur inconnu, car l’EXE n’est pas signé avec un certificat d’éditeur. Cliquez sur **Plus d’infos**, puis sur **Exécuter quand même**.

### Android

1. Téléchargez [Atlas-Simulation-Studio.apk](../installer-output/Atlas-Simulation-Studio.apk) depuis [GitHub Releases](https://github.com/DanyaDanileckiy/atlas-simulation-studio/releases) ou depuis le dépôt.
2. Installez l’APK sur un appareil ou un émulateur sous **Android 6.0** ou ultérieur.

### iPhone / iPad

1. Ouvrez le site HTTPS publié dans **Safari**.
2. Appuyez sur **Partager**, puis sur **Sur l’écran d’accueil**.

### Web (PWA)

1. Envoyez tous les fichiers du dossier du projet vers un hébergement HTTPS (par exemple GitHub Pages, Cloudflare Pages, Netlify ou votre propre serveur).
2. Ouvrez l’adresse dans Chrome ou Edge sur un PC ou sous Android et cliquez sur **Installer l’application**, ou choisissez l’installation dans le menu du navigateur.
3. Sur iPhone ou iPad, utilisez Safari → **Partager** → **Sur l’écran d’accueil**, comme ci-dessus.

Le service worker met en cache l’enveloppe de l’application pour les lancements suivants. Si vous ouvrez le fichier HTML en `file://`, l’installation n’est pas disponible.

## 💻 Exécuter en local

Ouvrez le site via un serveur HTTP local. Vous pouvez :

- exécuter `start-local.bat`, ou
- exécuter `python -m http.server 8080`, puis ouvrir [http://localhost:8080](http://localhost:8080).

Si vous ouvrez `index.html` directement en `file://`, l’installation de la PWA n’est pas disponible.

## 🌍 Langues

L’application propose un choix de **35 langues** : russe, anglais, espagnol, français, allemand, italien, portugais, néerlandais, polonais, ukrainien, turc, arabe, chinois, japonais, coréen, hindi, bengali, indonésien, malais, vietnamien, thaï, suédois, norvégien, danois, finnois, grec, hébreu, persan, ourdou, roumain, hongrois, tchèque, slovaque, bulgare et serbe.

| Domaine | Couverture |
| --- | --- |
| Noms des pays et des continents | Localisés pour la langue sélectionnée (les 35) |
| Interface de l’enveloppe du studio | Entièrement traduite en russe, anglais, espagnol, français, allemand, ukrainien, chinois, japonais et arabe. Pour les autres langues, l’enveloppe bascule en anglais. |
| Libellés de la simulation d’origine et de l’éditeur | Restent en russe |

## ⚠️ Précision de la simulation

La population des villes nouvellement ajoutées correspond à des estimations indicatives arrondies pour 2020 ; les limites de la ville et de l’agglomération peuvent différer selon les jeux de données sources. Les époques historiques utilisent les frontières actuelles. Les chiffres de 1800 et 1900 sont arrondis d’après Our World in Data (HYDE 3.3 ; Gapminder v7, fondé sur le Maddison Project et Clio Infra). À partir de 1950, y compris le départ en 2026, la série du catalogue est conservée (ONU, World Population Prospects). Les grandes villes suivent Chandler, Bairoch et les UN World Urbanization Prospects. Les séries historiques et les prévisions des villes récemment ajoutées sont produites par un modèle simplifié à des fins de visualisation ; il ne s’agit pas d’une série statistique officielle.

Les modes PIB, production, migration et criminalité permettent de choisir un objet et un nom de projet, mais ils ne remplacent pas les données démographiques par des statistiques de ces domaines : les séries sources saisies dans l’éditeur restent démographiques. Pour que ces modes produisent un résultat pertinent, l’éditeur devrait être étendu à des ensembles distincts de métriques personnalisées, et des données devraient être chargées pour ceux-ci. Les valeurs des métriques en compétition indiquées comme **indice démo** ne doivent donc pas être interprétées comme de véritables indicateurs.

## 📁 Structure du projet

```text
├── index.html                 # Application principale en une seule page
├── icon.svg                   # Icône de l’application
├── manifest.webmanifest       # Manifeste PWA
├── sw.js                      # Service worker
├── start-local.bat            # Serveur HTTP local pour Windows
├── capacitor.config.json      # Configuration Capacitor 7
├── package.json
├── desktop/
│   └── main.cjs
├── vendor/
│   ├── d3.v7.min.js           # D3.js v7
│   └── tailwindcss.js         # Tailwind CSS
├── public/                    # Ressources web (icône, application, manifeste, service worker, vendor)
├── android/                   # Projet Android Capacitor 7
└── installer-output/
    ├── AtlasSimulationStudioSetup.exe
    ├── Atlas-Simulation-Studio.apk
    ├── README.md              # Instructions d’installation
    ├── win-installer.cpp
    ├── windows-installer.sed
    ├── windows-payload/
    ├── android-native/
    ├── build-apk.ps1
    └── download-android-tools.ps1
```

## 🛠️ Stack technique

| Couche | Technologie |
| --- | --- |
| Application | Une seule page `index.html` |
| Mise en forme | Tailwind CSS |
| Graphiques et visualisation | D3.js v7 |
| Application web hors ligne / installable | Service worker et manifeste d’application web (PWA) |
| Android | Capacitor 7 |
| Windows | Installeur EXE (`AtlasSimulationStudioSetup.exe`) |
| Développement local | `start-local.bat` ou `python -m http.server 8080` |

La clé de signature de l’APK et le mot de passe sont stockés uniquement en local et ne sont volontairement pas inclus dans ce dépôt GitHub.

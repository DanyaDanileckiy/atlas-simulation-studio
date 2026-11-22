<div align="center">
  <img src="../icon.svg" width="96" alt="Atlas Simulation Studio">

  <h1>Atlas Simulation Studio</h1>

  <p><strong>基于原始人口竞赛模拟、经过专业界面设计的 Progressive Web App。</strong></p>

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
    <a href="README.fr.md">Français</a> ·
    <a href="README.uk.md">Українська</a> ·
    <strong>简体中文</strong>
  </p>
</div>

Atlas Simulation Studio 是一款经过专业界面设计的 Progressive Web App，基于原始的人口竞赛模拟。起始目录包含 **150 个国家** 和 **244 座城市**，并提供时间轴、图表和编辑器。**「参与者」** 面板可按国家、大洲、子区域、国际组织和人口筛选国家和城市。可以全部启用、全部停用、仅保留匹配项、添加匹配项或排除它们。已选参与者列表会按国家和城市分别保存在设备上。请修改项目名称，在顶部栏或设置中选择模拟主题，然后配置竞赛指标。

## ✨ 功能

- 起始目录包含 150 个国家和 244 座城市
- 起始年代：1800、1900、1950、2000 或 2026，含该年的历史人口与旗帜
- 时间轴与图表，以及面向国家和城市的数据编辑器
- **「参与者」** 筛选面板：可按国家、大洲、子区域、国际组织和人口筛选
- 筛选操作：全部启用、全部停用、仅保留匹配项、添加匹配项或排除匹配项
- 人口预设：人口不足 100 万的城市
- 已选国家和城市列表在设备上分开保存
- 可自定义项目名称、模拟主题和竞赛指标
- 可选的 GDP、生产、移民和犯罪模式（参见 [模拟准确性](#模拟准确性)）
- 国家和城市的竞赛标签页与编辑器标签页
- 播放控制：播放 / 暂停、重置到起始，以及每年 15、10 或 5 秒的速度
- 编辑器工具：将人口清零、添加一行、平滑急剧跳变、增加 10 年、应用数据以及删除一行
- 35 种界面语言，国家和大洲名称会随所选语言本地化
- 可安装的 PWA：Service Worker 会缓存应用外壳，供以后启动使用
- 保留可视化与编辑器的原始宽度；窗口高度会适配设备

## 📦 下载与安装

已为 Windows 和 Android 分别准备 **EXE** 和 **APK** 安装包，可从 [GitHub Releases](https://github.com/DanyaDanileckiy/atlas-simulation-studio/releases) 或下方仓库文件链接下载。安装说明也写在 [`installer-output/README.md`](../installer-output/README.md) 中。

| 平台 | 安装包 | 要求与说明 |
| --- | --- | --- |
| Windows | [AtlasSimulationStudioSetup.exe](../installer-output/AtlasSimulationStudioSetup.exe) | Windows 电脑。步骤见下方。 |
| Android | [Atlas-Simulation-Studio.apk](../installer-output/Atlas-Simulation-Studio.apk) | Android 6.0 或更高版本。该 APK 已签名；签名密钥和密码仅保存在本地，有意不放入本仓库。 |
| iPhone / iPad | 通过 Safari 安装 PWA | 尚未构建 iOS IPA。分发 IPA 需要 Apple 签名和 iOS 构建工具链。 |
| Web | 浏览器中的 PWA | 若要以图标安装该站点并支持离线启动，必须将其发布到 HTTPS 托管环境。 |

### Windows

1. 从 [GitHub Releases](https://github.com/DanyaDanileckiy/atlas-simulation-studio/releases) 或仓库下载 [AtlasSimulationStudioSetup.exe](../installer-output/AtlasSimulationStudioSetup.exe)。
2. 运行安装程序。它会将应用安装到 `%LOCALAPPDATA%\Programs\Atlas Simulation Studio`，在桌面和「开始」菜单创建快捷方式，并打开应用。
3. 由于该 EXE 未使用发行者证书签名，Windows SmartScreen 可能会显示未知发行者警告。请点击 **「更多信息」**，然后选择 **「仍要运行」**。

### Android

1. 从 [GitHub Releases](https://github.com/DanyaDanileckiy/atlas-simulation-studio/releases) 或仓库下载 [Atlas-Simulation-Studio.apk](../installer-output/Atlas-Simulation-Studio.apk)。
2. 在运行 **Android 6.0** 或更高版本的设备或模拟器上安装该 APK。

### iPhone / iPad

1. 在 **Safari** 中打开已发布的 HTTPS 站点。
2. 点按 **「分享」**，然后选择 **「添加到主屏幕」**。

### Web（PWA）

1. 将项目文件夹中的全部文件上传到 HTTPS 托管环境（例如 GitHub Pages、Cloudflare Pages、Netlify 或自有服务器）。
2. 在电脑或 Android 上用 Chrome 或 Edge 打开该地址，点击 **「安装应用」**，或在浏览器菜单中选择安装。
3. 在 iPhone 或 iPad 上，按上文所述使用 Safari → **「分享」** → **「添加到主屏幕」**。

Service Worker 会缓存应用外壳，供以后启动使用。如果以 `file://` 方式打开 HTML，则无法安装。

## 💻 本地运行

请通过本地 HTTP 服务器打开该站点。可以：

- 运行 `start-local.bat`，或
- 运行 `python -m http.server 8080`，然后打开 [http://localhost:8080](http://localhost:8080)。

如果直接以 `file://` 打开 `index.html`，则无法使用 PWA 安装。

## 🌍 语言

应用提供 **35 种语言** 可选：俄语、英语、西班牙语、法语、德语、意大利语、葡萄牙语、荷兰语、波兰语、乌克兰语、土耳其语、阿拉伯语、中文、日语、韩语、印地语、孟加拉语、印度尼西亚语、马来语、越南语、泰语、瑞典语、挪威语、丹麦语、芬兰语、希腊语、希伯来语、波斯语、乌尔都语、罗马尼亚语、匈牙利语、捷克语、斯洛伐克语、保加利亚语和塞尔维亚语。

| 范围 | 覆盖情况 |
| --- | --- |
| 国家与大洲名称 | 会随所选语言本地化（全部 35 种） |
| 工作室外壳界面 | 已完整翻译为俄语、英语、西班牙语、法语、德语、乌克兰语、中文、日语和阿拉伯语。其他语言下，外壳会回退到英语。 |
| 原始模拟与编辑器标签 | 仍为俄语 |

## ⚠️ 模拟准确性

新添加城市的人口是 2020 年的四舍五入粗略估计；在原始数据集中，城市边界与城市群边界可能并不一致。历史年代按当今边界计算。1800 与 1900 年的数字取自 Our World in Data 并做了四舍五入（HYDE 3.3；Gapminder v7，依据 Maddison Project 与 Clio Infra）。自 1950 年起，包括 2026 年的起点，仍使用目录中的原有序列（联合国 World Population Prospects）。知名城市采用 Chandler、Bairoch 与联合国 World Urbanization Prospects 的估计。近期新增城市的历史序列和预测由用于可视化的简化模型生成，并非官方统计序列。

GDP、生产、移民和犯罪模式允许选择对象和项目名称，但并不会用这些领域的统计数据替换人口数据：在编辑器中输入的源序列仍然是人口数据。要使这些模式产生有意义的结果，需要扩展编辑器以支持独立的自定义指标集，并为其加载数据。因此，标有 **「演示指数」** 的竞逐指标数值不能被解释为真实指标。

## 📁 项目结构

```text
├── index.html                 # 单页主应用
├── icon.svg                   # 应用图标
├── manifest.webmanifest       # PWA 清单
├── sw.js                      # Service Worker
├── start-local.bat            # Windows 本地 HTTP 服务器助手
├── capacitor.config.json      # Capacitor 7 配置
├── package.json
├── desktop/
│   └── main.cjs
├── vendor/
│   ├── d3.v7.min.js           # D3.js v7
│   └── tailwindcss.js         # Tailwind CSS
├── public/                    # Web 资源（图标、应用、清单、Service Worker、vendor）
├── android/                   # Capacitor 7 Android 项目
└── installer-output/
    ├── AtlasSimulationStudioSetup.exe
    ├── Atlas-Simulation-Studio.apk
    ├── README.md              # 安装说明
    ├── win-installer.cpp
    ├── windows-installer.sed
    ├── windows-payload/
    ├── android-native/
    ├── build-apk.ps1
    └── download-android-tools.ps1
```

## 🛠️ 技术栈

| 层级 | 技术 |
| --- | --- |
| 应用 | 单个 `index.html` 页面 |
| 样式 | Tailwind CSS |
| 图表与可视化 | D3.js v7 |
| 可离线 / 可安装的 Web 应用 | Service Worker 与 Web 应用清单（PWA） |
| Android | Capacitor 7 |
| Windows | EXE 安装程序（`AtlasSimulationStudioSetup.exe`） |
| 本地开发 | `start-local.bat` 或 `python -m http.server 8080` |

APK 签名密钥和密码仅保存在本地，有意不包含在此 GitHub 仓库中。

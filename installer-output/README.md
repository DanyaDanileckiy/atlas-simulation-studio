# Atlas Simulation Studio installers

- `AtlasSimulationStudioSetup.exe` installs the offline-capable site for the current Windows user, creates desktop and Start Menu shortcuts, and opens it in the default browser.
- `Atlas-Simulation-Studio.apk` is a signed Android WebView app containing the site and its local libraries.

On Android, transfer the APK to the device, open it, allow installation from the file manager/browser if Android asks, then tap Install. Minimum Android version is 6.0 (API 23). Windows SmartScreen can warn because the EXE has no public code-signing certificate.

The APK signing keystore and password are intentionally kept outside GitHub in the local `keys/` directory. Keep them backed up privately: future APK updates must use the same signing key. To rebuild, provide Android SDK 35 and JDK 17 locally, then run `powershell -ExecutionPolicy Bypass -File build-apk.ps1`. The Java WebView host is in `android-native`.

On iPhone/iPad, install the web version from Safari using Share → Add to Home Screen. A signed iOS IPA is not included; IPA distribution requires Apple’s signing and iOS packaging toolchain.

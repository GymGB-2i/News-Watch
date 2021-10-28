# PoliNEWS
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![IntelliJ IDEA](https://img.shields.io/badge/IntelliJIDEA-000000.svg?style=for-the-badge&logo=intellij-idea&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)
![SQLite](https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white)
![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)
![Rss](https://img.shields.io/badge/rss-F88900?style=for-the-badge&logo=rss&logoColor=white)

A news app specifically for politics.

|Feature                         | Technology                                               |
|--------------------------------|----------------------------------------------------------|
|App & UI                        | [Flutter](https://flutter.dev)                           |
|Get the news (preview w/ title) | [RSS](https://pub.dev/packages/dart_rss)                 |
| View the articles              | [WebView](https://pub.dev/packages/flutter_inappwebview) |

* [What is RSS?](https://jdmdigital.co/news/codex/rss-simplified/)
* [What is a WebView?](https://www.kirupa.com/apps/webview.htm)
* [What is Git & GitHub?](https://www.coderomeos.org/how-to-use-github-simple-github-tutorial-for-beginners)

### Why RSS
RSS is a simple way of accessing information published by news outlets like the New Yorkt Times, NZZ and many other. Accessing an RSS feed is simple and not overly complicated. It is easy to store the news in a data structure and therefor parsing the information to a ```ListView.builder``` in Flutter.

### Why WebView
Since the news outlets only provide titles and quick teasers in the RSS feeds, accessing the article is done through a web browser. To provide a more seamless expierence, we use a WebView to present the article in-app.


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

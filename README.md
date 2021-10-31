# PoliNEWS
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![IntelliJ IDEA](https://img.shields.io/badge/IntelliJIDEA-000000.svg?style=for-the-badge&logo=intellij-idea&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)
<!-- ![SQLite](https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white) -->
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

# Getting Started
<!-- <details>
  <summary>Setting up your development environment</summary>
  
  ## What software you need
  1. [Git](https://git-scm.com/) or [GitHub Desktop](https://desktop.github.com/) for sharing code and keeping track of features
      * [GitKraken](https://gitkraken.com) for a visual representation of commits
  2. Code Editor (IDE)
     * [Visual Studio Code](https://code.visualstudio.com)
     * [Android Studio](https://developer.android.com/studio/) or [JetBrains IntelliJ](https://www.jetbrains.com/idea/download/#section=windows) (Community Edition - free)
  3. [Flutter](https://flutter.dev) by Google
      * [Cookbook](https://flutter.dev/docs/cookbook) by Google for Flutter tutorials
</details>
<details>
  <summary>What Flutter Widgets and Features we use</summary>
  
  ## Widgets and Features
  1. FutureBuilder
      * The [FutureBuilder](https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html) shows content as soon as a function returns it (simplified)
  2. CustomScrollView
      * The [CustomScrollView](https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html) provides more options to customize the UI
  3. ListTile
      * The [ListTile](https://api.flutter.dev/flutter/material/ListTile-class.html) is a widget that provides a section for a title, subtitle and icons
 </details>
 <details>
  <summary>Flutter plugins</summary>
  
  ## Plugins
  1. WebFeed
      * The [WebFeed](https://pub.dev/packages/webfeed) plugin allows Flutter to parse (to process) information from a RSS feed
  2. WebView
      * The [WebView](https://pub.dev/packages/flutter_inappwebview) shows a website inside an app
 </details>
-->
 
  ## What software you need
  1. [Git](https://git-scm.com/) or [GitHub Desktop](https://desktop.github.com/) for sharing code and keeping track of features
      * [GitKraken](https://gitkraken.com) for a visual representation of commits
  2. Code Editor (IDE)
     * [Visual Studio Code](https://code.visualstudio.com)
     * [Android Studio](https://developer.android.com/studio/) or [JetBrains IntelliJ](https://www.jetbrains.com/idea/download/#section=windows) (Community Edition - free)
  3. [Flutter](https://flutter.dev) by Google
      * [Cookbook](https://flutter.dev/docs/cookbook) by Google for Flutter tutorials
  ## Widgets and Features
  1. FutureBuilder
      * The [FutureBuilder](https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html) shows content as soon as a function returns it (simplified)
  2. CustomScrollView
      * The [CustomScrollView](https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html) provides more options to customize the UI
  3. ListTile
      * The [ListTile](https://api.flutter.dev/flutter/material/ListTile-class.html) is a widget that provides a section for a title, subtitle and icons
  ## Plugins
  1. WebFeed
      * The [WebFeed](https://pub.dev/packages/webfeed) plugin allows Flutter to parse (to process) information from a RSS feed
  2. WebView
      * The [WebView](https://pub.dev/packages/flutter_inappwebview) shows a website inside an app

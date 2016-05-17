# MDL4Dart / Android Hybrid 
> Proof of concept for Dart <-> Android communication

This simple example demonstrates how to communicate between Dart and Android.

Watch it on [YouTube](https://youtu.be/Y8QfJqBzh8I)
 
What I did:

- I took the [MDL/Dart Button sample](https://github.com/MikeMitterer/dart-material-design-lite-site/tree/samples2site/samples/mdl_button)
- Copied it into src/main/assets
- Made the [WebAppInterface](https://github.com/MikeMitterer/android-hybrid/blob/master/src/main/java/at/mikemitterer/hybrid/bridge/WebAppInterface.java)
- Added the [WebView to the Activity](https://github.com/MikeMitterer/android-hybrid/blob/master/src/main/java/at/mikemitterer/hybrid/ui/MainActivity.java#l135-l176) 
- Added a few lines of code to [main.dart](https://github.com/MikeMitterer/android-hybrid/blob/master/src/main/assets/web/main.dart#l10-l32)
- Made a "pub build"
- Pushed to whole thing to the emulator

![MDL/Dart2Android](https://raw.github.com/MikeMitterer/android-hybrid/master/doc/screenshot.png)

Yes - there is [Flutter](https://flutter.io/) and if it works it will be a far better approach then the whole **Dart -> JS -> Android** thing but for
the moment it could be an option for someone.

**Remark:** The most promising Flutter sample: [hello_android](https://github.com/flutter/flutter/tree/master/examples/hello_android) 

## MDL4Dart
[WebSite](http://www.material-design-lite.pub/)
[KitchenSink](http://styleguide.material-design-lite.pub/#/)
[Samples](http://styleguide.material-design-lite.pub/#/samples)

###License###

    Copyright 2016 Michael Mitterer (office@mikemitterer.at),
    IT-Consulting and Development Limited, Austrian Branch

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
    either express or implied. See the License for the specific language
    governing permissions and limitations under the License.
    
If this plugin is helpful for you - please [(Circle)](http://gplus.mikemitterer.at/) me
or **star** this repo here on GitHub

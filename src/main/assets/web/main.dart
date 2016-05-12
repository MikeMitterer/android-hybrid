import 'dart:html' as dom;

import 'package:logging/logging.dart';
import 'package:console_log_handler/console_log_handler.dart';
import 'package:js/js.dart';

import 'package:mdl/mdl.dart';

// Calls invoke JavaScript `JSON.stringify(obj)`.
@JS("Android.showToast")
external String showToast(toast);

main() {
    configLogging();

    registerMdl();

    componentFactory().run().then((_) {
        MaterialButton button = MaterialButton.widget(dom.querySelector("#maketoast"));
        button.onClick.listen((_) {
            showToast("Hi from DART");
        });
    });
}

void configLogging() {
    hierarchicalLoggingEnabled = false; // set this to true - its part of Logging SDK

    // now control the logging.
    // Turn off all logging first
    Logger.root.level = Level.INFO;
    Logger.root.onRecord.listen(new LogConsoleHandler());
}
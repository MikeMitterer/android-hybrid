import 'dart:html' as dom;
import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:console_log_handler/console_log_handler.dart';
import 'package:js/js.dart';

import 'package:mdl/mdl.dart';

// Call invokes Java `WebAppInterface#showToast(String toast)`.
@JS("Android.showToast")
external String showToast(toast);

main() {
    configLogging();

    registerMdl();

    componentFactory().run().then((_) {
        MaterialButton button = MaterialButton.widget(dom.querySelector("#maketoast"));
        button.enabled = false;

        button.onClick.listen((_) {
            showToast("Hi from DART");
        });

        dom.document.on["JsToDartEvent"].listen((dom.CustomEvent event) {
            final String jsonString = event.detail.toString();
            final Map<String,dynamic> parsedMap = JSON.decode(jsonString);

            button.enabled = parsedMap["checked"];
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
import 'dart:developer';

import 'package:flutter/foundation.dart';

const errorMessage = "Something went wrong";

customLog({required dynamic data}) {
  if (kDebugMode) {
    log(data);
  }
}

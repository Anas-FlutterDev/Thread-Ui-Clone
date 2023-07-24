import 'package:thread_app_clone/data/data.dart';
import 'package:thread_app_clone/data/thread.dart';

abstract class Ithread {
  List<thread> getThread();
}

class threadRemoteDataSource extends Ithread {
  @override
  List<thread> getThread() {
    return listThread()
        .map((JsonObject) => thread.formJson(JsonObject))
        .toList();
  }
}

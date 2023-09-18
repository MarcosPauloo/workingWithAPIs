import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_playground/controllers/home_controller.dart';
import 'package:flutter_playground/service/dio_client.dart';
import 'package:flutter_playground/service/http_client_interface.dart';
import 'package:flutter_playground/service/json_placeholder_service.dart';
import 'package:flutter_playground/views/home_page.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<IHttpClient>(DioClient.new);
    i.addSingleton(JsonPlaceholderService.new);
    i.addSingleton(HomeController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => HomePage());
  }
}

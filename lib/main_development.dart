import 'package:rayon_flutter_core/bootstrap.dart';
import 'package:rayon_flutter_core/data/helpers/api_environment.dart';
import 'package:rayon_flutter_core/presentation/app/app.dart';

void main() {
  ApiEnvironment.current = ApiEnvironment.development;
  bootstrap(() => const App());
}

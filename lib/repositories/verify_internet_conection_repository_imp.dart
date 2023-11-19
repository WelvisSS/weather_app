import 'verify_internet_conection_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class VerifyInternetConectionRepositoryImp
    implements VerifyInternetConectionRepository {
  @override
  Future<bool> internetConectionExist() async {
    ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();

    // Verifica se existe conexão om a internet via dados móveis ou Wi-Fi.
    return connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi;
  }
}

import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:injectable/injectable.dart';

import '../../constants/durations.dart';
import '../../services/logger/logger_service.dart';
import 'network_info.dart';

@LazySingleton(as: NetworkInfo)
final class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;
  final LoggerService _logger;

  NetworkInfoImpl({required this.connectivity, required LoggerService logger})
      : _logger = logger;

  @override
  Future<bool> get isConnected async {
    _logger.i('Checking internet connectivity...');
    final result =
        await connectivity.checkConnection().timeout(timeoutDuration);
    _logger.i('Internet connection status: $result');
    return result;
  }
}

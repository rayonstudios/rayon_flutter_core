enum ApiEnvironment {
  production(baseUrl: 'https://backend.example.com/'),
  staging(baseUrl: 'https://backend.example.qa/'),
  development(baseUrl: 'https://backend.example.dev/');

  const ApiEnvironment({required this.baseUrl});

  final String baseUrl;

  bool get isProduction => this == ApiEnvironment.production;
  bool get isStaging => this == ApiEnvironment.staging;
  bool get isDevelopment => this == ApiEnvironment.development;

  static ApiEnvironment _current = ApiEnvironment.development;

  static ApiEnvironment get current => _current;

  static set current(ApiEnvironment env) => _current = env;
}

sealed class RequestError {
  RequestError({this.message});

  String? message;
}

class ConnectionError extends RequestError {
  ConnectionError({super.message});
}

class GenericError extends RequestError {
  GenericError({super.message});
}

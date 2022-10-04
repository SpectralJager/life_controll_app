class NotFoundExeption implements Exception {
  final dynamic message;

  NotFoundExeption(this.message);
}

class AlreadyExistExeption implements Exception {
  final dynamic message;

  AlreadyExistExeption(this.message);
}

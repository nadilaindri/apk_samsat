class ApiServicesHeader {
  Map<String, String> headerWithoutToken() {
    return {
      'X-Requested-With': 'XMLHttpRequest',
      'Content-Type': 'application/json',
      'Cache-Control': 'no-cache'
    };
  }

  Map<String, String> headerWithToken(token) {
    return {
      'X-Requested-With': 'XMLHttpRequest',
      'Content-Type': 'application/json',
      'Cache-Control': 'no-cache',
      'X-Authorization': 'Bearer $token'
    };
  }
}

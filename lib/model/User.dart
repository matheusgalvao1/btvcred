class ModelUser {

  UserLocation location = UserLocation();
  String email;
  String cpf;
}

class UserLocation {

  UserLocation();

  String estado;
  String cidade;
  String bairro;
  String country;
  double latitude;
  double longitude;

  @override 
  String toString() {
    return "Pais: " + country + "\nEstado: " + estado + "\nCidade: " + cidade + "\nBairro: " + bairro;
  }
}

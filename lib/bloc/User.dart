import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:geolocator/geolocator.dart';

import '../../components/CustomBarIcon.dart';
import '../../model/User.dart';

class BlocUser extends BlocBase {
  ModelUser user = ModelUser();

  void init(BuildContext context) async {
    if (user.location.latitude == null || user.location.longitude == null) {
      // CustomBarIcon.showAlert(
      //   title: 'Localização',
      //   message: 'Por favor compartilhe sua localização',
      //   icon: Icon(
      //     Icons.location_pin,
      //     size: 40,
      //     color: Colors.white,
      //   ),
      //   context: context,
      // );
      await getCurrentPosition();
    }
  }

  Future<void> getCurrentPosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    if (position != null) setLocation(position.latitude, position.longitude);
  }

  void setLocation(double lat, double long) {
    if (lat != null && long != null) {
      user.location.latitude = lat;
      user.location.longitude = long;
    }
  }

  void setEmail(String email) {
    if (user.email != email) {
      user.email = email;
    }
  }

  void setCPF(String cpf) {
    if (user.cpf != cpf) {
      user.cpf = cpf;
    }
  }
}

import 'package:baketballapp/states.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class basketballcubit extends Cubit<basketballappstate> {
  int TeamA = 0;
  int TeamB = 0;
  Color teama = Colors.black;
  Color teamb = Colors.black;
  Color lcolor = Colors.red;
  Color wcolor = Colors.green;

  basketballcubit() : super(initialstate());
  increaseteamaonepoint() {
    TeamA += 1;
    if (TeamA > TeamB) {
      teama = wcolor;
      teamb = lcolor;
    } else if (TeamA < TeamB) {
      teama = lcolor;
      teamb = wcolor;
    } else {
      teama = Colors.black;
      teamb = Colors.black;
    }
    emit(successstate());
  }

  increaseteambonepoint() {
    TeamB += 1;
    if (TeamA > TeamB) {
      teama = wcolor;
      teamb = lcolor;
    } else if (TeamA < TeamB) {
      teama = lcolor;
      teamb = wcolor;
    } else {
      teama = Colors.black;
      teamb = Colors.black;
    }
    emit(successstate());
  }

  increaseteamatwopoint() {
    TeamA += 2;
    if (TeamA > TeamB) {
      teama = wcolor;
      teamb = lcolor;
    } else if (TeamA < TeamB) {
      teama = lcolor;
      teamb = wcolor;
    } else {
      teama = Colors.black;
      teamb = Colors.black;
    }
    emit(successstate());
  }

  increaseteambtwopoint() {
    TeamB += 2;
    if (TeamA > TeamB) {
      teama = wcolor;
      teamb = lcolor;
    } else if (TeamA < TeamB) {
      teama = lcolor;
      teamb = wcolor;
    } else {
      teama = Colors.black;
      teamb = Colors.black;
    }
    emit(successstate());
  }

  increaseteamathreepoint() {
    TeamA += 3;
    if (TeamA > TeamB) {
      teama = wcolor;
      teamb = lcolor;
    } else if (TeamA < TeamB) {
      teama = lcolor;
      teamb = wcolor;
    } else {
      teama = Colors.black;
      teamb = Colors.black;
    }
    emit(successstate());
  }

  increaseteambthreepoint() {
    TeamB += 3;
    if (TeamA > TeamB) {
      teama = wcolor;
      teamb = lcolor;
    } else if (TeamA < TeamB) {
      teama = lcolor;
      teamb = wcolor;
    } else {
      teama = Colors.black;
      teamb = Colors.black;
    }
    emit(successstate());
  }

  startagain() {
    TeamA = 0;
    TeamB = 0;
    teama = Colors.black;
    teamb = Colors.black;

    emit(successstate());
  }
}

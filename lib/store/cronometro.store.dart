import 'dart:async';

import 'package:mobx/mobx.dart';
part 'cronometro.store.g.dart';

class CronometroStore = _CronometroStore with _$CronometroStore;

abstract class _CronometroStore with Store {
  @observable
  int minutos = 0;

  @observable
  int segundos = 0;

  @observable
  bool estaCronometrando = false;

  @observable
  bool estaZerado = true;

  Timer? cronometro;

  @action
  void inicar() {
    estaCronometrando = true;
    estaZerado = false;
    cronometro = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (segundos > 59) {
        minutos++;
        segundos = 0;
      } else {
        segundos++;
      }
    });
  }

  @action
  void parar() {
    estaCronometrando = false;
    cronometro?.cancel();
  }

  @action
  void zerar() {
    parar();
    estaZerado = true;
    minutos = 0;
    segundos = 0;
  }
}

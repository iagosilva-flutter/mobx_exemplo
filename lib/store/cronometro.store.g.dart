// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cronometro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CronometroStore on _CronometroStore, Store {
  late final _$minutosAtom =
      Atom(name: '_CronometroStore.minutos', context: context);

  @override
  int get minutos {
    _$minutosAtom.reportRead();
    return super.minutos;
  }

  @override
  set minutos(int value) {
    _$minutosAtom.reportWrite(value, super.minutos, () {
      super.minutos = value;
    });
  }

  late final _$segundosAtom =
      Atom(name: '_CronometroStore.segundos', context: context);

  @override
  int get segundos {
    _$segundosAtom.reportRead();
    return super.segundos;
  }

  @override
  set segundos(int value) {
    _$segundosAtom.reportWrite(value, super.segundos, () {
      super.segundos = value;
    });
  }

  late final _$estaCronometrandoAtom =
      Atom(name: '_CronometroStore.estaCronometrando', context: context);

  @override
  bool get estaCronometrando {
    _$estaCronometrandoAtom.reportRead();
    return super.estaCronometrando;
  }

  @override
  set estaCronometrando(bool value) {
    _$estaCronometrandoAtom.reportWrite(value, super.estaCronometrando, () {
      super.estaCronometrando = value;
    });
  }

  late final _$estaZeradoAtom =
      Atom(name: '_CronometroStore.estaZerado', context: context);

  @override
  bool get estaZerado {
    _$estaZeradoAtom.reportRead();
    return super.estaZerado;
  }

  @override
  set estaZerado(bool value) {
    _$estaZeradoAtom.reportWrite(value, super.estaZerado, () {
      super.estaZerado = value;
    });
  }

  late final _$_CronometroStoreActionController =
      ActionController(name: '_CronometroStore', context: context);

  @override
  void inicar() {
    final _$actionInfo = _$_CronometroStoreActionController.startAction(
        name: '_CronometroStore.inicar');
    try {
      return super.inicar();
    } finally {
      _$_CronometroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void parar() {
    final _$actionInfo = _$_CronometroStoreActionController.startAction(
        name: '_CronometroStore.parar');
    try {
      return super.parar();
    } finally {
      _$_CronometroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void zerar() {
    final _$actionInfo = _$_CronometroStoreActionController.startAction(
        name: '_CronometroStore.zerar');
    try {
      return super.zerar();
    } finally {
      _$_CronometroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
minutos: ${minutos},
segundos: ${segundos},
estaCronometrando: ${estaCronometrando},
estaZerado: ${estaZerado}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pacer.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PacerStore on _PacerStore, Store {
  final _$isInitiatedAtom = Atom(name: '_PacerStore.isInitiated');

  @override
  bool get isInitiated {
    _$isInitiatedAtom.reportRead();
    return super.isInitiated;
  }

  @override
  set isInitiated(bool value) {
    _$isInitiatedAtom.reportWrite(value, super.isInitiated, () {
      super.isInitiated = value;
    });
  }

  final _$minutesAtom = Atom(name: '_PacerStore.minutes');

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  final _$secondsAtom = Atom(name: '_PacerStore.seconds');

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  final _$timeRunningAtom = Atom(name: '_PacerStore.timeRunning');

  @override
  int get timeRunning {
    _$timeRunningAtom.reportRead();
    return super.timeRunning;
  }

  @override
  set timeRunning(int value) {
    _$timeRunningAtom.reportWrite(value, super.timeRunning, () {
      super.timeRunning = value;
    });
  }

  final _$timeWalkingAtom = Atom(name: '_PacerStore.timeWalking');

  @override
  int get timeWalking {
    _$timeWalkingAtom.reportRead();
    return super.timeWalking;
  }

  @override
  set timeWalking(int value) {
    _$timeWalkingAtom.reportWrite(value, super.timeWalking, () {
      super.timeWalking = value;
    });
  }

  final _$tipoIntervaloAtom = Atom(name: '_PacerStore.tipoIntervalo');

  @override
  IntervalType get intervalType {
    _$tipoIntervaloAtom.reportRead();
    return super.intervalType;
  }

  @override
  set intervalType(IntervalType value) {
    _$tipoIntervaloAtom.reportWrite(value, super.intervalType, () {
      super.intervalType = value;
    });
  }

  final _$_PacerStoreActionController = ActionController(name: '_PacerStore');

  @override
  void start() {
    final _$actionInfo =
        _$_PacerStoreActionController.startAction(name: '_PacerStore.start');
    try {
      return super.start();
    } finally {
      _$_PacerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo =
        _$_PacerStoreActionController.startAction(name: '_PacerStore.stop');
    try {
      return super.stop();
    } finally {
      _$_PacerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restart() {
    final _$actionInfo =
        _$_PacerStoreActionController.startAction(name: '_PacerStore.restart');
    try {
      return super.restart();
    } finally {
      _$_PacerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseTimeRunning() {
    final _$actionInfo = _$_PacerStoreActionController.startAction(
        name: '_PacerStore.increaseTimeRunning');
    try {
      return super.increaseTimeRunning();
    } finally {
      _$_PacerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseTimeRunning() {
    final _$actionInfo = _$_PacerStoreActionController.startAction(
        name: '_PacerStore.decreaseTimeRunning');
    try {
      return super.decreaseTimeRunning();
    } finally {
      _$_PacerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseTimeWalking() {
    final _$actionInfo = _$_PacerStoreActionController.startAction(
        name: '_PacerStore.increaseTimeWalking');
    try {
      return super.increaseTimeWalking();
    } finally {
      _$_PacerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseTimeWalking() {
    final _$actionInfo = _$_PacerStoreActionController.startAction(
        name: '_PacerStore.decreaseTimeWalking');
    try {
      return super.decreaseTimeWalking();
    } finally {
      _$_PacerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
      isInitiated: ${isInitiated},
      minutes: ${minutes},
      seconds: ${seconds},
      timeRunning: ${timeRunning},
      timeWalking: ${timeWalking},
      intervalType: ${intervalType}
    ''';
  }
}

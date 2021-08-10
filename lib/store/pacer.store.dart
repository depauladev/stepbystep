import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:audioplayers/audioplayers.dart';

part 'pacer.store.g.dart';

class PacerStore = _PacerStore with _$PacerStore;

enum IntervalType { RUNNING, WALKING }

abstract class _PacerStore with Store {
  @observable
  bool isInitiated = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int timeRunning = 2;

  @observable
  int timeWalking = 1;

  @observable
  IntervalType intervalType = IntervalType.RUNNING;

  Timer? stopwatch;

  @action
  void start() {
    isInitiated = true;
    stopwatch = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      if (minutes == 0 && seconds == 0) {
        _changeIntervalType();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    isInitiated = false;
    stopwatch?.cancel();
  }

  @action
  void restart() {
    stop();
    minutes = isRunning() ? timeRunning : timeWalking;
    seconds = 0;
  }

  @action
  void run() {
    if(this.isRunning()) return;
    restart();
    this.intervalType = IntervalType.RUNNING;
    minutes = timeRunning;
  }

  @action
  void walk() {
    if(this.isWalking()) return;
    restart();
    this.intervalType = IntervalType.WALKING;
    minutes = timeWalking;
  }

  @action
  void increaseTimeRunning() {
    timeRunning++;
    if (isRunning()) {
      restart();
    }
  }

  @action
  void decreaseTimeRunning() {
    if (timeRunning > 1) {
      timeRunning--;
      if (isRunning()) {
        restart();
      }
    }
  }

  @action
  void increaseTimeWalking() {
    timeWalking++;
    if (isWalking()) {
      restart();
    }
  }

  @action
  void decreaseTimeWalking() {
    if (timeWalking > 1) {
      timeWalking--;
      if (isWalking()) {
        restart();
      }
    }
  }

  bool isRunning() {
    return intervalType == IntervalType.RUNNING;
  }

  bool isWalking() {
    return intervalType == IntervalType.WALKING;
  }

  void _changeIntervalType() {
    if (isRunning()) {
      intervalType = IntervalType.WALKING;
      minutes = timeWalking;
    } else {
      intervalType = IntervalType.RUNNING;
      minutes = timeRunning;
    }
    playSound();
    seconds = 0;
  }

  void playLocalAsset(String assetName) async {
    AudioCache cache = new AudioCache();
    await cache.play(assetName, volume: 0.2); 
  }

  void playSound() {
    if(this.isRunning()) {
      this.playLocalAsset('doisplim.ogg');
    }
    else {
      this.playLocalAsset('umplim.ogg');
    }
  }
}


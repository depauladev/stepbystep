import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:stepbystep/components/EntryTime.dart';
import 'package:stepbystep/components/Stopwatch.dart';
import 'package:provider/provider.dart';
import 'package:stepbystep/store/pacer.store.dart';

class Pacer extends StatelessWidget {
  const Pacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PacerStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stopwatch(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EntryTime(
                    title: 'Running',
                    value: store.timeRunning,
                    inc: store.isInitiated && store.isRunning()
                        ? null
                        : store.increaseTimeRunning,
                    dec: store.isInitiated && store.isRunning()
                        ? null
                        : store.decreaseTimeRunning,
                  ),
                  EntryTime(
                    title: 'Walking',
                    value: store.timeWalking,
                    inc: store.isInitiated && store.isWalking()
                        ? null
                        : store.increaseTimeWalking,
                    dec: store.isInitiated && store.isWalking()
                        ? null
                        : store.decreaseTimeWalking,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
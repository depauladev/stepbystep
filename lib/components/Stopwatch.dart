import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:stepbystep/components/StopwatchButton.dart';
import 'package:provider/provider.dart';
import '../store/pacer.store.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PacerStore>(context);

    return Observer(
      builder: (_) {
        return Container(
          color: store.isRunning() ? Colors.red : Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                store.isRunning() ? 'Running time' : 'Walking time',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
                style: TextStyle(
                  fontSize: 120,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!store.isInitiated)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: StopwatchButton(
                        text: 'Start',
                        icon: Icons.play_arrow,
                        click: store.start,
                      ),
                    ),
                  if (store.isInitiated)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: StopwatchButton(
                        text: 'Stop',
                        icon: Icons.stop,
                        click: store.stop,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: StopwatchButton(
                      text: 'Restart',
                      icon: Icons.refresh,
                      click: store.restart,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if(store.isWalking())
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 15),
                      child: StopwatchButton(
                        text: 'Run',
                        icon: Icons.directions_run,
                        click: store.run,
                      ),
                    ),
                  if(store.isRunning())
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: StopwatchButton(
                        text: 'Walk',
                        icon: Icons.directions_walk,
                        click: store.walk,
                      ),
                    ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

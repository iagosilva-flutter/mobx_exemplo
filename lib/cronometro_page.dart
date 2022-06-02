import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_exemplo/store/cronometro.store.dart';
import 'package:provider/provider.dart';

import 'cronometro_widget.dart';

class CronometroPage extends StatelessWidget {
  CronometroPage({Key? key}) : super(key: key);

  int minutos = 0;
  int segundos = 0;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CronometroStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MOBX - CRONOMETRO'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Observer(
          builder: (_) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CronometroWidget(),
              const SizedBox(height: 40),
              Visibility(
                visible: !provider.estaCronometrando,
                child: TextButton(
                  child: const Text('Inicia'),
                  onPressed: () {
                    provider.inicar();
                  },
                ),
              ),
              Visibility(
                visible: provider.estaCronometrando,
                child: Column(
                  children: [
                    const SizedBox(height: 48),
                    TextButton(
                      child: const Text('Pausa'),
                      onPressed: () {
                        provider.parar();
                      },
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: !provider.estaZerado && !provider.estaCronometrando,
                child: TextButton(
                  child: const Text('Zera'),
                  onPressed: () {
                    provider.zerar();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

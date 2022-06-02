import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_exemplo/store/cronometro.store.dart';
import 'package:provider/provider.dart';

class CronometroWidget extends StatelessWidget {
  const CronometroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerStore = Provider.of<CronometroStore>(context);
    return Observer(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${providerStore.minutos.toString().padLeft(2, '0')}:${providerStore.segundos.toString().padLeft(2, '0')}',
            style: const TextStyle(fontSize: 70),
          ),
        ],
      ),
    );
  }
}

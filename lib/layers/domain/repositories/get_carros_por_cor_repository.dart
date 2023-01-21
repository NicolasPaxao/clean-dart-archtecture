import 'package:arquitetura_flutter/layers/domain/entities/carro_entity.dart';

abstract class IGetCarrosPorCorRepository {
  CarroEntity call(String cor);
}

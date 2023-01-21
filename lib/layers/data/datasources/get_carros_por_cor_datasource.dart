import 'package:arquitetura_flutter/layers/data/dtos/carro_dto.dart';

abstract class IGetCarrosPorCorDatSource {
  CarroDto call(String cor);
}

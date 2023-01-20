import 'package:arquitetura_flutter/layers/domain/entities/carro_entity.dart';

abstract class ISalvarCarroFavoritoUseCase {
  Future<bool> call(CarroEntity carroEntity);
}

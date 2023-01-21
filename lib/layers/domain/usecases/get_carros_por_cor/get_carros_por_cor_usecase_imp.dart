import 'package:arquitetura_flutter/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura_flutter/layers/domain/repositories/get_carros_por_cor_repository.dart';

import 'get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements IGetCarrosPorCorUseCase {
  final IGetCarrosPorCorRepository _repository;

  GetCarrosPorCorUseCaseImp(this._repository);
  @override
  CarroEntity call({required String cor}) {
    return _repository(cor);
  }
}

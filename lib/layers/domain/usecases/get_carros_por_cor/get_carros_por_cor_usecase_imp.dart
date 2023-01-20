import 'package:arquitetura_flutter/layers/domain/entities/carro_entity.dart';

import 'get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements IGetCarrosPorCorUseCase {
  @override
  CarroEntity call({required String cor}) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'ABC123', qtdPortas: 4, valor: 5000.00);
    }
    return CarroEntity(placa: 'QWE', qtdPortas: 2, valor: 1000.00);
  }
}

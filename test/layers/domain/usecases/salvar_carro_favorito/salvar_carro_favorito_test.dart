import 'package:arquitetura_flutter/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura_flutter/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:arquitetura_flutter/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:arquitetura_flutter/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryMock
    implements ISalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}

void main() {
  test(
    'Espero que salve o carro com sucesso',
    () async {
      ISalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
        SalvarCarroFavoritoRepositoryMock(),
      );

      final carro = CarroEntity(placa: 'placa', qtdPortas: 2, valor: 1);
      final result = await useCase(carro);

      expect(result, true);
    },
  );

  test(
    'Espero que não salve o carro quando o valor for menor ou igual a zero',
    () async {
      ISalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
        SalvarCarroFavoritoRepositoryMock(),
      );

      final carro = CarroEntity(placa: 'placa', qtdPortas: 2, valor: 0);
      final result = await useCase(carro);

      expect(result, false);
    },
  );
}

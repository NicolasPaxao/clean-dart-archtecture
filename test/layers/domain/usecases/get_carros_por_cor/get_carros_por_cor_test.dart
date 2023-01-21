import 'package:arquitetura_flutter/layers/data/datasources/local/get_carros_por_cor_local_datasource.dart';
import 'package:arquitetura_flutter/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:arquitetura_flutter/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura_flutter/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arquitetura_flutter/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    IGetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));
    final result = useCase(cor: 'azul');
    expect(result, isInstanceOf<CarroEntity>());
  });

  test(
    'Deve retornar um carro de 4 portas quando passado vermelho',
    () {
      IGetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
          GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));
      final result = useCase(cor: 'vermelho');
      expect(result.qtdPortas, 4);
    },
  );
  test(
    'Deve retornar um carro de 2 portas quando passado qualquer cor exceto vermelho',
    () {
      IGetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
          GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));
      final result = useCase(cor: 'verde');
      expect(result.qtdPortas, 2);
    },
  );
}

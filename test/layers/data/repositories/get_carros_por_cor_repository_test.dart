import 'package:arquitetura_flutter/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura_flutter/layers/data/datasources/local/get_carros_por_cor_local_datasource.dart';
import 'package:arquitetura_flutter/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:arquitetura_flutter/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  IGetCarrosPorCorDatSource dataSource = GetCarrosPorCorLocalDataSourceImp();
  IGetCarrosPorCorRepository repository =
      GetCarrosPorCorRepositoryImp(dataSource);

  test('Devolva um carro independente de cor', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}

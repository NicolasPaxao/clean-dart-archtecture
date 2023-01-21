import 'package:arquitetura_flutter/layers/data/datasources/get_carros_por_cor_datasource.dart';

import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements IGetCarrosPorCorRepository {
  final IGetCarrosPorCorDatSource _dataSource;

  GetCarrosPorCorRepositoryImp(this._dataSource);

  @override
  CarroEntity call(String cor) {
    return _dataSource(cor);
  }
}

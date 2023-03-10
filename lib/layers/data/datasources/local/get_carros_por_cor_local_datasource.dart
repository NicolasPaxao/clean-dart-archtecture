import 'package:arquitetura_flutter/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura_flutter/layers/data/dtos/carro_dto.dart';

class GetCarrosPorCorLocalDataSourceImp implements IGetCarrosPorCorDatSource {
  final jsonVermelho = {
    'placa': 'ABC132',
    'qtdPortas': 4,
    'valor': 5000.00,
  };

  final jsonAny = {
    'placa': 'QWE',
    'qtdPortas': 2,
    'valor': 2000.00,
  };

  @override
  CarroDto call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroDto.fromMap(jsonVermelho);
    }
    return CarroDto.fromMap(jsonAny);
  }
}

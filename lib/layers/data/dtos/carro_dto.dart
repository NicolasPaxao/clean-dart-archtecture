// ignore_for_file: overridden_fields, annotate_overrides
//* Data Transfer Object

import '../../domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int qtdPortas;
  double valor;

  CarroDto({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  }) : super(
          placa: placa,
          qtdPortas: qtdPortas,
          valor: valor,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'placa': placa,
      'qtdPortas': qtdPortas,
      'valor': valor,
    };
  }

  factory CarroDto.fromMap(Map<String, dynamic> map) {
    return CarroDto(
      placa: map['placa'] as String,
      qtdPortas: map['qtdPortas'] as int,
      valor: map['valor'] as double,
    );
  }
}

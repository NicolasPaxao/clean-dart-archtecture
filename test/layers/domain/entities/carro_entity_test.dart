import 'package:arquitetura_flutter/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que a entidade não seja nula', () {
    final carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 2,
      valor: 1000,
    );

    expect(carroEntity, isNotNull);
  });

  test('Espero que o valorReal seja 2000', () {
    final carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 2,
      valor: 1000,
    );
    var resultEsperado = 2000;

    expect(carroEntity.valorReal, resultEsperado);
  });

  test('Espero que o valorReal seja 0', () {
    final carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 0,
      valor: 1000.00,
    );

    var resultEsperado = 0.00;
    expect(carroEntity.valorReal, resultEsperado);
  });

  test('Espero que o valor seja 30000.00', () {
    final carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 2,
      valor: 15000.00,
    );

    var resultEsperado = 30000.00;

    carroEntity.setLogica();
    expect(carroEntity.valor, resultEsperado);
  });
}

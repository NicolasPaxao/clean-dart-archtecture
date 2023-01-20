import '../../entities/carro_entity.dart';

abstract class IGetCarrosPorCorUseCase {
  CarroEntity call({required String cor});
}

import '../../entities/carro_entity.dart';
import '../../repositories/salvar_carro_favorito_repository.dart';
import 'salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUseCaseImp implements ISalvarCarroFavoritoUseCase {
  final ISalvarCarroFavoritoRepository _repository;

  SalvarCarroFavoritoUseCaseImp(this._repository);

  @override
  Future<bool> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();

    bool result = await _repository(carroEntity);
    return result;
  }
}

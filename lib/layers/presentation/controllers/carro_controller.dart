import 'package:arquitetura_flutter/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura_flutter/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:arquitetura_flutter/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';

class CarroController {
  final GetCarrosPorCorUseCaseImp _getCarrosPorCorUseCaseImp;
  final SalvarCarroFavoritoUseCaseImp _salvarCarroFavoritoUseCaseImp;

  CarroController(
    this._getCarrosPorCorUseCaseImp,
    this._salvarCarroFavoritoUseCaseImp,
  ) {
    getCarrosPorCor('vermelho');
  }

  late CarroEntity carro;

  getCarrosPorCor(String cor) {
    carro = _getCarrosPorCorUseCaseImp(cor: cor);
  }

  salvarCarroFavorito(CarroEntity carroEntity) async {
    var result = await _salvarCarroFavoritoUseCaseImp(carroEntity);
  }
}

import 'package:arquitetura_flutter/layers/data/datasources/local/get_carros_por_cor_local_datasource.dart';
import 'package:arquitetura_flutter/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:arquitetura_flutter/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:arquitetura_flutter/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:arquitetura_flutter/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:arquitetura_flutter/layers/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';

class CarroPage extends StatelessWidget {
  CarroPage({Key? key}) : super(key: key);

  final CarroController _controller = CarroController(
    GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp(),
      ),
    ),
    SalvarCarroFavoritoUseCaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Text(_controller.carro.placa),
      ),
    );
  }
}

import 'package:concessionaria_flutter/db/database.dart';
import 'package:concessionaria_flutter/entitys/veiculo_entity.dart';

import 'package:concessionaria_flutter/home/Home.dart';
import 'package:concessionaria_flutter/model/veiculo/VeiculoModel.dart';
import 'package:concessionaria_flutter/veiculo/Cadastrar_Veiculo.dart';
import 'package:concessionaria_flutter/veiculo/components/App_Bar.dart';
import 'package:concessionaria_flutter/veiculo/create/Visualizar_Veiculo.dart';
import 'package:flutter/material.dart';

class ListarVeiculo extends StatefulWidget {
  final List<VeiculoModel> veiculos = [];
  static String routeName = "/listarVeiculo";
  ListarVeiculo({Key? key,required this.db, this.veiculo}) : super(key: key);
  final AppDatabase db;
  VeiculoEntity? veiculo;
  @override
  _ListarVeiculoState createState() => _ListarVeiculoState(this.db,this.veiculo);
}

class _ListarVeiculoState extends State<ListarVeiculo> {
  final AppDatabase db;
  VeiculoEntity? veiculo;
  _ListarVeiculoState(this.db,this.veiculo);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: appBarVeiculo('Veículos', Home.routeName, context),
      ),
      floatingActionButton: FloatingActionButton(
        key: const ValueKey("botaoParaAdicionarEEditarVeiculos"),
        onPressed: () async{
          await Navigator.of(context).pushNamed(CadastrarVeiculo.routeName);
        },
        child: const Icon(Icons.add),
        backgroundColor: Color.fromRGBO(0, 184, 160, 1),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 41, 45, 50),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<List<VeiculoEntity>>(
                      future: db.veiculoRepositoryDao.getAll(),
                      builder: (context, snapshot) {
                        return snapshot.hasData? ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context,index){
                          return Card(
                            color: Color.fromARGB(10 ,205, 205, 205),
                            child: ListTile(
                              onTap: () async {
                                var result =await Navigator.push(context, 
                                MaterialPageRoute(builder: (context) {
                                  return CadastrarVeiculo(db: db, veiculo: snapshot.data![index]);
                                  }, 
                                ),
                                );
                                if(result){
                                  setState(() {});
                                } 
                                // veiculo = snapshot.data![index];
                                // await Navigator.of(context).pushNamed(CadastrarVeiculo.routeName);
                              },
                              title: Text( snapshot.data![index].modelo),
                              subtitle: Text(snapshot.data![index].ano),

                            ),
                          );
                        },
                      ): Center(child: Text('Não há Veiculos...'),
                        );
                      }
                    ),
        ),
      ),
                );
                // Column(
                //   children: [],
                // ),
     
  }
}
// Container(
//         height: MediaQuery.of(context).size.height,
//         color: Color.fromARGB(255, 41, 45, 50),
//         child: Container(
//           width: MediaQuery.of(context).size.height,
//           child: Form(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: SingleChildScrollView(
//                 child: 
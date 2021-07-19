
import 'package:concessionaria_flutter/db/database.dart';
import 'package:concessionaria_flutter/entitys/veiculo_entity.dart';
import 'package:concessionaria_flutter/veiculo/components/Veiculo_Form.dart';


import 'package:concessionaria_flutter/components/default_button.dart';
import 'package:concessionaria_flutter/model/veiculo/VeiculoModel.dart';
import 'package:concessionaria_flutter/veiculo/Listar_Veiculo.dart';
import 'package:concessionaria_flutter/veiculo/components/App_Bar.dart';
import 'package:flutter/material.dart';

import '../components/default_input.dart';

class CadastrarVeiculo extends StatefulWidget {
  // final VeiculoModel veiculo;
  static String routeName = "/cadastrarVeiculo";
  // const CadastrarVeiculo({Key key, this.veiculo}) : super(key: key);

  CadastrarVeiculo({Key? key,required this.db}) : super(key: key);
  final AppDatabase db;

  @override
  _CadastrarVeiculoState createState() => _CadastrarVeiculoState(this.db);
}

class _CadastrarVeiculoState extends State<CadastrarVeiculo>  {
  final AppDatabase db;
  TextEditingController _fabricanteControler = TextEditingController();
  TextEditingController _modeloControler = TextEditingController();
  TextEditingController _anoControler = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  _CadastrarVeiculoState(this.db);
  @override
  Widget build(BuildContext context) {
    var botaoParaCadastrar = 
    new FloatingActionButton (onPressed: () {
      // (String? value){
      //     var vl = value?.length; 
      //     if(vl !=null){
      //       if(vl < minimoDeCaracteresPermitidos){
      //         return textoDeErroDeValidacao;
      //       }
      //       }
      var _formKey1 =_formKey.currentState;
      if( _formKey1 != null){
        if(_formKey1.validate()){
          
          db.veiculoRepositoryDao.insertItem(VeiculoEntity(

            createdAt: DateTime.now().toUtc().toString(),
            updatedAt: '',
            fabricante:_fabricanteControler.text,
            modelo: _modeloControler.text,
            ano: _anoControler.text,
           
          ));
          print(_formKey.currentState?.validate().toString());
          print(_fabricanteControler.text);
          print(_modeloControler.text);
          print(_anoControler.text);
        }
      }
     

      
      
      },
      child: Icon(Icons.add),
    );
                      
    var cadastroVeiculoForm = new Container(
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 41, 45, 50),
        child: Container(
          width: MediaQuery.of(context).size.height,
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    textField(
                      'Fabricante',_fabricanteControler,1,'Digite ao menos 1 caractere',TextInputType.text
                    ),
                    textField(
                      'Modelo', _modeloControler,1,'Digite ao menos 1 caractere',TextInputType.text
                    ),
                    textField(
                      'Ano', _anoControler,4,'Digite o ano inteiro. Ex: 2021',TextInputType.number
                    ),
                    botaoParaCadastrar
                    // botaoAccordeon(),
                  ],
                ),
              ),
            ),
          ),  
        ),
      );

      return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child : appBarVeiculo('Cadastrar Veiculo', ListarVeiculo.routeName, context),
        ),
      body: cadastroVeiculoForm,
    );
  }
}

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

  CadastrarVeiculo({Key? key,required this.db, this.veiculo}) : super(key: key);
  final AppDatabase db;
  final VeiculoEntity? veiculo;

  @override
  _CadastrarVeiculoState createState() => _CadastrarVeiculoState(this.db,this.veiculo);
}

class _CadastrarVeiculoState extends State<CadastrarVeiculo>  {
  final AppDatabase db;
  final VeiculoEntity? veiculo;
  
  var _fabricanteControler;
  var _modeloControler;
  var _anoControler;
  var fabricante;
  var modelo;
  var ano;

  var _formKey = GlobalKey<FormState>();
  
  _CadastrarVeiculoState(this.db,this.veiculo);
  
  @override
  void initState() {

    _fabricanteControler = TextEditingController(text: veiculo != null ? veiculo!.fabricante: '');
    _modeloControler = TextEditingController(text: veiculo != null ? veiculo!.modelo: '');
    _anoControler = TextEditingController(text: veiculo != null ? veiculo!.ano: '');
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    var botaoParaCadastrar = 
    new FloatingActionButton (onPressed: () {
      var _formKey1 =_formKey.currentState;
      if( _formKey1 != null){
        if(_formKey1.validate()){
          var veiculo = VeiculoEntity(
            id: widget.veiculo != null ? widget.veiculo!.id : null,
            createdAt: DateTime.now().toUtc().toString(),
            fabricante:_fabricanteControler.text,
            modelo: _modeloControler.text,
            ano: _anoControler.text,
           
            );
            if(widget.veiculo != null){
              db.veiculoRepositoryDao.updateItem(veiculo);
            }else{
              db.veiculoRepositoryDao.insertItem(veiculo);
            }
          
          print(_formKey.currentState?.validate().toString());
          print(_fabricanteControler.text);
          print(_modeloControler.text);
          print(_anoControler.text);
          Navigator.pop(context,true);
        }
      }
      
     

      
      
      },
      child: Icon(Icons.add),
    );
    var botaoParaDeletar = new FloatingActionButton (onPressed: () {
        widget.db.veiculoRepositoryDao.deleteItem(widget.veiculo!);
        Navigator.pop(context,true);
      },
      child: Icon(Icons.delete),
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
                    botaoParaCadastrar,
                    SizedBox(height: 10,),
                    widget.veiculo !=null? botaoParaDeletar:Container(),
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
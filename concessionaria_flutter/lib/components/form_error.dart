import 'package:concessionaria_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.erros,
  }) : super(key: key);

  final List<String> erros;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          erros.length, (index) => formErrorText(erro: erros[index])),
    );
  }

  Row formErrorText({required String erro}) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icones/Error.svg',
          height: getProportionateScreenWidth(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(erro),
      ],
    );
  }
}

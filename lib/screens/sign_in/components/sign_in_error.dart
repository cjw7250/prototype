import 'package:flutter/material.dart';
import 'package:prototype_app/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => formErrorText(error: errors[index]),
      ),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        Icon(
          Icons.error,
          color: Colors.white,
          size: getProportionateScreenWidth(14.0),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(
          error,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class FormErrors extends StatelessWidget {
  const FormErrors({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => errorElement(errors[index]),
      ),
    );
  }

  Row errorElement(String error) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: getProportionateScreenWidth(14),
          width: getProportionateScreenWidth(14),
          child: const Icon(
            Icons.error_outline,
            color: Colors.red,
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(10)),
        Text(error),
      ],
    );
  }
}

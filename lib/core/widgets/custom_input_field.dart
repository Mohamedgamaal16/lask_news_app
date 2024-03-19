import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';

class CustomInputField extends StatefulWidget {
  const CustomInputField(
      {super.key,
      required this.labelText,
      required this.hintText,
      this.suffixIcon = false,
      this.isDense,
      this.obscureText = false,
      this.controller,
      required this.prefixIcon});

  final String labelText;
  final String hintText;
  final bool suffixIcon;
  final bool? isDense;
  final bool obscureText;
  final TextEditingController? controller;
  final Icon prefixIcon;

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: AppStyles.interStyleSemiBold18(context),
        ),
        Container(
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (textValue) {
              if (textValue == null || textValue.isEmpty) {
                return 'is required';
              } else {
                return null;
              }
            },
            obscureText: (widget.obscureText && _obscureText),
            decoration: InputDecoration(
                prefixIcon: widget.prefixIcon,
                border: removeBorder(),
                enabledBorder: removeBorder(),
                focusedBorder: removeBorder(),
                disabledBorder: removeBorder(),
                fillColor: const Color(0xFFF9FCFE),
                filled: true,
                isDense: (widget.isDense != null) ? widget.isDense : false,
                suffixIcon: widget.suffixIcon
                    ? IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.remove_red_eye
                              : Icons.visibility_off_outlined,
                          color: Colors.black54,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      )
                    : null,
                suffixIconConstraints: (widget.isDense != null)
                    ? const BoxConstraints(maxHeight: 33)
                    : null,
                hintText: widget.hintText,
                hintStyle: AppStyles.interStyleSemiBold18(context).copyWith(
                    fontWeight: FontWeight.w400, color: Colors.black26)),
            controller: widget.controller,
          ),
        )
      ],
    );
  }

  UnderlineInputBorder removeBorder() {
    return const UnderlineInputBorder(
        borderSide: BorderSide(style: BorderStyle.none));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTextfield extends StatelessWidget {
  final String label;
  FormFieldValidator<String>? validator;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final int? minLines;
  final int? maxLength;
  final int? maxLines;
  final Function(String)? onSubmit;
  final Function(String)? onChanged;
  final TextInputAction? textInputAction;

  CustomTextfield(
      {super.key,
      required this.label,
      this.validator,
      this.hintText,
      this.inputFormatters,
      this.textInputAction = TextInputAction.done,
      this.keyboardType,
      this.minLines,
      this.maxLength,
      this.maxLines,
      this.onSubmit,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(color: Colors.white, fontSize: 17.sp)),
          SizedBox(height: 1.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp)),
                contentPadding: EdgeInsets.symmetric(
                    vertical: (minLines ?? 0) > 1 ? 20 : 15, horizontal: 12),
                fillColor: Color(0xFF35215F),
                filled: true,
                hintText: hintText,
                errorStyle: TextStyle(color: Colors.red),
                hintStyle: TextStyle(color: Colors.white, fontSize: 16.sp)),
            inputFormatters: inputFormatters,
            keyboardType: keyboardType,
            minLines: minLines,
            maxLength: maxLength,
            maxLines: maxLines,
            onFieldSubmitted: onSubmit,
            onChanged: onChanged,
            validator: validator,
            style: TextStyle(color: Colors.white, fontSize: 16.sp),
          )
        ],
      ),
    );
  }
}

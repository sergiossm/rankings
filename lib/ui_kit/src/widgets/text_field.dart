import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rankings/ui_kit/ui_kit.dart';

enum TextFieldType {
  filled,
  outlined,
  underlined,
}

enum TextFieldSize {
  large(56),
  medium(48),
  small(40);

  const TextFieldSize(this.height);

  final double height;
}

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.hintText,
    this.labelText,
    this.helperText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.onEditingComplete,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.readOnly = false,
    this.enabled = true,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.inputFormatters,
    this.autofocus = false,
    this.textCapitalization = TextCapitalization.none,
    this.textAlign = TextAlign.start,
    this.type = TextFieldType.filled,
    this.size = TextFieldSize.medium,
    this.borderRadius,
    this.autovalidateMode,
    this.validator,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? errorText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onTap;
  final VoidCallback? onEditingComplete;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final bool readOnly;
  final bool enabled;
  final int maxLines;
  final int? minLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool autofocus;
  final TextCapitalization textCapitalization;
  final TextAlign textAlign;
  final TextFieldType type;
  final TextFieldSize size;
  final BorderRadius? borderRadius;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late final FocusNode _focusNode;
  bool _isFocused = false;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_handleFocusChange);
    _hasError = widget.errorText != null;
  }

  @override
  void didUpdateWidget(CustomTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.focusNode != widget.focusNode) {
      _focusNode.removeListener(_handleFocusChange);
      _focusNode = widget.focusNode ?? FocusNode();
      _focusNode.addListener(_handleFocusChange);
    }
    _hasError = widget.errorText != null;
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    _focusNode.removeListener(_handleFocusChange);
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.labelText != null) ...[
          Text(
            widget.labelText!,
            style: context.textStyle.labelMedium.copyWith(
              color: _getTextColor(context),
            ),
          ),
          AppSpacing.vertical.s2,
        ],
        SizedBox(
          height: widget.size.height,
          child: _buildTextField(context),
        ),
        if (widget.helperText != null && !_hasError) ...[
          AppSpacing.vertical.s1,
          Text(
            widget.helperText!,
            style: context.textStyle.bodySmall.copyWith(
              color: context.color.onSurface.withOpacity(0.6),
            ),
          ),
        ],
        if (widget.errorText != null) ...[
          AppSpacing.vertical.s1,
          Text(
            widget.errorText!,
            style: context.textStyle.bodySmall.copyWith(
              color: context.color.error,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildTextField(BuildContext context) {
    final defaultBorderRadius = BorderRadius.circular(AppSizes.s3);
    final borderRadius = widget.borderRadius ?? defaultBorderRadius;

    return TextFormField(
      controller: widget.controller,
      focusNode: _focusNode,
      decoration: _getInputDecoration(context, borderRadius),
      style: context.textStyle.bodyLarge.copyWith(
        color: widget.enabled
            ? context.color.onSurface
            : context.color.onSurface.withOpacity(0.38),
      ),
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmitted,
      onTap: widget.onTap,
      onEditingComplete: widget.onEditingComplete,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      obscureText: widget.obscureText,
      readOnly: widget.readOnly,
      enabled: widget.enabled,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      maxLength: widget.maxLength,
      inputFormatters: widget.inputFormatters,
      autofocus: widget.autofocus,
      textCapitalization: widget.textCapitalization,
      textAlign: widget.textAlign,
      autovalidateMode: widget.autovalidateMode,
      validator: widget.validator,
      cursorColor: context.color.primary,
    );
  }

  InputDecoration _getInputDecoration(
    BuildContext context,
    BorderRadius borderRadius,
  ) {
    return switch (widget.type) {
      TextFieldType.filled => InputDecoration(
          filled: true,
          fillColor: _getFillColor(context),
          hintText: widget.hintText,
          hintStyle: context.textStyle.bodyLarge.copyWith(
            color: context.color.onSurface.withOpacity(0.38),
          ),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSizes.s4,
            vertical: AppSizes.s3,
          ),
          border: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(
              color: context.color.primary,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(
              color: context.color.error,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(
              color: context.color.error,
              width: 2,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide.none,
          ),
          counterText: '',
        ),
      TextFieldType.outlined => InputDecoration(
          filled: false,
          hintText: widget.hintText,
          hintStyle: context.textStyle.bodyLarge.copyWith(
            color: context.color.onSurface.withOpacity(0.38),
          ),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSizes.s4,
            vertical: AppSizes.s3,
          ),
          border: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(
              color: context.color.outline,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(
              color: context.color.outline,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(
              color: context.color.primary,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(
              color: context.color.error,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(
              color: context.color.error,
              width: 2,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(
              color: context.color.outline.withOpacity(0.38),
            ),
          ),
          counterText: '',
        ),
      TextFieldType.underlined => InputDecoration(
          filled: false,
          hintText: widget.hintText,
          hintStyle: context.textStyle.bodyLarge.copyWith(
            color: context.color.onSurface.withOpacity(0.38),
          ),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSizes.s4,
            vertical: AppSizes.s3,
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.color.outline.withOpacity(.45),
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.color.outline.withOpacity(.45),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.color.primary,
              width: 2,
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.color.error,
            ),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.color.error,
              width: 2,
            ),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.color.outline.withOpacity(0.38),
            ),
          ),
          counterText: '',
        ),
    };
  }

  Color _getFillColor(BuildContext context) {
    if (!widget.enabled) {
      return context.color.surfaceVariant.withOpacity(0.38);
    }
    if (_hasError) {
      return context.color.error.withOpacity(0.12);
    }
    if (_isFocused) {
      return context.color.surfaceVariant.withOpacity(0.16);
    }
    return context.color.surfaceVariant.withOpacity(0.08);
  }

  Color _getTextColor(BuildContext context) {
    if (!widget.enabled) {
      return context.color.onSurface.withOpacity(0.38);
    }
    if (_hasError) {
      return context.color.error;
    }
    if (_isFocused) {
      return context.color.primary;
    }
    return context.color.onSurface;
  }
}

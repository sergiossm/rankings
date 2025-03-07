import 'package:flutter/material.dart';
import 'package:rankings/ui_kit/ui_kit.dart';

enum ButtonType {
  filled,
  filledVariant,
  tonal,
  text,
  textDestructive,
  iconFilled,
  iconTonal,
}

enum IconPosition { left, right, top }

enum ButtonSize {
  large(48),
  medium(40),
  small(32);

  const ButtonSize(this.height);

  final double height;
}

class Button extends StatefulWidget {
  const Button({
    this.text,
    this.onPressed,
    this.type = ButtonType.filled,
    this.size = ButtonSize.large,
    this.iconPosition = IconPosition.left,
    this.isLoading = false,
    this.expand = false,
    this.borderRadius,
    this.icon,
    super.key,
  });

  final String? text;
  final Future<void> Function()? onPressed;
  final ButtonType type;
  final IconPosition iconPosition;
  final ButtonSize size;
  final bool isLoading;
  final bool expand;
  final Widget? icon;
  final BorderRadius? borderRadius;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    /// Show loader when dev pass isLoading to true OR there is operation processing on button tap.
    final showLoader = widget.isLoading || _isLoading;

    final isDisabled = widget.onPressed == null;
    final onPressedFunc =
        isDisabled
            ? null
            : () async {
              if (!_isLoading) {
                try {
                  setState(() => _isLoading = true);
                  await widget.onPressed?.call();
                } finally {
                  if (mounted) {
                    setState(() => _isLoading = false);
                  }
                }
              }
            };

    final text = Text(
      widget.text ?? '',
      textAlign: TextAlign.center,
      maxLines: 1,
    );
    Widget child = text;

    if (showLoader) {
      child = ColorFiltered(
        colorFilter: ColorFilter.mode(
          (widget.type == ButtonType.filled)
              ? context.color.onPrimary
              : context.color.primary,
          BlendMode.srcIn,
        ),
        child: const LoadingIndicator(size: AppSizes.s5, strokeWidth: 1.5),
      );
    } else if ((widget.type == ButtonType.iconFilled ||
            widget.type == ButtonType.iconTonal) &&
        widget.icon != null) {
      // Special case for icon buttons - use only the icon without text
      child = widget.icon!;
    } else if (widget.icon != null &&
        widget.iconPosition == IconPosition.right) {
      child = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppSpacing.horizontal.s3,
          text,
          AppSpacing.horizontal.s2,
          widget.icon!,
          AppSpacing.horizontal.s3,
        ],
      );
    } else if (widget.icon != null &&
        widget.iconPosition == IconPosition.left) {
      child = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppSpacing.horizontal.s3,
          widget.icon!,
          AppSpacing.horizontal.s3,
          text,
          AppSpacing.horizontal.s3,
        ],
      );
    } else if (widget.icon != null && widget.iconPosition == IconPosition.top) {
      child = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppSpacing.vertical.s5,
          widget.icon!,
          AppSpacing.vertical.s3,
          text,
          AppSpacing.vertical.s5,
        ],
      );
    }

    // For icon-filled buttons, we need a different approach to prevent expansion
    if ((widget.type == ButtonType.iconFilled ||
            widget.type == ButtonType.iconTonal) &&
        widget.icon != null &&
        !widget.expand) {
      // Use SizedBox.square for a more direct approach
      return SizedBox.square(
        dimension: widget.size.height,
        child: _CustomFilledButton(
          type: widget.type,
          onPressed: onPressedFunc,
          removePadding: true, // Always remove padding for icon buttons
          borderRadius: widget.borderRadius,
          child: Center(child: child), // Center the icon
        ),
      );
    }

    return SizedBox(
      height:
          widget.iconPosition == IconPosition.top ? null : widget.size.height,
      width: widget.expand ? double.infinity : null,
      child: _CustomFilledButton(
        type: widget.type,
        onPressed: onPressedFunc,
        removePadding: widget.size == ButtonSize.small,
        borderRadius: widget.borderRadius,
        child: child,
      ),
    );
  }
}

class _CustomFilledButton extends StatelessWidget {
  const _CustomFilledButton({
    required this.type,
    required this.child,
    this.onPressed,
    this.borderRadius,
    this.removePadding = false,
  });

  final ButtonType type;
  final Future<void> Function()? onPressed;
  final Widget child;
  final bool removePadding;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textStyle.titleSmall;
    const horizontalPadding = EdgeInsets.symmetric(horizontal: AppSizes.s3);

    return switch (type) {
      ButtonType.filled => FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape:
              borderRadius == null
                  ? null
                  : WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
                    return RoundedRectangleBorder(borderRadius: borderRadius!);
                  }),
          overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
            return context.color.primary.withValues(alpha: .05);
          }),
          padding:
              removePadding
                  ? const WidgetStatePropertyAll(horizontalPadding)
                  : null,
          textStyle: WidgetStatePropertyAll(textStyle),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.disabled)) {
              return context.color.secondary.withValues(alpha: .5);
            }
            return context.color.secondary;
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.disabled)) {
              return context.color.primary.withValues(alpha: .5);
            }
            return context.color.primary;
          }),
        ),
        child: child,
      ),
      ButtonType.filledVariant => FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape:
              borderRadius == null
                  ? null
                  : WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
                    return RoundedRectangleBorder(borderRadius: borderRadius!);
                  }),
          overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
            return context.color.onSecondary.withValues(alpha: .05);
          }),
          padding:
              removePadding
                  ? const WidgetStatePropertyAll(horizontalPadding)
                  : null,
          textStyle: WidgetStatePropertyAll(textStyle),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            return context.color.secondary;
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            return context.color.onSecondary;
          }),
        ),
        child: child,
      ),
      ButtonType.tonal => FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape:
              borderRadius == null
                  ? null
                  : WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
                    return RoundedRectangleBorder(borderRadius: borderRadius!);
                  }),
          overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
            return context.color.onSecondary.withValues(alpha: .05);
          }),
          padding:
              removePadding
                  ? const WidgetStatePropertyAll(horizontalPadding)
                  : null,
          textStyle: WidgetStatePropertyAll(textStyle),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.disabled)) {
              return context.color.onSecondary.withValues(alpha: .1);
            }
            return context.color.onSecondary.withValues(alpha: .05);
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.disabled)) {
              return context.color.onSecondary.withValues(alpha: .2);
            }
            return context.color.onSecondary.withValues(alpha: .87);
          }),
        ),
        child: child,
      ),
      ButtonType.text => TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape:
              borderRadius == null
                  ? null
                  : WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
                    return RoundedRectangleBorder(borderRadius: borderRadius!);
                  }),
          overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
            return context.color.secondary.withValues(alpha: .05);
          }),
          padding:
              removePadding
                  ? const WidgetStatePropertyAll(horizontalPadding)
                  : null,
          textStyle: WidgetStatePropertyAll(textStyle),
          foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.disabled)) {
              return context.color.secondary.withValues(alpha: .2);
            }
            return context.color.secondary.withValues(alpha: .87);
          }),
        ),
        child: child,
      ),
      ButtonType.textDestructive => TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape:
              borderRadius == null
                  ? null
                  : WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
                    return RoundedRectangleBorder(borderRadius: borderRadius!);
                  }),
          overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
            return context.color.error.withValues(alpha: .05);
          }),
          padding:
              removePadding
                  ? const WidgetStatePropertyAll(horizontalPadding)
                  : null,
          textStyle: WidgetStatePropertyAll(textStyle),
          foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.disabled)) {
              return context.color.error.withValues(alpha: .2);
            }
            return context.color.error.withValues(alpha: .87);
          }),
        ),
        child: child,
      ),
      ButtonType.iconFilled => FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          minimumSize: const WidgetStatePropertyAll(Size.zero),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape:
              borderRadius == null
                  ? null
                  : WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
                    return RoundedRectangleBorder(borderRadius: borderRadius!);
                  }),
          overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
            return context.color.secondary.withValues(alpha: .05);
          }),
          padding: const WidgetStatePropertyAll(EdgeInsets.zero),
          textStyle: WidgetStatePropertyAll(textStyle),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.disabled)) {
              return context.color.primary.withValues(alpha: .5);
            }
            return context.color.primary;
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.disabled)) {
              return context.color.primary.withValues(alpha: .5);
            }
            return context.color.primary;
          }),
        ),
        child: child,
      ),
      ButtonType.iconTonal => FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          minimumSize: const WidgetStatePropertyAll(Size.zero),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape:
              borderRadius == null
                  ? null
                  : WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
                    return RoundedRectangleBorder(borderRadius: borderRadius!);
                  }),
          overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
            return context.color.onSecondary.withValues(alpha: .05);
          }),
          padding: const WidgetStatePropertyAll(EdgeInsets.zero),
          textStyle: WidgetStatePropertyAll(textStyle),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.disabled)) {
              return context.color.onSecondary.withValues(alpha: .1);
            }
            return context.color.onSecondary.withValues(alpha: .05);
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.disabled)) {
              return context.color.onSecondary.withValues(alpha: .2);
            }
            return context.color.onSecondary.withValues(alpha: .87);
          }),
        ),
        child: child,
      ),
    };
  }
}

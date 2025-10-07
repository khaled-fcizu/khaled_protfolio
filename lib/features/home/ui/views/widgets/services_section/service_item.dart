// عنصر الخدمة (كارت)
import 'package:flutter/material.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/features/home/data/models/service_model.dart';

class ServiceItem extends StatefulWidget {
  const ServiceItem({super.key, required this.serviceModel});
  final ServiceModel serviceModel;

  @override
  State<ServiceItem> createState() => _ServiceItemState();
}

class _ServiceItemState extends State<ServiceItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.blueGrey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: _isHovered ? Colors.blueAccent : Colors.transparent,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(widget.serviceModel.icon, color: AppColors.primary, size: 40),
            const SizedBox(height: 20),
            Text(widget.serviceModel.title, style: TextStyles.font20WhiteBold),
            const SizedBox(height: 10),
            Text(
              widget.serviceModel.description,
              style: TextStyles.font16WhiteRegular.copyWith(
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

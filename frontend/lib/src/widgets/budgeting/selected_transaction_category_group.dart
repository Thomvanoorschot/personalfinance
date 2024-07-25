import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/src/providers/categorize_transaction.dart';
import 'package:haptic_feedback/haptic_feedback.dart';

class SelectedTransactionCategoryGroup extends ConsumerWidget {
  const SelectedTransactionCategoryGroup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryImageSize = MediaQuery.sizeOf(context).width * 0.17;
    final categorizeTransaction = ref.watch(categorizeTransactionProvider);

    final selectedCategoryGroup = categorizeTransaction.value!.selectedTransactionCategoryGroup!;
    final selectedCategory = categorizeTransaction.value!.selectedTransactionCategory;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              ref.read(categorizeTransactionProvider.notifier).selectTransactionCategoryGroup(null);
              Haptics.vibrate(HapticsType.selection);
            },
            child: Row(
              children: [
                Expanded(
                  child: SvgPicture.asset(
                    "assets/${selectedCategoryGroup.slug}/${selectedCategoryGroup.slug}.svg",
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                          selectedCategoryGroup.label,
                        ),
                      ),
                      if (selectedCategory != null)
                        Flexible(
                          child: Text(
                            style: const TextStyle(fontStyle: FontStyle.italic),
                            textAlign: TextAlign.center,
                            selectedCategory.label,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Wrap(
            direction: Axis.horizontal,
            runSpacing: 10,
            spacing: 5,
            runAlignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.start,
            // alignment: WrapAlignment.spaceBetween,
            children: List.generate(
              selectedCategoryGroup.categories.length,
              (categoryIndex) {
                return GestureDetector(
                  onTap: () {
                    ref
                        .read(categorizeTransactionProvider.notifier)
                        .selectTransactionCategory(selectedCategoryGroup.categories[categoryIndex]);
                    Haptics.vibrate(HapticsType.selection);
                  },
                  child: Container(
                    decoration: selectedCategory?.id == selectedCategoryGroup.categories[categoryIndex].id
                        ? BoxDecoration(
                            color: Theme.of(context).colorScheme.secondaryContainer, // Background color of the container
                            borderRadius: BorderRadius.circular(12), // Rounded edges
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(2, 2), // Shadow effect
                              ),
                            ],
                          )
                        : null,
                    child: SvgPicture.asset(
                      width: categoryImageSize,
                      height: categoryImageSize,
                      "assets/${selectedCategoryGroup.slug}/${selectedCategoryGroup.categories[categoryIndex].slug}.svg",
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/src/providers/categorize_transaction.dart';
import 'package:frontend/src/utils/size_config.dart';
import 'package:haptic_feedback/haptic_feedback.dart';

class SelectedTransactionCategoryGroup extends ConsumerWidget {
  const SelectedTransactionCategoryGroup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategorySize = MediaQuery.sizeOf(context).width * 0.30;
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
                    height: selectedCategorySize,
                    width: selectedCategorySize,
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
                          selectedCategoryGroup.label.replaceAll(r'\n', '\n'),
                        ),
                      ),
                      if (selectedCategory != null)
                        Flexible(
                          child: Text(
                            style: const TextStyle(fontStyle: FontStyle.italic),
                            textAlign: TextAlign.center,
                            selectedCategory.label.replaceAll(r'\n', '\n'),
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
            runAlignment: WrapAlignment.spaceAround,
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
                    height: SizeConfig.blockSizeVertical * 8,
                    width: SizeConfig.blockSizeVertical * 8,
                    decoration: selectedCategory?.id == selectedCategoryGroup.categories[categoryIndex].id
                        ? BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              ),
                            ],
                          )
                        : null,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 2,
                          child: SvgPicture.asset(
                            width: categoryImageSize,
                            height: categoryImageSize,
                            "assets/${selectedCategoryGroup.slug}/${selectedCategoryGroup.categories[categoryIndex].slug}.svg",
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            child: Text(
                              selectedCategoryGroup.categories[categoryIndex].label.replaceAll(r'\n', '\n'),
                              style: selectedCategory?.id == selectedCategoryGroup.categories[categoryIndex].id
                                  ? Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(color: Theme.of(context).colorScheme.onPrimary)
                                  : Theme.of(context).textTheme.labelSmall,
                              textAlign: TextAlign.center,
                            )),
                      ],
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

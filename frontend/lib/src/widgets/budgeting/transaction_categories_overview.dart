import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/src/providers/categorize_transaction.dart';
import 'package:frontend/src/providers/transaction_category_groups.dart';
import 'package:frontend/src/utils/size_config.dart';
import 'package:frontend/src/widgets/budgeting/selected_transaction_category_group.dart';
import 'package:haptic_feedback/haptic_feedback.dart';

class TransactionCategoriesOverview extends ConsumerWidget {
  const TransactionCategoriesOverview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionCategories = ref.watch(transactionCategoryGroupsProvider);
    final categorizeTransaction = ref.watch(categorizeTransactionProvider);

    Widget getSelectedCategoryGroup() {
      double width = MediaQuery.sizeOf(context).width;
      final selectedTransactionCategoryGroup = categorizeTransaction.value?.selectedTransactionCategoryGroup;
      final iconSize = selectedTransactionCategoryGroup != null ? width * 0.8 : width * 0;
      return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: iconSize,
        height: iconSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: Theme.of(context).colorScheme.primary),
        ),
        child: selectedTransactionCategoryGroup != null ? const SelectedTransactionCategoryGroup() : const SizedBox.shrink(),
      );
    }

    return transactionCategories.when(
      // TODO Show shimmer
      loading: () => const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (err, stack) => Text('error: $err'),
      data: (resp) {
        return Column(
          children: [
            getSelectedCategoryGroup(),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceBetween,
              children: List.generate(
                resp.groups.length,
                (groupIndex) {
                  return GestureDetector(
                    onTap: () {
                      ref.read(categorizeTransactionProvider.notifier).selectTransactionCategoryGroup(
                            resp.groups[groupIndex],
                          );
                      ref.read(transactionCategoryGroupsProvider.notifier).moveToFirst(groupIndex);
                      Haptics.vibrate(HapticsType.selection);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          fit: FlexFit.loose,
                          flex: 2,
                          child: SvgPicture.asset(
                            height: SizeConfig.safeBlockHorizontal * 18,
                            "assets/${resp.groups[groupIndex].slug}/${resp.groups[groupIndex].slug}.svg",
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Text(
                            resp.groups[groupIndex].label.replaceAll(r'\n', '\n'),
                            style: Theme.of(context).textTheme.labelSmall,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

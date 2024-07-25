import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/src/clients/budgeting_client.dart';
import 'package:frontend/src/providers/categorize_transaction.dart';
import 'package:frontend/src/providers/transaction_category_groups.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:frontend/src/widgets/budgeting/category_icon.dart';
import 'package:frontend/src/widgets/budgeting/selected_transaction_category_group.dart';
import 'package:frontend/src/widgets/card/custom_card.dart';
import 'package:go_router/go_router.dart';
import 'package:haptic_feedback/haptic_feedback.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TransactionCategoriesOverview extends ConsumerWidget {
  const TransactionCategoriesOverview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionCategories = ref.watch(transactionCategoryGroupsProvider);
    final categorizeTransaction = ref.watch(categorizeTransactionProvider);

    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.primaryContainer,
        child: transactionCategories.when(
          // TODO Show shimmer
          loading: () => const SizedBox(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          error: (err, stack) => Text('error: $err'),
          data: (resp) {
            return Wrap(
              direction: Axis.horizontal,
              runSpacing: 10,
              spacing: 5,
              // runAlignment: WrapAlignment.spaceBetween,
              // crossAxisAlignment: WrapCrossAlignment.start,
              alignment: WrapAlignment.spaceBetween,
              children: List.generate(
                resp.groups.length,
                (groupIndex) {
                  final categoryGroupIsSelected =
                      resp.groups[groupIndex].id == categorizeTransaction.value?.selectedTransactionCategoryGroup?.id;
                  final iconSize = categoryGroupIsSelected ? width * 0.8 : width * 0.17;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: iconSize,
                    height: iconSize,
                    child: categoryGroupIsSelected
                        ? const SelectedTransactionCategoryGroup()
                        : GestureDetector(
                            onTap: () {
                              ref.read(categorizeTransactionProvider.notifier).selectTransactionCategoryGroup(
                                    resp.groups[groupIndex],
                                  );
                              ref.read(transactionCategoryGroupsProvider.notifier).moveToFirst(groupIndex);
                              Haptics.vibrate(HapticsType.selection);
                            },
                            child: SvgPicture.asset(
                              "assets/${resp.groups[groupIndex].slug}/${resp.groups[groupIndex].slug}.svg",
                            ),
                          ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

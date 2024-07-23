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
import 'package:frontend/src/widgets/card/custom_card.dart';
import 'package:go_router/go_router.dart';
import 'package:haptic_feedback/haptic_feedback.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TransactionCategoriesOverview extends ConsumerStatefulWidget {
  const TransactionCategoriesOverview({super.key});

  @override
  TransactionCategoriesOverviewState createState() =>
      TransactionCategoriesOverviewState();
}

final Map<String, Color> colorMap = {
  '5bab3693-9a7a-4064-9275-e1534c54b2fe': Colors.red,
  '5c523400-719a-4430-8d04-ef2c84e563e5': Colors.green,
  'f570e532-d1d0-4ca2-b3f8-1f866d4811d0': Colors.blue,
  '3d9c336d-7c55-4223-9a35-817e065cdf87': Colors.orange,
  '70986bf8-b399-4d01-86b4-4ad4c4c43e80': Colors.purple,
  'e809d284-842a-4be6-87d0-770dc315f13f': Colors.yellow,
  '788c88bb-0805-4c90-aeb7-b1e6937edaca': Colors.brown,
  '1b57c744-f91e-4684-9fa0-589d74625131': Colors.cyan,
  '4ce7076a-22f5-4efb-81fc-e4ddda5b32b6': Colors.black,
};

class TransactionCategoriesOverviewState
    extends ConsumerState<TransactionCategoriesOverview> {
  List<bool> expandableState = List.generate(9, (index) => false);
  bool isExpanded = false;
  String selectedCategoryLabel = "";
  @override
  Widget build(BuildContext context) {
    final transactionCategories = ref.watch(transactionCategoryGroupsProvider);

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
                  return GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          isExpanded = !isExpanded;
                          if (groupIndex != 0 && !isExpanded) {
                            isExpanded = !isExpanded;
                          }
                          selectedCategoryLabel = "";
                          ref
                              .read(transactionCategoryGroupsProvider.notifier)
                              .moveToFirst(groupIndex);
                        },
                      );
                      Haptics.vibrate(HapticsType.selection);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      // color: colorMap[resp.categories[index].id],
                      width:
                          groupIndex == 0 && isExpanded ? width * 0.8 : width * 0.17,
                      height:
                          groupIndex == 0 && isExpanded ? width * 0.8 : width * 0.17,
                      child: isExpanded && groupIndex == 0
                          ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: SvgPicture.asset(
                                          "assets/${resp.groups[groupIndex].slug}/${resp.groups[groupIndex].slug}.svg",
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(resp.groups[groupIndex].label),
                                            Text((selectedCategoryLabel)),
                                          ],
                                        ),
                                      ),
                                    ],
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
                                      resp.groups[groupIndex].categories.length,
                                      (categoryIndex) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(
                                                  () {
                                                selectedCategoryLabel = resp.groups[0].categories[categoryIndex].label;
                                              },
                                            );
                                            Haptics.vibrate(HapticsType.selection);
                                          },
                                          child: SvgPicture.asset(
                                            height: width * 0.17,
                                            width: width * 0.17,
                                            "assets/${resp.groups[0].slug}/${resp.groups[0].categories[categoryIndex].slug}.svg",
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : SvgPicture.asset(
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
// TODO Other pet care && car-payments && homeowners-renters-insurance
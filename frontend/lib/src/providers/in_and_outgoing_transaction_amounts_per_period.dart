import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/models/budgeting/in_and_outgoing_transaction_amounts_per_period_model.dart';
import 'package:frontend/src/models/generic/period_selector_model.dart';
import 'package:frontend/src/providers/period.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

part 'in_and_outgoing_transaction_amounts_per_period.g.dart';

@riverpod
class InAndOutgoingTransactionAmountsPerPeriod extends _$InAndOutgoingTransactionAmountsPerPeriod {
  @override
  FutureOr<InAndOutgoingTransactionAmountsPerPeriodModel> build() async {
    ref.listen<PeriodSelectorModel>(periodProvider, (PeriodSelectorModel? prevModel, PeriodSelectorModel newModel) async {
      if (prevModel?.selectedIndex != newModel.selectedIndex) {
        await update(
          (data) async {
            final inAndOutgoingTransactionAmountsPerPeriod =
                await ref.read(budgetingServiceProvider).getInAndOutgoingTransactionAmountsPerPeriod(
                      GetInAndOutgoingTransactionAmountsPerPeriodRequest(
                        period: GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period.valueOf(newModel.selectedIndex),
                        limit: $fixnum.Int64(newModel.limit),
                        offset: $fixnum.Int64(newModel.offset),
                      ),
                    );
            return InAndOutgoingTransactionAmountsPerPeriodModel(
              inAndOutgoingTransactionAmountsPerPeriodModel: inAndOutgoingTransactionAmountsPerPeriod,
              currentLimit: newModel.limit,
              currentOffset: newModel.offset,
            );
          },
        );
      }
    });
    return getInAndOutgoingTransactionAmountsPerPeriod(
      GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period.month,
      8,
      0,
    );
  }

  Future<InAndOutgoingTransactionAmountsPerPeriodModel> getInAndOutgoingTransactionAmountsPerPeriod(
    GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period period,
    int limit,
    int offset,
  ) async {
    final inAndOutgoingTransactionAmountsPerPeriod =
        await ref.read(budgetingServiceProvider).getInAndOutgoingTransactionAmountsPerPeriod(
              GetInAndOutgoingTransactionAmountsPerPeriodRequest(
                period: period,
                limit: $fixnum.Int64(limit),
                offset: $fixnum.Int64(offset),
              ),
            );
    return InAndOutgoingTransactionAmountsPerPeriodModel(
      inAndOutgoingTransactionAmountsPerPeriodModel: inAndOutgoingTransactionAmountsPerPeriod,
      currentLimit: 8,
      currentOffset: 0,
    );
  }

  Future updateData(
    bool isLeftDrag,
  ) async {
    await update(
      (data) async {
        final newOffset = isLeftDrag ? data.currentOffset + 1 : data.currentOffset - 1;
        if (newOffset < 0) {
          return data;
        }
        final updatedValues = await getInAndOutgoingTransactionAmountsPerPeriod(
          GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period.valueOf(ref.read(periodProvider).selectedIndex)!,
          data.currentLimit,
          newOffset,
        );
        if(updatedValues.inAndOutgoingTransactionAmountsPerPeriodModel.periods.isEmpty){
          return data;
        }
        return data.copyWith(
          inAndOutgoingTransactionAmountsPerPeriodModel: updatedValues.inAndOutgoingTransactionAmountsPerPeriodModel,
          currentOffset: newOffset,
        );
      },
    );
  }
}


import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/models/budgeting/categorized_transactions_model.dart';
import 'package:frontend/src/models/generic/time_range_model.dart';
import 'package:frontend/src/providers/time_range.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categorized_transactions.g.dart';

@riverpod
class CategorizedTransactions extends _$CategorizedTransactions {
  @override
  FutureOr<CategorizedTransactionsModel> build() async {
    ref.listen<TimeRangeModel>(timeRangeProvider, (TimeRangeModel? prevModel, TimeRangeModel newModel) async {
      if (prevModel?.selectedIndex != newModel.selectedIndex ||
          prevModel?.start != newModel.start ||
          prevModel?.end != newModel.end) {
        await update((data) async {
          final categorizedTransactions =
              await ref.read(budgetingServiceProvider).getCategorizedTransactionResults(GetCategorizedTransactionResultsRequest(
                    start: dateTimeToProtoTimestamp(newModel.start),
                    end: dateTimeToProtoTimestamp(newModel.end),
                  ));
          return CategorizedTransactionsModel(categorizedTransactions: categorizedTransactions);
        });
      }
    });
    return getCategorizedTransactions();
  }

  Future<CategorizedTransactionsModel> getCategorizedTransactions() async {
    final timeRange = ref.read(timeRangeProvider);
    final categorizedTransactions =
        await ref.read(budgetingServiceProvider).getCategorizedTransactionResults(GetCategorizedTransactionResultsRequest(
              start: dateTimeToProtoTimestamp(timeRange.start),
              end: dateTimeToProtoTimestamp(timeRange.end),
            ));
    return CategorizedTransactionsModel(categorizedTransactions: categorizedTransactions);
  }

  void selectCategoryGroup(GetCategorizedTransactionResultResponse? categoryGroup) {
    update((data) {
      if (data.selectedTransactionCategoryGroupSlug != categoryGroup?.slug) {
        return data.copyWith(
            selectedTransactionCategoryGroup: categoryGroup, selectedTransactionCategoryGroupSlug: categoryGroup?.slug);
      }
      return data;
    });
  }

  final Map<String, int> categoryGroupColorMap = Map.from({
    'transportation': 0xFFFFA07A,           // Light Salmon
    'health-wellness': 0xFF98FB98,          // Pale Green
    'food': 0xFFFFB6C1,                     // Light Pink
    'pet-care': 0xFFADD8E6,                 // Light Blue
    'childcare-education': 0xFFDDA0DD,      // Plum
    'debt-repayment': 0xFFDB7093,           // Light Salmon
    'education': 0xFF98FB98,                // Pale Green
    'insurance': 0xFFFFD700,                // Gold
    'personal-care': 0xFF87CEFA,            // Light Sky Blue
    'income': 0xFFDA70D6,                   // Orchid
    'entertainment-leisure': 0xFF90EE90,    // Light Green
    'saving-and-investments': 0xFFFFC0CB,   // Pink
    'housing': 0xFFAFEEEE,                  // Pale Turquoise
    'unknown_category': 0xFFB0E0E6,         // Powder Blue
  });

  final Map<String, int> categoryColorMap = Map.from({
    'unknown_category': 0xFFB0E0E6,         // Powder Blue
    'dining-out': 0xFFFFE4E1,           // Light pastel pink
    'bonus-income': 0xFFE6E6FA,         // Lavender
    'digital-subscriptions': 0xFFFFF0F5,// Light pastel rose
    'health-insurance': 0xFFF0FFF0,     // Honeydew
    'vision-care': 0xFFFFEFD5,          // Papaya whip
    'freelance-contract-work': 0xFFFFDAB9,// Peach puff
    'internet-cable': 0xFFE0FFFF,       // Light cyan
    'other-personal-care': 0xFFFFF5EE,  // Seashell
    'babysitting': 0xFFFFFACD,          // Lemon chiffon
    'auto-insurance': 0xFFF5F5DC,       // Beige
    'online-courses': 0xFFF0FFFF,       // Azure
    'student-loans': 0xFFFFFAF0,        // Floral white
    'veterinary-bills': 0xFFF0E68C,     // Khaki
    'other-insurance': 0xFFFAFAD2,      // Light goldenrod yellow
    'rental-income': 0xFFE6E6FA,        // Lavender
    'homeowners-renters-insurance': 0xFFB0E0E6,// Powder blue
    'other-transportation': 0xFFFFEBCD, // Blanched almond
    'medical-bills': 0xFF98FB98,        // Pale green
    'utilities': 0xFFFFD700,            // Gold
    'hobbies': 0xFFD8BFD8,              // Thistle
    'books-supplies': 0xFFAFEEEE,       // Pale turquoise
    'ride-sharing-services': 0xFFFF69B4,// Hot pink
    'housing-maintenance-repairs': 0xFFDB7093,// Pale violet red
    'parking-fees': 0xFFFFE4B5,         // Moccasin
    'car-payments': 0xFFFFA07A,         // Light salmon
    'concerts-events': 0xFFE0FFFF,      // Light cyan
    'other-pet-care': 0xFFF5FFFA,       // Mint cream
    'skincare-beauty-products': 0xFFFFF0F5,// Lavender blush
    'personal-loans': 0xFFF0FFF0,       // Honeydew
    'extracurricular-activities': 0xFFFFEFD5,// Papaya whip
    'property-taxes': 0xFFFFDAB9,       // Peach puff
    'travel-vacations': 0xFFF5F5DC,     // Beige
    'medication': 0xFFF0FFFF,           // Azure
    'groceries': 0xFFFFFAF0,            // Floral white
    'coffee-shop': 0xFFF0E68C,          // Khaki
    'travel-insurance': 0xFFFAFAD2,     // Light goldenrod yellow
    'dental-care': 0xFFE6E6FA,          // Lavender
    'grooming': 0xFFB0E0E6,             // Powder blue
    'shoes-accessories': 0xFFFFEBCD,    // Blanched almond
    'home-improvements': 0xFF98FB98,    // Pale green
    'other-savings': 0xFFFFD700,        // Gold
    'childcare-extracurricular-activities': 0xFFD8BFD8,// Thistle
    'life-insurance': 0xFFAFEEEE,       // Pale turquoise
    'meal-delivery-services': 0xFFFF69B4,// Hot pink
    'other-entertainment-leisure': 0xFFDB7093,// Pale violet red
    'toys-accessories': 0xFFFFE4B5,     // Moccasin
    'emergency-fund': 0xFFFFA07A,       // Light salmon
    'investment-income': 0xFFE0FFFF,    // Light cyan
    'transportation-maintenance-repairs': 0xFFF5FFFA,// Mint cream
    'gym': 0xFFFFF0F5,                  // Lavender blush
    'books-magazines': 0xFFF0FFF0,      // Honeydew
    'credit-card-payments': 0xFFFFEFD5, // Papaya whip
    'school-supplies': 0xFFFFDAB9,      // Peach puff
    'salary': 0xFFF5F5DC,               // Beige
    'education-savings': 0xFFF0FFFF,    // Azure
    'other-income': 0xFFFFFAF0,         // Floral white
    'clothing-apparel': 0xFFF0E68C,     // Khaki
    'gifts': 0xFFFAFAD2,                // Light goldenrod yellow
    'haircuts-salon-services': 0xFFE6E6FA,// Lavender
    'fuel-gas': 0xFFB0E0E6,             // Powder blue
    'other-health-wellness': 0xFFFFEBCD,// Blanched almond
    'daycare-preschool': 0xFF98FB98,    // Pale green
    'pet-food': 0xFFFFD700,             // Gold
    'other-housing': 0xFFD8BFD8,        // Thistle
    'retirement': 0xFFAFEEEE,           // Pale turquoise
    'public-transportation': 0xFFFF69B4,// Hot pink
    'fast-food': 0xFFDB7093,            // Pale violet red
    'rent-mortgage': 0xFFFFE4B5,        // Moccasin
    'movies-tv-streaming': 0xFFFFA07A,  // Light salmon
    'other-debt-repayment': 0xFFE0FFFF, // Light cyan
    'other-food': 0xFFF5FFFA,           // Mint cream
    'other-education': 0xFFFFF0F5,      // Lavender blush
    'investments': 0xFFF0FFF0,          // Honeydew
    'tuition-fees': 0xFFFFEFD5,         // Papaya whip
    'other-childcare-education': 0xFFFFDAB9,// Peach puff
    'pet-insurance': 0xFFF5F5DC,        // Beige
  });

}


import 'dart:ui';

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

  final Map<String, Color> categoryGroupColorMap = Map.from({
    'transportation': const Color(0xFF8F9779),           // Artichoke Green
    'health-wellness': const Color(0xFFA7C957),          // Pistachio
    'food': const Color(0xFFB7B868),                     // Sage Green
    'pet-care': const Color(0xFFA9845B),                 // Deep Caramel
    'childcare-education': const Color(0xFFBB7E5D),      // Copper
    'debt-repayment': const Color(0xFFD5C7BC),           // Pale Beige
    'education': const Color(0xFFA68A64),                // Taupe
    'insurance': const Color(0xFF4E5D4E),                // Forest Green
    'personal-care': const Color(0xFFF4A259),            // Sandy Brown
    'income': const Color(0xFFB2836D),                   // Camel
    'entertainment-leisure': const Color(0xFF817F75),    // Granite Gray
    'saving-and-investments': const Color(0xFFF1E3D3),   // Linen
    'housing': const Color(0xFF6C584C),                  // Coffee Brown
    'unknown_category': const Color(0xFF3A403D),         // Charcoal Green
    'repayments': const Color(0xFFC9ADA1),               // Desert Sand
  });

  final Map<String, Color> categoryColorMap = Map.from({
    'unknown_category': const Color(0xFFECEBE4),         // Pale Gray
    'dining-out': const Color(0xFF86756B),               // Warm Gray
    'bonus-income': const Color(0xFF564A3E),             // Mocha
    'digital-subscriptions': const Color(0xFFD6CFC4),    // Light Taupe
    'health-insurance': const Color(0xFFBB7E5D),         // Copper
    'vision-care': const Color(0xFFD2CCA1),              // Wheat
    'freelance-contract-work': const Color(0xFF8B6B4F),  // Chestnut
    'internet-cable': const Color(0xFFE4E1D4),           // Soft White
    'other-personal-care': const Color(0xFFB0A896),      // Mushroom
    'babysitting': const Color(0xFF807D74),              // Stone Gray
    'auto-insurance': const Color(0xFFB89685),           // Rose Taupe
    'online-courses': const Color(0xFFDAC0A7),           // Sand Dune
    'student-loans': const Color(0xFFC3B091),            // Khaki
    'veterinary-bills': const Color(0xFF504738),         // Espresso
    'other-insurance': const Color(0xFF9C8A7D),          // Beaver
    'rental-income': const Color(0xFF6B6353),            // Olive Drab
    'homeowners-renters-insurance': const Color(0xFFD4B59E), // Beige Blush
    'other-transportation': const Color(0xFFF5E6CA),     // Pale Almond
    'medical-bills': const Color(0xFF9A7D67),            // Almond Brown
    'utilities': const Color(0xFFF9D8A7),                // Peach Beige
    'hobbies': const Color(0xFFCDC1B4),                  // Light Mink
    'books-supplies': const Color(0xFF7A5C58),           // Copper Rose
    'ride-sharing-services': const Color(0xFFFFE7C7),    // Soft Apricot
    'housing-maintenance-repairs': const Color(0xFFB1A584), // Sage Gray
    'parking-fees': const Color(0xFF4B3A37),             // Dark Chocolate
    'car-payments': const Color(0xFFA79B82),             // Light Olive
    'concerts-events': const Color(0xFFFFE5B4),          // Peach
    'other-pet-care': const Color(0xFFE9D8A6),           // Pale Gold
    'skincare-beauty-products': const Color(0xFFDDC3A5), // Light Sand
    'personal-loans': const Color(0xFFF4E1D2),           // Blush Pink
    'extracurricular-activities': const Color(0xFFA8A77A), // Moss Green
    'property-taxes': const Color(0xFF5B5340),           // Dark Wood
    'travel-vacations': const Color(0xFFD1C4B6),         // Pale Coffee
    'medication': const Color(0xFFB7A57A),               // Pale Olive
    'groceries': const Color(0xFFF9C7A1),                // Light Salmon
    'coffee-shop': const Color(0xFFD8CAB5),              // Champagne
    'travel-insurance': const Color(0xFF7C6654),         // Walnut
    'dental-care': const Color(0xFFEAE2D0),              // Pearl
    'grooming': const Color(0xFFAC9381),                 // Dark Beige
    'shoes-accessories': const Color(0xFFC4B89A),        // Biscuit
    'home-improvements': const Color(0xFFE3CAA5),        // Pale Peach
    'other-savings': const Color(0xFF836953),            // Cocoa
    'childcare-extracurricular-activities': const Color(0xFFD4C2A3), // Beige
    'life-insurance': const Color(0xFFC5B097),           // Sandstone
    'meal-delivery-services': const Color(0xFF7F675F),   // Smokey Taupe
    'other-entertainment-leisure': const Color(0xFFB3A394), // Soft Brown
    'toys-accessories': const Color(0xFFA78F7D),         // Warm Beige
    'emergency-fund': const Color(0xFFD3B8A1),           // Peach Fuzz
    'investment-income': const Color(0xFFB89A8E),        // Dusty Rose
    'transportation-maintenance-repairs': const Color(0xFFE5D7C3), // Latte
    'gym': const Color(0xFF7D7D7D),                      // Gray
    'books-magazines': const Color(0xFFCEB5A7),          // Soft Coral
    'credit-card-payments': const Color(0xFFE8C8A7),     // Pale Coral
    'school-supplies': const Color(0xFFA68A8A),          // Rosy Brown
    'salary': const Color(0xFFD6C0B4),                   // Almond Milk
    'education-savings': const Color(0xFFA4978E),        // Fawn
    'other-income': const Color(0xFFCDB3A1),             // Soft Cinnamon
    'clothing-apparel': const Color(0xFFD1B894),         // Warm Sand
    'gifts': const Color(0xFFB2A399),                    // Light Walnut
    'haircuts-salon-services': const Color(0xFFE6CFCF),  // Blush
    'fuel-gas': const Color(0xFF8D8478),                 // Stone
    'other-health-wellness': const Color(0xFFB19F8D),    // Tan Gray
    'daycare-preschool': const Color(0xFFD5B8A3),        // Peach Puff
    'pet-food': const Color(0xFFCDC5BA),                 // Oyster
    'other-housing': const Color(0xFF938F8F),            // Silver Pink
    'retirement': const Color(0xFFD1BFA7),               // Cashmere
    'public-transportation': const Color(0xFFAA9F96),    // Warm Gray
    'fast-food': const Color(0xFFC0B1A1),                // Desert Mist
    'rent-mortgage': const Color(0xFFDEC3B6),            // Pale Blush
    'movies-tv-streaming': const Color(0xFF8C8273),      // Taupe Gray
    'other-debt-repayment': const Color(0xFFB7A8A2),     // Rose Beige
    'other-food': const Color(0xFFC5A799),               // Tawny
    'other-education': const Color(0xFFDED4CC),          // Almond
    'investments': const Color(0xFF99897A),              // Mushroom Brown
    'tuition-fees': const Color(0xFFBAA89E),             // Light Umber
    'other-childcare-education': const Color(0xFFF1D6BF), // Apricot Blush
    'pet-insurance': const Color(0xFF928274),            // Cool Gray
  });
}

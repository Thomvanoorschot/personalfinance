import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/src/clients/banking_client.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/widgets/card/custom_card.dart';
import 'package:go_router/go_router.dart';

class BanksOverviewScreen extends ConsumerWidget {
  const BanksOverviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<GetBanksResponse> banksResponse =
        ref.watch(getBanksProvider(req: GetBanksRequest(countryCode: "NL")));

    return banksResponse.when(
      loading: () => const SizedBox(child: Center(child: CircularProgressIndicator())),
      error: (err, stack) => Text('error: $err'),
      data: (resp) {
        return DraggableScrollableSheet(
          maxChildSize: 1,
          initialChildSize: 1,
          minChildSize: 0.9,
          builder: (context, scrollController) {
           return  ListView.builder(
             controller: scrollController,
              padding: const EdgeInsets.all(8),
              itemCount: resp.banks.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomCard(
                  onTap: () async {
                    context.go("/transactions/getBanks/createRequisition/${resp.banks[index].id}");
                  },
                  colorOverride:
                      Theme.of(context).colorScheme.secondaryContainer,
                  body: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          resp.banks[index].iconURL,
                          scale: 0.1,
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(resp.banks[index].name),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

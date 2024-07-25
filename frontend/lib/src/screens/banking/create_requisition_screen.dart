import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/src/clients/banking_client.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/widgets/card/custom_card.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CreateRequisitionScreen extends ConsumerWidget {
  CreateRequisitionScreen({required this.bankId, super.key});

  final String bankId;
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onHttpError: (HttpResponseError error) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<CreateRequisitionResponse> createRequisitionResponse = ref.watch(
      createRequisitionProvider(
        req: CreateRequisitionRequest(
          institutionId: "ABNAMRO_ABNANL2A",
        ),
      ),
    );

    return createRequisitionResponse.when(
      loading: () => const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (err, stack) => Text('error: $err'),
      data: (resp) {
        return DraggableScrollableSheet(
          maxChildSize: 1,
          initialChildSize: 1,
          // expand: true,
          builder: (context, scrollController) {
            return WebViewWidget(
              gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                Factory<EagerGestureRecognizer>(
                  () => EagerGestureRecognizer(),
                ),
              },
              controller: controller
                ..loadRequest(
                  Uri.parse(resp.url),
                ),
            );
          },
        );
      },
    );
  }
}

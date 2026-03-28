import 'package:flutter_test/flutter_test.dart';

import 'package:liquid_wave_indicator_example/main.dart';

void main() {
  testWidgets('Example shows package title and section', (tester) async {
    await tester.pumpWidget(const LiquidWaveIndicatorExampleApp());
    await tester.pump(const Duration(milliseconds: 100));

    expect(find.text('Liquid Wave Indicator'), findsOneWidget);
    expect(find.text('Social Media Reach'), findsOneWidget);
  });
}

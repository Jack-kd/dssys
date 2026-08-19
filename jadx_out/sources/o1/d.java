package o1;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

/* loaded from: classes5.dex */
public class d implements MethodChannel.MethodCallHandler {

    /* renamed from: b, reason: collision with root package name */
    public final C1740a f52034b;

    public d(C1740a c1740a) {
        this.f52034b = c1740a;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if ("check".equals(methodCall.method)) {
            result.success(this.f52034b.d());
        } else {
            result.notImplemented();
        }
    }
}

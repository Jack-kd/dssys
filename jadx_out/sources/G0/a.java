package G0;

import android.content.Context;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

/* loaded from: classes3.dex */
public class a implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: b, reason: collision with root package name */
    public MethodChannel f89b;

    /* renamed from: c, reason: collision with root package name */
    public Context f90c;

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f90c = flutterPluginBinding.getApplicationContext();
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "flutter_android_sign");
        this.f89b = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f89b.setMethodCallHandler(null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (methodCall.method.equals("getSign")) {
            result.success(b.b(this.f90c));
        } else if (methodCall.method.equals("getCodePath")) {
            result.success(this.f90c.getPackageCodePath());
        } else {
            result.notImplemented();
        }
    }
}

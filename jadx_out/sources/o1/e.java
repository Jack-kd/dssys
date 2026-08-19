package o1;

import android.content.Context;
import android.net.ConnectivityManager;
import dev.fluttercommunity.plus.connectivity.ConnectivityBroadcastReceiver;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodChannel;

/* loaded from: classes5.dex */
public class e implements FlutterPlugin {

    /* renamed from: b, reason: collision with root package name */
    public MethodChannel f52035b;

    /* renamed from: c, reason: collision with root package name */
    public EventChannel f52036c;

    /* renamed from: d, reason: collision with root package name */
    public ConnectivityBroadcastReceiver f52037d;

    public final void a(BinaryMessenger binaryMessenger, Context context) {
        this.f52035b = new MethodChannel(binaryMessenger, "dev.fluttercommunity.plus/connectivity");
        this.f52036c = new EventChannel(binaryMessenger, "dev.fluttercommunity.plus/connectivity_status");
        C1740a c1740a = new C1740a((ConnectivityManager) context.getSystemService("connectivity"));
        d dVar = new d(c1740a);
        this.f52037d = new ConnectivityBroadcastReceiver(context, c1740a);
        this.f52035b.setMethodCallHandler(dVar);
        this.f52036c.setStreamHandler(this.f52037d);
    }

    public final void b() {
        this.f52035b.setMethodCallHandler(null);
        this.f52036c.setStreamHandler(null);
        this.f52037d.onCancel(null);
        this.f52035b = null;
        this.f52036c = null;
        this.f52037d = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        a(flutterPluginBinding.getBinaryMessenger(), flutterPluginBinding.getApplicationContext());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        b();
    }
}

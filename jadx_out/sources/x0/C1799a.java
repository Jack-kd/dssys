package x0;

import android.app.Activity;
import android.content.Context;
import com.baidu.mobads.sdk.internal.cb;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import y0.AbstractC1803a;
import z0.AbstractC1806a;

/* renamed from: x0.a, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1799a implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {

    /* renamed from: e, reason: collision with root package name */
    public static MethodChannel f52822e;

    /* renamed from: b, reason: collision with root package name */
    public Activity f52823b;

    /* renamed from: c, reason: collision with root package name */
    public FlutterPlugin.FlutterPluginBinding f52824c;

    /* renamed from: d, reason: collision with root package name */
    public Context f52825d;

    public static void a(String str, String str2) {
        E0.a.b("=============>" + str + ":" + str2);
        if (f52822e != null) {
            HashMap map = new HashMap();
            map.put("args", str2);
            f52822e.invokeMethod(str + "CallBack", map);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        Activity activity = activityPluginBinding.getActivity();
        this.f52823b = activity;
        AbstractC1803a.a(this.f52824c, activity);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "flutter_network_channel");
        f52822e = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.f52825d = flutterPluginBinding.getApplicationContext();
        this.f52824c = flutterPluginBinding;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.f52823b = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.f52823b = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        f52822e.setMethodCallHandler(null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) throws InterruptedException {
        String str = methodCall.method;
        str.getClass();
        switch (str) {
            case "fullVideo":
                C0.a.a(this.f52823b, (String) methodCall.argument("adId"));
                return;
            case "init":
                AbstractC1806a.a(this.f52823b.getApplication(), (String) methodCall.argument("appId"));
                break;
            case "interstitial":
                A0.a.a(this.f52823b, (String) methodCall.argument("adId"));
                return;
            case "channel":
                result.success("qq_android");
                return;
            case "rewardVideo":
                C0.a.a(this.f52823b, (String) methodCall.argument("adId"));
                return;
        }
        result.success(cb.f11292o);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        this.f52823b = activityPluginBinding.getActivity();
    }
}

package F0;

import android.app.Activity;
import android.app.PendingIntent;
import android.app.PictureInPictureParams;
import android.app.RemoteAction;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Rational;
import com.flutter.pip.flutter_pip.R$mipmap;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class h implements FlutterPlugin, MethodChannel.MethodCallHandler, EventChannel.StreamHandler, ActivityAware {

    /* renamed from: b, reason: collision with root package name */
    public MethodChannel f67b;

    /* renamed from: c, reason: collision with root package name */
    public EventChannel f68c;

    /* renamed from: d, reason: collision with root package name */
    public EventChannel.EventSink f69d;

    /* renamed from: e, reason: collision with root package name */
    public Activity f70e;

    /* renamed from: f, reason: collision with root package name */
    public Context f71f;

    /* renamed from: g, reason: collision with root package name */
    public BroadcastReceiver f72g;

    /* renamed from: h, reason: collision with root package name */
    public PictureInPictureParams.Builder f73h;

    /* renamed from: i, reason: collision with root package name */
    public Handler f74i;

    /* renamed from: j, reason: collision with root package name */
    public Runnable f75j;

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && "pip_intent_action_custom".equals(intent.getAction())) {
                int intExtra = intent.getIntExtra("pip_intent_control_type_custom", 0);
                HashMap map = new HashMap();
                map.put("controlType", Integer.valueOf(intExtra));
                h.this.i("onPipAction", map);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (h.this.f70e == null) {
                h.this.r();
            } else if (h.this.f70e.isInPictureInPictureMode()) {
                h.this.f74i.postDelayed(this, 120L);
            } else {
                h.this.i("onPipStop", null);
                h.this.r();
            }
        }
    }

    public final void f() {
        Activity activity = this.f70e;
        if (activity == null) {
            return;
        }
        Context context = this.f71f;
        if (context == null) {
            context = activity;
        }
        Intent launchIntentForPackage = activity.getPackageManager().getLaunchIntentForPackage(this.f70e.getPackageName());
        if (launchIntentForPackage == null) {
            return;
        }
        launchIntentForPackage.addFlags(872546304);
        context.startActivity(launchIntentForPackage);
    }

    public final List g(boolean z2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(m());
        if (z2) {
            arrayList.add(p());
        } else {
            arrayList.add(o());
        }
        arrayList.add(n());
        return arrayList;
    }

    public final void h() {
        BroadcastReceiver broadcastReceiver;
        Activity activity = this.f70e;
        if (activity != null && (broadcastReceiver = this.f72g) != null) {
            try {
                activity.unregisterReceiver(broadcastReceiver);
            } catch (Throwable unused) {
            }
        }
        this.f72g = null;
        r();
    }

    public final void i(String str, Map map) {
        if (this.f69d == null) {
            return;
        }
        HashMap map2 = new HashMap();
        map2.put("method", str);
        if (map != null) {
            map2.putAll(map);
        }
        this.f69d.success(map2);
    }

    public final boolean j(boolean z2, int i2, int i3, boolean z3) {
        boolean zEnterPictureInPictureMode = false;
        if (this.f70e == null || Build.VERSION.SDK_INT < 26) {
            return false;
        }
        if (this.f73h == null) {
            this.f73h = d.a();
        }
        k();
        this.f73h.setAspectRatio(new Rational(i2, i3)).setActions(g(z2));
        try {
            zEnterPictureInPictureMode = this.f70e.enterPictureInPictureMode(this.f73h.build());
        } catch (Throwable unused) {
        }
        if (zEnterPictureInPictureMode) {
            q();
            i("onPipStart", null);
            if (z3) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: F0.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f66b.l();
                    }
                });
            }
        }
        return zEnterPictureInPictureMode;
    }

    public final void k() {
        if (this.f70e != null && this.f72g == null) {
            this.f72g = new a();
            IntentFilter intentFilter = new IntentFilter("pip_intent_action_custom");
            if (Build.VERSION.SDK_INT >= 33) {
                this.f70e.registerReceiver(this.f72g, intentFilter, 4);
            } else {
                this.f70e.registerReceiver(this.f72g, intentFilter);
            }
        }
    }

    public final /* synthetic */ void l() {
        this.f70e.moveTaskToBack(true);
    }

    public final RemoteAction m() {
        return e.a(Icon.createWithResource(this.f70e, R$mipmap.pip_back_off), "", "", PendingIntent.getBroadcast(this.f70e, 4, new Intent("pip_intent_action_custom").setPackage(this.f70e.getPackageName()).putExtra("pip_intent_control_type_custom", 4), 201326592));
    }

    public final RemoteAction n() {
        return e.a(Icon.createWithResource(this.f70e, R$mipmap.pip_forward), "", "", PendingIntent.getBroadcast(this.f70e, 3, new Intent("pip_intent_action_custom").setPackage(this.f70e.getPackageName()).putExtra("pip_intent_control_type_custom", 3), 201326592));
    }

    public final RemoteAction o() {
        return e.a(Icon.createWithResource(this.f70e, R$mipmap.pip_pause), "", "", PendingIntent.getBroadcast(this.f70e, 2, new Intent("pip_intent_action_custom").setPackage(this.f70e.getPackageName()).putExtra("pip_intent_control_type_custom", 2), 201326592));
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        this.f70e = activityPluginBinding.getActivity();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f73h = d.a();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f71f = flutterPluginBinding.getApplicationContext();
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "flutter_pip/methods");
        this.f67b = methodChannel;
        methodChannel.setMethodCallHandler(this);
        EventChannel eventChannel = new EventChannel(flutterPluginBinding.getBinaryMessenger(), "flutter_pip/events");
        this.f68c = eventChannel;
        eventChannel.setStreamHandler(this);
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        this.f69d = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        h();
        this.f70e = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.f70e = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f67b;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        EventChannel eventChannel = this.f68c;
        if (eventChannel != null) {
            eventChannel.setStreamHandler(null);
        }
        this.f71f = null;
        this.f69d = null;
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink eventSink) {
        this.f69d = eventSink;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        boolean z2;
        String str = methodCall.method;
        str.getClass();
        switch (str) {
            case "disablePip":
                f();
                h();
                result.success(null);
                break;
            case "enablePip":
                Boolean bool = (Boolean) methodCall.argument("isPause");
                Integer num = (Integer) methodCall.argument("aspectX");
                Integer num2 = (Integer) methodCall.argument("aspectY");
                Boolean bool2 = (Boolean) methodCall.argument("goHome");
                boolean z3 = bool != null && bool.booleanValue();
                int iIntValue = num != null ? num.intValue() : 16;
                int iIntValue2 = num2 != null ? num2.intValue() : 9;
                if (bool2 != null && bool2.booleanValue()) {
                    z2 = true;
                }
                result.success(Boolean.valueOf(j(z3, iIntValue, iIntValue2, z2)));
                break;
            case "updatePipActions":
                Boolean bool3 = (Boolean) methodCall.argument("isPause");
                if (bool3 != null && bool3.booleanValue()) {
                    z2 = true;
                }
                s(z2);
                result.success(null);
                break;
            case "isSupportPip":
                result.success(Boolean.valueOf(Build.VERSION.SDK_INT >= 26));
                break;
            case "isInPip":
                Activity activity = this.f70e;
                if (activity == null) {
                    result.success(Boolean.FALSE);
                    break;
                } else {
                    result.success(Boolean.valueOf(activity.isInPictureInPictureMode()));
                    break;
                }
            default:
                result.notImplemented();
                break;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        this.f70e = activityPluginBinding.getActivity();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f73h = d.a();
        }
    }

    public final RemoteAction p() {
        return e.a(Icon.createWithResource(this.f70e, R$mipmap.pip_play), "", "", PendingIntent.getBroadcast(this.f70e, 1, new Intent("pip_intent_action_custom").setPackage(this.f70e.getPackageName()).putExtra("pip_intent_control_type_custom", 1), 201326592));
    }

    public final void q() {
        r();
        this.f74i = new Handler(Looper.getMainLooper());
        b bVar = new b();
        this.f75j = bVar;
        this.f74i.post(bVar);
    }

    public final void r() {
        Handler handler = this.f74i;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f74i = null;
        }
        this.f75j = null;
    }

    public final void s(boolean z2) {
        if (this.f70e == null || Build.VERSION.SDK_INT < 26 || this.f73h == null) {
            return;
        }
        try {
            this.f70e.setPictureInPictureParams(this.f73h.setActions(g(z2)).build());
        } catch (Throwable unused) {
        }
    }
}

package dev.fluttercommunity.plus.battery;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import android.os.PowerManager;
import android.provider.Settings;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.analytics.pro.g;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.j;

@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 '2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001=B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u001f\u0010\u0010\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0016\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0017¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u001dH\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\"\u0010!J\u000f\u0010#\u001a\u00020\u001dH\u0002¢\u0006\u0004\b#\u0010!J\u000f\u0010$\u001a\u00020\u001dH\u0002¢\u0006\u0004\b$\u0010!J\u0017\u0010'\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020)2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b*\u0010+J\u0019\u0010-\u001a\u0004\u0018\u00010\u001a2\u0006\u0010,\u001a\u00020%H\u0002¢\u0006\u0004\b-\u0010.J!\u0010/\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010,\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b/\u00100R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00106\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u00105R\u0018\u00109\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u00108R\u0018\u0010<\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010;¨\u0006>"}, d2 = {"Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/plugin/common/EventChannel$StreamHandler;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "Lkotlin/j;", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "", "arguments", "Lio/flutter/plugin/common/EventChannel$EventSink;", g.ax, "onListen", "(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V", "onCancel", "(Ljava/lang/Object;)V", "", com.anythink.core.common.r.g.f7297a, "()Ljava/lang/String;", "", "i", "()Ljava/lang/Boolean;", "j", "()Z", "h", "k", "c", "", "property", "f", "(I)I", "Landroid/content/BroadcastReceiver;", "e", "(Lio/flutter/plugin/common/EventChannel$EventSink;)Landroid/content/BroadcastReceiver;", "status", "d", "(I)Ljava/lang/String;", "l", "(Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/String;)V", "Landroid/content/Context;", "b", "Landroid/content/Context;", "applicationContext", "Landroid/content/BroadcastReceiver;", "chargingStateChangeReceiver", "Lio/flutter/plugin/common/MethodChannel;", "Lio/flutter/plugin/common/MethodChannel;", "methodChannel", "Lio/flutter/plugin/common/EventChannel;", "Lio/flutter/plugin/common/EventChannel;", "eventChannel", "a", "battery_plus_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class BatteryPlusPlugin implements MethodChannel.MethodCallHandler, EventChannel.StreamHandler, FlutterPlugin {

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public Context applicationContext;

    /* renamed from: c, reason: collision with root package name and from kotlin metadata */
    public BroadcastReceiver chargingStateChangeReceiver;

    /* renamed from: d, reason: collision with root package name and from kotlin metadata */
    public MethodChannel methodChannel;

    /* renamed from: e, reason: collision with root package name and from kotlin metadata */
    public EventChannel eventChannel;

    public final boolean c() {
        Context context = this.applicationContext;
        j.b(context);
        Object systemService = context.getSystemService("power");
        j.c(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        return ((PowerManager) systemService).isPowerSaveMode();
    }

    public final String d(int status) {
        if (status == 1) {
            return "unknown";
        }
        if (status == 2) {
            return "charging";
        }
        if (status == 3) {
            return "discharging";
        }
        if (status == 4) {
            return "connected_not_charging";
        }
        if (status != 5) {
            return null;
        }
        return "full";
    }

    public final BroadcastReceiver e(final EventChannel.EventSink events) {
        return new BroadcastReceiver() { // from class: dev.fluttercommunity.plus.battery.BatteryPlusPlugin$createChargingStateChangeReceiver$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                j.e(context, "context");
                j.e(intent, "intent");
                int intExtra = intent.getIntExtra("status", -1);
                BatteryPlusPlugin batteryPlusPlugin = this.f50669a;
                batteryPlusPlugin.l(events, batteryPlusPlugin.d(intExtra));
            }
        };
    }

    public final int f(int property) {
        Context context = this.applicationContext;
        j.b(context);
        Object systemService = context.getSystemService("batterymanager");
        j.c(systemService, "null cannot be cast to non-null type android.os.BatteryManager");
        return ((BatteryManager) systemService).getIntProperty(property);
    }

    public final String g() {
        int intExtra;
        if (Build.VERSION.SDK_INT >= 26) {
            intExtra = f(6);
        } else {
            Intent intentRegisterReceiver = new ContextWrapper(this.applicationContext).registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            intExtra = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("status", -1) : -1;
        }
        return d(intExtra);
    }

    public final boolean h() {
        Context context = this.applicationContext;
        j.b(context);
        int i2 = Settings.System.getInt(context.getContentResolver(), "SmartModeStatus", -1);
        return i2 != -1 ? i2 == 4 : c();
    }

    public final Boolean i() {
        String MANUFACTURER = Build.MANUFACTURER;
        j.d(MANUFACTURER, "MANUFACTURER");
        Locale locale = Locale.getDefault();
        j.d(locale, "getDefault(...)");
        String lowerCase = MANUFACTURER.toLowerCase(locale);
        j.d(lowerCase, "toLowerCase(...)");
        int iHashCode = lowerCase.hashCode();
        if (iHashCode != -1206476313) {
            if (iHashCode != -759499589) {
                if (iHashCode == 1864941562 && lowerCase.equals("samsung")) {
                    return Boolean.valueOf(j());
                }
            } else if (lowerCase.equals(MediationConstant.ADN_XIAOMI)) {
                return Boolean.valueOf(k());
            }
        } else if (lowerCase.equals("huawei")) {
            return Boolean.valueOf(h());
        }
        return Boolean.valueOf(c());
    }

    public final boolean j() {
        String string;
        if (Build.VERSION.SDK_INT < 31) {
            Context context = this.applicationContext;
            j.b(context);
            string = Settings.System.getString(context.getContentResolver(), "psm_switch");
        } else {
            string = null;
        }
        return string == null ? c() : j.a(string, "1");
    }

    public final boolean k() {
        Context context = this.applicationContext;
        j.b(context);
        int i2 = Settings.System.getInt(context.getContentResolver(), "POWER_SAVE_MODE_OPEN", -1);
        return i2 != -1 ? i2 == 1 : c();
    }

    public final void l(EventChannel.EventSink events, String status) {
        if (status != null) {
            events.success(status);
        } else {
            events.error("UNAVAILABLE", "Charging status unavailable", null);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        j.e(binding, "binding");
        this.applicationContext = binding.getApplicationContext();
        this.methodChannel = new MethodChannel(binding.getBinaryMessenger(), "dev.fluttercommunity.plus/battery");
        EventChannel eventChannel = new EventChannel(binding.getBinaryMessenger(), "dev.fluttercommunity.plus/charging");
        this.eventChannel = eventChannel;
        j.b(eventChannel);
        eventChannel.setStreamHandler(this);
        MethodChannel methodChannel = this.methodChannel;
        j.b(methodChannel);
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object arguments) {
        Context context = this.applicationContext;
        j.b(context);
        context.unregisterReceiver(this.chargingStateChangeReceiver);
        this.chargingStateChangeReceiver = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        j.e(binding, "binding");
        this.applicationContext = null;
        MethodChannel methodChannel = this.methodChannel;
        j.b(methodChannel);
        methodChannel.setMethodCallHandler(null);
        this.methodChannel = null;
        EventChannel eventChannel = this.eventChannel;
        j.b(eventChannel);
        eventChannel.setStreamHandler(null);
        this.eventChannel = null;
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object arguments, EventChannel.EventSink events) {
        j.e(events, "events");
        BroadcastReceiver broadcastReceiverE = e(events);
        this.chargingStateChangeReceiver = broadcastReceiverE;
        Context context = this.applicationContext;
        if (context != null) {
            ContextCompat.registerReceiver(context, broadcastReceiverE, new IntentFilter("android.intent.action.BATTERY_CHANGED"), 4);
        }
        l(events, g());
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        j.e(call, "call");
        j.e(result, "result");
        String str = call.method;
        if (str != null) {
            int iHashCode = str.hashCode();
            if (iHashCode != -82096147) {
                if (iHashCode != -75204358) {
                    if (iHashCode == 144057854 && str.equals("isInBatterySaveMode")) {
                        Boolean boolI = i();
                        if (boolI != null) {
                            result.success(boolI);
                            return;
                        } else {
                            result.error("UNAVAILABLE", "Battery save mode not available.", null);
                            return;
                        }
                    }
                } else if (str.equals("getBatteryState")) {
                    String strG = g();
                    if (strG != null) {
                        result.success(strG);
                        return;
                    } else {
                        result.error("UNAVAILABLE", "Charging status not available.", null);
                        return;
                    }
                }
            } else if (str.equals("getBatteryLevel")) {
                int iF = f(4);
                if (iF != -1) {
                    result.success(Integer.valueOf(iF));
                    return;
                } else {
                    result.error("UNAVAILABLE", "Battery level not available.", null);
                    return;
                }
            }
        }
        result.notImplemented();
    }
}

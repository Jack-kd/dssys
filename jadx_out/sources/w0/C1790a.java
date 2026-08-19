package w0;

import android.app.Activity;
import android.content.Context;
import android.provider.Settings;
import android.view.OrientationEventListener;
import androidx.core.app.NotificationCompat;
import com.byazt.pu.TTDownloadField;
import com.umeng.analytics.pro.g;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.j;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\u0005J\u0017\u0010\f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\u0005J\u0019\u0010\u000f\u001a\u00020\b2\b\b\u0001\u0010\u0007\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\b2\b\b\u0001\u0010\u0007\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u001f\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0019\u0010\u0005R\u0016\u0010\u001c\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0019\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006("}, d2 = {"Lw0/a;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "binding", "Lkotlin/j;", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivityForConfigChanges", "onReattachedToActivityForConfigChanges", "onDetachedFromActivity", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "c", "b", "Lio/flutter/plugin/common/MethodChannel;", "Lio/flutter/plugin/common/MethodChannel;", "channel", "Landroid/content/Context;", "Landroid/content/Context;", g.f49337X, "Landroid/app/Activity;", "d", "Landroid/app/Activity;", TTDownloadField.TT_ACTIVITY, "Landroid/view/OrientationEventListener;", "e", "Landroid/view/OrientationEventListener;", "orientationListener", "flutter_direction_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* renamed from: w0.a, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1790a implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public MethodChannel channel;

    /* renamed from: c, reason: collision with root package name and from kotlin metadata */
    public Context context;

    /* renamed from: d, reason: collision with root package name and from kotlin metadata */
    public Activity activity;

    /* renamed from: e, reason: collision with root package name and from kotlin metadata */
    public OrientationEventListener orientationListener;

    /* renamed from: w0.a$a, reason: collision with other inner class name */
    public static final class C0889a extends OrientationEventListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f52813a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ C1790a f52814b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0889a(Context context, C1790a c1790a) {
            super(context, 3);
            this.f52813a = context;
            this.f52814b = c1790a;
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int i2) {
            try {
                if (Settings.System.getInt(this.f52813a.getContentResolver(), "accelerometer_rotation", 1) != 1) {
                    return;
                }
            } catch (Throwable unused) {
            }
            if (i2 == -1) {
                return;
            }
            MethodChannel methodChannel = null;
            String str = (i2 > 350 || i2 < 10) ? "portrait" : (81 > i2 || i2 >= 100) ? (171 > i2 || i2 >= 190) ? (261 > i2 || i2 >= 280) ? null : "landscapeLeft" : "portraitUpsideDown" : "landscapeRight";
            if (str != null) {
                MethodChannel methodChannel2 = this.f52814b.channel;
                if (methodChannel2 == null) {
                    j.u("channel");
                } else {
                    methodChannel = methodChannel2;
                }
                methodChannel.invokeMethod("orientationCallback", str);
            }
        }
    }

    public final void b() {
        OrientationEventListener orientationEventListener = this.orientationListener;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
        this.orientationListener = null;
    }

    public final void c() {
        Context context = this.context;
        if (context == null) {
            return;
        }
        OrientationEventListener orientationEventListener = this.orientationListener;
        if (orientationEventListener != null) {
            if (orientationEventListener != null) {
                orientationEventListener.enable();
                return;
            }
            return;
        }
        C0889a c0889a = new C0889a(context, this);
        this.orientationListener = c0889a;
        j.b(c0889a);
        if (c0889a.canDetectOrientation()) {
            c0889a.enable();
        } else {
            c0889a.disable();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        j.e(binding, "binding");
        this.activity = binding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        j.e(binding, "binding");
        this.context = binding.getApplicationContext();
        MethodChannel methodChannel = new MethodChannel(binding.getBinaryMessenger(), "flutter_direction");
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.activity = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.activity = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        j.e(binding, "binding");
        MethodChannel methodChannel = this.channel;
        if (methodChannel == null) {
            j.u("channel");
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
        b();
        this.context = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        j.e(call, "call");
        j.e(result, "result");
        String str = call.method;
        if (j.a(str, "registerDirectionListener")) {
            c();
            result.success(null);
        } else if (!j.a(str, "unRegisterDirectionListener")) {
            result.notImplemented();
        } else {
            b();
            result.success(null);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        j.e(binding, "binding");
        this.activity = binding.getActivity();
    }
}

package r1;

import defpackage.f;
import dev.fluttercommunity.plus.wakelock.NoActivityException;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import kotlin.Metadata;
import kotlin.jvm.internal.j;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\f\u0010\nJ\u0017\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0010\u0010\u0005J\u0017\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0011\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0012\u0010\u0005J\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u001a¨\u0006\u001c"}, d2 = {"Lr1/b;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lf;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "flutterPluginBinding", "Lkotlin/j;", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "binding", "onDetachedFromEngine", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivity", "onReattachedToActivityForConfigChanges", "onDetachedFromActivityForConfigChanges", "Lb;", "msg", "a", "(Lb;)V", "isEnabled", "()La;", "Lr1/a;", "Lr1/a;", "wakelock", "wakelock_plus_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* renamed from: r1.b, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1763b implements FlutterPlugin, f, ActivityAware {

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public C1762a wakelock;

    @Override // defpackage.f
    public void a(defpackage.b msg) throws NoActivityException {
        j.e(msg, "msg");
        C1762a c1762a = this.wakelock;
        j.b(c1762a);
        c1762a.d(msg);
    }

    @Override // defpackage.f
    public defpackage.a isEnabled() {
        C1762a c1762a = this.wakelock;
        j.b(c1762a);
        return c1762a.b();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        j.e(binding, "binding");
        C1762a c1762a = this.wakelock;
        if (c1762a != null) {
            c1762a.c(binding.getActivity());
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        j.e(flutterPluginBinding, "flutterPluginBinding");
        f.a aVar = f.f50687a;
        BinaryMessenger binaryMessenger = flutterPluginBinding.getBinaryMessenger();
        j.d(binaryMessenger, "getBinaryMessenger(...)");
        f.a.g(aVar, binaryMessenger, this, null, 4, null);
        this.wakelock = new C1762a();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        C1762a c1762a = this.wakelock;
        if (c1762a != null) {
            c1762a.c(null);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        j.e(binding, "binding");
        f.a aVar = f.f50687a;
        BinaryMessenger binaryMessenger = binding.getBinaryMessenger();
        j.d(binaryMessenger, "getBinaryMessenger(...)");
        f.a.g(aVar, binaryMessenger, null, null, 4, null);
        this.wakelock = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        j.e(binding, "binding");
        onAttachedToActivity(binding);
    }
}

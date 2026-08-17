package com.smartdigimkt.c5;

import android.content.Context;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* loaded from: classes5.dex */
public final class g implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f39704a;

    public g(Context context) {
        this.f39704a = context;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        try {
            try {
                Class<?> cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                Class<?> cls2 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
                Object objInvoke = cls.getMethod("getAdvertisingIdInfo", Context.class).invoke(null, this.f39704a);
                Method method = cls2.getMethod("getId", null);
                method.setAccessible(true);
                return (String) method.invoke(objInvoke, null);
            } catch (Throwable unused) {
                return c.a(this.f39704a).f39695a;
            }
        } catch (Throwable unused2) {
            String str = h.f39731a;
            return "";
        }
    }
}

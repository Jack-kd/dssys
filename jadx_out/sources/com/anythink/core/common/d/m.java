package com.anythink.core.common.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Base64;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;

/* loaded from: classes2.dex */
public class m {

    /* renamed from: b, reason: collision with root package name */
    private static final String f2910b = "MixedLBM_CORE";

    /* renamed from: c, reason: collision with root package name */
    private static volatile boolean f2911c;

    /* renamed from: d, reason: collision with root package name */
    private static Method f2912d;

    /* renamed from: e, reason: collision with root package name */
    private static Method f2913e;

    /* renamed from: f, reason: collision with root package name */
    private static Method f2914f;

    /* renamed from: g, reason: collision with root package name */
    private static Method f2915g;

    /* renamed from: h, reason: collision with root package name */
    private static volatile m f2916h;

    /* renamed from: a, reason: collision with root package name */
    Context f2917a;

    private m(Context context) {
        this.f2917a = context;
    }

    public static m a(Context context) {
        if (f2916h == null) {
            synchronized (m.class) {
                try {
                    if (f2916h == null) {
                        f2916h = new m(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2916h;
    }

    private static Object b(Context context) {
        if (!f2911c) {
            synchronized (m.class) {
                try {
                    if (!f2911c) {
                        try {
                            Class<?> cls = Class.forName(a("YW5kcm9pZC5zdXBwb3J0LnY0LmNvbnRlbnQuTG9jYWxCcm9hZGNhc3RNYW5hZ2Vy"));
                            f2912d = cls.getMethod("getInstance", Context.class);
                            f2913e = cls.getMethod("registerReceiver", BroadcastReceiver.class, IntentFilter.class);
                            f2914f = cls.getMethod("unregisterReceiver", BroadcastReceiver.class);
                            f2915g = cls.getMethod("sendBroadcast", Intent.class);
                        } catch (Throwable unused) {
                            f2912d = null;
                        }
                        f2911c = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Method method = f2912d;
        if (method == null) {
            return null;
        }
        try {
            return method.invoke(null, context);
        } catch (Throwable unused2) {
            return null;
        }
    }

    public final void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        Method method;
        try {
            LocalBroadcastManager.getInstance(this.f2917a).registerReceiver(broadcastReceiver, intentFilter);
        } catch (Throwable unused) {
            Object objB = b(this.f2917a);
            if (objB == null || (method = f2913e) == null) {
                return;
            }
            try {
                method.invoke(objB, broadcastReceiver, intentFilter);
            } catch (Throwable unused2) {
            }
        }
    }

    public final void a(BroadcastReceiver broadcastReceiver) {
        Method method;
        try {
            LocalBroadcastManager.getInstance(this.f2917a).unregisterReceiver(broadcastReceiver);
        } catch (Throwable unused) {
            Object objB = b(this.f2917a);
            if (objB == null || (method = f2914f) == null) {
                return;
            }
            try {
                method.invoke(objB, broadcastReceiver);
            } catch (Throwable unused2) {
            }
        }
    }

    public final void a(Intent intent) {
        Method method;
        try {
            LocalBroadcastManager.getInstance(this.f2917a).sendBroadcast(intent);
        } catch (Throwable unused) {
            Object objB = b(this.f2917a);
            if (objB == null || (method = f2915g) == null) {
                return;
            }
            try {
                method.invoke(objB, intent);
            } catch (Throwable unused2) {
            }
        }
    }

    private static String a(String str) {
        if (str.isEmpty()) {
            return null;
        }
        try {
            return new String(Base64.decode(str, 0), StandardCharsets.UTF_8);
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }
}

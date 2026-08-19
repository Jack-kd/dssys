package com.smartdigimkt.t;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c3.g;
import com.smartdigimkt.c5.h;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.sdk.core.bridge.entity.DeviceInfoEntity;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes5.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static String f44146a = "";

    /* renamed from: b, reason: collision with root package name */
    public static boolean f44147b = false;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f44148c = false;

    /* renamed from: g, reason: collision with root package name */
    public static volatile long f44152g;

    /* renamed from: d, reason: collision with root package name */
    public static final AtomicInteger f44149d = new AtomicInteger(0);

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicLong f44150e = new AtomicLong(0);

    /* renamed from: f, reason: collision with root package name */
    public static final Object f44151f = new Object();

    /* renamed from: h, reason: collision with root package name */
    public static volatile boolean f44153h = false;

    public static void a(Context context, String str, boolean z2) {
        f44146a = str;
        h.f39745h = str;
        if (!TextUtils.isEmpty(str)) {
            f44149d.set(11);
        }
        if (z2) {
            y.a(context, "sdm_adx_rp_sdk", "oaid", str);
        }
    }

    public static String a(Context context) {
        if (!SDKContext.getInstance().a("oaid")) {
            if (!TextUtils.isEmpty(f44146a)) {
                return f44146a;
            }
            synchronized (f44151f) {
                try {
                    if (!f44148c) {
                        f44148c = true;
                        f44146a = y.b(context, "sdm_adx_rp_sdk", "oaid");
                    }
                    if (!TextUtils.isEmpty(f44146a)) {
                        return f44146a;
                    }
                    if (!g.f39677e && !SDKContext.getInstance().f44123l) {
                        a(g.f39678f ? 3 : 2, "");
                        return "";
                    }
                    if (f44147b) {
                        return f44146a;
                    }
                    f44147b = true;
                    f44152g = System.currentTimeMillis();
                    Object obj = new Object();
                    boolean[] zArr = {false};
                    f44149d.incrementAndGet();
                    f44150e.set(System.currentTimeMillis());
                    com.smartdigimkt.q.e.a(context, new b(context, obj, zArr));
                    if (!zArr[0]) {
                        try {
                            synchronized (obj) {
                                obj.wait(1500L);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                    if (!zArr[0] && TextUtils.isEmpty(f44146a)) {
                        a(4, "");
                    }
                    String str = f44146a;
                    if (str == null) {
                        str = "";
                    }
                    return str;
                } finally {
                }
            }
        }
        a(1, "");
        return "";
    }

    public static String a() {
        if (SDKContext.getInstance().a("oaid")) {
            return "";
        }
        if (TextUtils.isEmpty(f44146a)) {
            DeviceInfoEntity deviceInfoEntity = h.f39738d0;
            if (deviceInfoEntity != null) {
                return deviceInfoEntity.getOaid();
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            AtomicLong atomicLong = f44150e;
            if (jCurrentTimeMillis - atomicLong.get() > 5000) {
                AtomicInteger atomicInteger = f44149d;
                if (atomicInteger.get() < 10 && SDKContext.getInstance().f44123l) {
                    atomicInteger.incrementAndGet();
                    atomicLong.set(System.currentTimeMillis());
                    com.smartdigimkt.b4.e.a().c(new d());
                }
            }
        }
        return f44146a;
    }

    public static void a(int i2, String str) {
        if (!f44153h || i2 == 6) {
            f44153h = true;
            com.smartdigimkt.b4.e.a().c(new e(i2, str, f44152g > 0 ? System.currentTimeMillis() - f44152g : 0L));
        }
    }
}

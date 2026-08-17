package com.anythink.core.common.s;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.common.d.t;
import com.anythink.core.common.s.b.d;
import com.anythink.core.common.s.b.e;
import com.anythink.core.common.s.c;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final int f7631a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f7632b = 1;

    /* renamed from: c, reason: collision with root package name */
    private static final String f7633c = "SPManager";

    /* renamed from: d, reason: collision with root package name */
    private static final long f7634d = 10000;

    /* renamed from: e, reason: collision with root package name */
    private static volatile b f7635e;

    /* renamed from: h, reason: collision with root package name */
    private final Set<String> f7638h;

    /* renamed from: g, reason: collision with root package name */
    private volatile long f7637g = 0;

    /* renamed from: f, reason: collision with root package name */
    private final Map<String, a> f7636f = new ConcurrentHashMap();

    private b() {
        HashSet hashSet = new HashSet();
        this.f7638h = hashSet;
        hashSet.add(t.b.f3058a);
        hashSet.add(t.b.f3070m);
    }

    public static b a() {
        if (f7635e == null) {
            synchronized (b.class) {
                try {
                    if (f7635e == null) {
                        f7635e = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7635e;
    }

    private a c(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return new com.anythink.core.common.s.b.b();
        }
        if (context instanceof Activity) {
            context = context.getApplicationContext();
        }
        a aVar = this.f7636f.get(str);
        if (aVar != null) {
            return aVar;
        }
        a aVarD = d(context, str);
        this.f7636f.put(str, aVarD);
        return aVarD;
    }

    private static a d(Context context, String str) {
        return d.c(new c.a().a(context).a(str).b(1).a(1).a());
    }

    public final a b(Context context, String str) {
        return c(context, str);
    }

    private static boolean b(String str) {
        return !a(str);
    }

    public final synchronized int b() {
        a value;
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime - this.f7637g < 10000) {
                return 0;
            }
            int iC = 0;
            for (Map.Entry<String, a> entry : this.f7636f.entrySet()) {
                if (!this.f7638h.contains(entry.getKey()) && (value = entry.getValue()) != null) {
                    try {
                        iC += value.c();
                    } catch (Exception unused) {
                    }
                }
            }
            this.f7637g = jElapsedRealtime;
            return iC;
        } catch (Throwable unused2) {
            return 0;
        }
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.endsWith(t.a.f3045n) || str.endsWith(t.a.f3044m);
    }

    private int c() {
        return this.f7636f.size();
    }

    private boolean c(String str) {
        return this.f7638h.contains(str);
    }

    private void a(Context context) {
        String[] strArr = {t.b.f3058a, t.b.f3060c, t.b.f3064g, t.b.f3065h, t.b.f3066i, t.b.f3067j, t.b.f3068k, "anythink_app_pl_cl_retry", t.b.f3061d};
        for (int i2 = 0; i2 < 9; i2++) {
            a aVarC = c(context, strArr[i2]);
            if (aVarC instanceof e) {
                ((e) aVarC).d();
            }
        }
    }

    public final a a(Context context, String str) {
        return c(context, str);
    }
}

package com.anythink.core.common;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.d.t;
import com.anythink.core.common.h.bs;
import com.anythink.core.common.v.ad;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class u {

    /* renamed from: b, reason: collision with root package name */
    private static final String f7682b = "u";

    /* renamed from: f, reason: collision with root package name */
    private static volatile u f7683f;

    /* renamed from: a, reason: collision with root package name */
    Context f7684a;

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, Integer> f7685c = new ConcurrentHashMap(8);

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, bs> f7686d = new ConcurrentHashMap(8);

    /* renamed from: e, reason: collision with root package name */
    private final Map<String, Boolean> f7687e = new ConcurrentHashMap(8);

    private u(Context context) {
        this.f7684a = context.getApplicationContext();
    }

    public static u a(Context context) {
        if (f7683f == null) {
            synchronized (u.class) {
                try {
                    if (f7683f == null) {
                        f7683f = new u(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7683f;
    }

    private boolean b(String str) {
        Boolean bool = this.f7687e.get(str);
        if (bool == null) {
            boolean zC = ad.c(this.f7684a, t.b.f3066i, str);
            Boolean boolValueOf = Boolean.valueOf(zC);
            if (zC) {
                ad.b(this.f7684a, t.b.f3066i, str);
            }
            this.f7687e.put(str, Boolean.FALSE);
            bool = boolValueOf;
        }
        return bool.booleanValue();
    }

    private int c(String str) {
        Integer num = this.f7685c.get(str);
        if (num == null) {
            return 1;
        }
        return num.intValue();
    }

    public final void a(String str, String str2, boolean z2) {
        bs bsVar;
        if (TextUtils.isEmpty(str) || (bsVar = this.f7686d.get(str)) == null || !TextUtils.equals(str2, bsVar.a())) {
            return;
        }
        bsVar.a(z2);
    }

    public final void a(String str) {
        Integer num = this.f7685c.get(str);
        if (num == null) {
            this.f7685c.put(str, 1);
        } else {
            this.f7685c.put(str, Integer.valueOf(num.intValue() + 1));
        }
    }

    public final bs a(String str, String str2) {
        Boolean bool = this.f7687e.get(str);
        if (bool == null) {
            boolean zC = ad.c(this.f7684a, t.b.f3066i, str);
            Boolean boolValueOf = Boolean.valueOf(zC);
            if (zC) {
                ad.b(this.f7684a, t.b.f3066i, str);
            }
            this.f7687e.put(str, Boolean.FALSE);
            bool = boolValueOf;
        }
        boolean zBooleanValue = bool.booleanValue();
        bs bsVarRemove = this.f7686d.remove(str);
        if (bsVarRemove == null) {
            bsVarRemove = new bs("", zBooleanValue);
        }
        this.f7686d.put(str, new bs(str2, false));
        return bsVarRemove;
    }
}

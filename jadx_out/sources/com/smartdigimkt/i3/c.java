package com.smartdigimkt.i3;

import android.content.Context;
import com.anythink.core.common.d.t;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.z4.d;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: c, reason: collision with root package name */
    public static volatile c f40731c;

    /* renamed from: a, reason: collision with root package name */
    public final Context f40732a;

    /* renamed from: b, reason: collision with root package name */
    public int f40733b;

    public c(Context context) {
        this.f40733b = 2;
        new ConcurrentHashMap(5);
        if (context != null) {
            this.f40732a = context.getApplicationContext();
        }
        this.f40733b = y.a(this.f40732a, "sdm_adx_rp_sdk", t.a.f3047p, 2);
    }

    public static c a(Context context) {
        if (f40731c == null) {
            synchronized (c.class) {
                try {
                    if (f40731c == null) {
                        f40731c = new c(context);
                    }
                } finally {
                }
            }
        }
        return f40731c;
    }

    public final boolean a() {
        com.smartdigimkt.a5.a aVarA = d.c().a();
        if (aVarA == null || aVarA.f39371f) {
            return this.f40733b != 1;
        }
        if (aVarA.f39380k == 0) {
            return true;
        }
        int i2 = this.f40733b;
        if (aVarA.f39379j == 1) {
            i2 = aVarA.f39377i;
        }
        return i2 == 0;
    }
}

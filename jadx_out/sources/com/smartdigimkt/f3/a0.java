package com.smartdigimkt.f3;

import com.smartdigimkt.sdk.core.SDKContext;
import java.io.File;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class a0 {

    /* renamed from: g, reason: collision with root package name */
    public static volatile a0 f40203g;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.k3.r f40205b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f40206c;

    /* renamed from: e, reason: collision with root package name */
    public long f40208e;

    /* renamed from: a, reason: collision with root package name */
    public final String f40204a = a0.class.getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f40207d = false;

    /* renamed from: f, reason: collision with root package name */
    public long f40209f = 0;

    public a0() {
        this.f40208e = 209715200L;
        com.smartdigimkt.k3.d dVarA = com.smartdigimkt.k3.d.a(SDKContext.getInstance().d());
        if (com.smartdigimkt.k3.r.f41392b == null) {
            synchronized (com.smartdigimkt.k3.q.class) {
                try {
                    if (com.smartdigimkt.k3.r.f41392b == null) {
                        com.smartdigimkt.k3.r.f41392b = new com.smartdigimkt.k3.r(dVarA);
                    }
                } finally {
                }
            }
        }
        this.f40205b = com.smartdigimkt.k3.r.f41392b;
        this.f40206c = new HashMap();
        com.smartdigimkt.t3.n.a().getClass();
        this.f40208e = com.smartdigimkt.t3.n.a(4);
    }

    public static a0 a() {
        if (f40203g == null) {
            synchronized (a0.class) {
                try {
                    if (f40203g == null) {
                        f40203g = new a0();
                    }
                } finally {
                }
            }
        }
        return f40203g;
    }

    public final synchronized int a(String str) {
        if (this.f40206c.containsKey(str) && this.f40206c.get(str) != null) {
            return ((Integer) this.f40206c.get(str)).intValue();
        }
        w wVarA = this.f40205b.a(str);
        if (wVarA == null || wVarA.f40260c <= 0) {
            return 0;
        }
        File file = new File(wVarA.f40259b);
        if (file.exists() && file.length() >= wVarA.f40262e) {
            this.f40206c.put(str, Integer.valueOf(wVarA.f40260c));
            this.f40205b.c(str);
            return wVarA.f40260c;
        }
        com.smartdigimkt.b4.e.a().a(new y(this, wVarA), 0L, 2);
        return 0;
    }
}

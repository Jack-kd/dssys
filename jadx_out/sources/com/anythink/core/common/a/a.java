package com.anythink.core.common.a;

import android.content.Context;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.t;
import com.anythink.core.common.f.p;
import com.anythink.core.common.h.ag;
import com.anythink.core.common.h.bi;
import com.anythink.core.common.v.ad;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    private static volatile a f2157b;

    /* renamed from: a, reason: collision with root package name */
    ConcurrentHashMap<String, ag> f2158a;

    /* renamed from: c, reason: collision with root package name */
    private p f2159c;

    private a() {
        if (s.b().g() != null) {
            this.f2159c = p.a(com.anythink.core.common.f.e.a(s.b().g()));
        }
        this.f2158a = new ConcurrentHashMap<>(3);
    }

    private bi b(Context context, String str) {
        if (this.f2159c == null) {
            this.f2159c = p.a(com.anythink.core.common.f.e.a(context.getApplicationContext()));
        }
        return this.f2159c.c(str);
    }

    private static void c(Context context, String str) {
        ad.a(context, t.b.f3065h, str + t.a.f3020D, 1);
    }

    private static boolean d(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(t.a.f3020D);
        return ad.b(context, t.b.f3065h, sb.toString(), 0) == 1;
    }

    private String e(Context context, String str) {
        if (this.f2159c == null) {
            this.f2159c = p.a(com.anythink.core.common.f.e.a(context.getApplicationContext()));
        }
        return this.f2159c.d(str);
    }

    public static a a() {
        if (f2157b == null) {
            synchronized (a.class) {
                try {
                    if (f2157b == null) {
                        f2157b = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2157b;
    }

    private void b(Context context, String str, String str2) {
        if (this.f2159c == null) {
            this.f2159c = p.a(com.anythink.core.common.f.e.a(context.getApplicationContext()));
        }
        this.f2159c.b(str, str2);
    }

    public final com.anythink.core.common.h.ad a(String str, String str2) {
        ag agVarB = this.f2158a.get(str);
        if (agVarB == null) {
            agVarB = this.f2159c.b(str);
            this.f2158a.put(str, agVarB);
        }
        return agVarB.a(str2);
    }

    public final void a(final String str, final com.anythink.core.common.h.ad adVar) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8121d, new Runnable() { // from class: com.anythink.core.common.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                if (a.this.f2159c == null) {
                    a.this.f2159c = p.a(com.anythink.core.common.f.e.a(s.b().g()));
                }
                a.this.f2159c.a(str, adVar);
            }
        }));
    }

    public final void a(final com.anythink.core.common.h.ad adVar) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8119b, new Runnable() { // from class: com.anythink.core.common.a.a.2
            @Override // java.lang.Runnable
            public final void run() {
                if (a.this.f2159c == null) {
                    a.this.f2159c = p.a(com.anythink.core.common.f.e.a(s.b().g()));
                }
                a.this.f2159c.a(adVar);
            }
        }));
    }

    private void a(Context context, String str, String str2) {
        if (this.f2159c == null) {
            this.f2159c = p.a(com.anythink.core.common.f.e.a(context.getApplicationContext()));
        }
        this.f2159c.a(str, str2);
    }

    public final void a(final Context context, final String str) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8120c, new Runnable() { // from class: com.anythink.core.common.a.a.3
            @Override // java.lang.Runnable
            public final void run() {
                if (a.this.f2159c == null) {
                    a.this.f2159c = p.a(com.anythink.core.common.f.e.a(context.getApplicationContext()));
                }
                a.this.f2159c.a(str);
            }
        }));
        ad.a(context, t.b.f3065h, str + t.a.f3020D);
    }
}

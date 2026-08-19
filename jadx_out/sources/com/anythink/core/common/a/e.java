package com.anythink.core.common.a;

import android.text.TextUtils;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.r;
import com.anythink.core.common.h.w;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class e {

    /* renamed from: d, reason: collision with root package name */
    private static volatile e f2216d;

    /* renamed from: b, reason: collision with root package name */
    long f2218b;

    /* renamed from: e, reason: collision with root package name */
    private com.anythink.core.common.f.b f2220e;

    /* renamed from: f, reason: collision with root package name */
    private Map<String, g> f2221f;

    /* renamed from: a, reason: collision with root package name */
    final String f2217a = e.class.getName();

    /* renamed from: c, reason: collision with root package name */
    Object f2219c = new Object();

    /* renamed from: com.anythink.core.common.a.e$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (e.this.f2219c) {
                try {
                    e.this.a();
                    List<f> listA = e.this.f2220e.a();
                    if (listA != null) {
                        for (int i2 = 0; i2 < listA.size(); i2++) {
                            f fVar = listA.get(i2);
                            String strA = fVar.a();
                            if (!TextUtils.isEmpty(strA)) {
                                g gVar = (g) e.this.f2221f.get(strA);
                                if (gVar == null) {
                                    gVar = new g();
                                    e.this.f2221f.put(strA, gVar);
                                }
                                gVar.a(fVar);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private e() {
        this.f2218b = 0L;
        if (s.b().g() != null) {
            this.f2220e = com.anythink.core.common.f.b.a(com.anythink.core.common.f.e.a(s.b().g()));
            this.f2221f = new ConcurrentHashMap();
            this.f2218b = f();
            com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8122e, new AnonymousClass1()));
        }
    }

    private static void c() {
    }

    private void d() {
        this.f2218b = f();
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8122e, new AnonymousClass1()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        long jF = f();
        if (this.f2218b != jF) {
            this.f2221f.clear();
            this.f2218b = jF;
        }
    }

    private static long f() {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            return calendar.getTimeInMillis();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    private void a(final String str, final w wVar) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8124g, new Runnable() { // from class: com.anythink.core.common.a.e.2
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (e.this.f2219c) {
                    try {
                        e.this.e();
                        g gVar = (g) e.this.f2221f.get(str);
                        if (gVar == null) {
                            gVar = new g();
                            e.this.f2221f.put(str, gVar);
                        }
                        gVar.a(((r) wVar).Q());
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                e.a(e.this, 4, str, wVar);
            }
        }));
    }

    private static e b() {
        if (f2216d == null) {
            synchronized (e.class) {
                try {
                    if (f2216d == null) {
                        f2216d = new e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2216d;
    }

    private void a(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || jSONObject == null) {
            return;
        }
        synchronized (this.f2219c) {
            try {
                e();
                g gVar = this.f2221f.get(str);
                if (gVar != null) {
                    gVar.a(jSONObject);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void b(final String str, final w wVar) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8123f, new Runnable() { // from class: com.anythink.core.common.a.e.3
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (e.this.f2219c) {
                    try {
                        e.this.e();
                        g gVar = (g) e.this.f2221f.get(str);
                        if (gVar == null) {
                            gVar = new g();
                            e.this.f2221f.put(str, gVar);
                        }
                        w wVar2 = wVar;
                        if (wVar2 instanceof r) {
                            gVar.b(((r) wVar2).Q());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                e.a(e.this, 6, str, wVar);
            }
        }));
    }

    private void a(int i2, String str, w wVar) {
        if (TextUtils.isEmpty(str) || !(wVar instanceof r)) {
            return;
        }
        f fVar = new f();
        fVar.a(str);
        fVar.b(((r) wVar).Q());
        fVar.c(wVar.i());
        fVar.a(i2);
        fVar.d("");
        this.f2220e.a(fVar);
    }

    public final void a() {
        this.f2220e.b();
    }

    public static /* synthetic */ void a(e eVar, int i2, String str, w wVar) {
        if (TextUtils.isEmpty(str) || !(wVar instanceof r)) {
            return;
        }
        f fVar = new f();
        fVar.a(str);
        fVar.b(((r) wVar).Q());
        fVar.c(wVar.i());
        fVar.a(i2);
        fVar.d("");
        eVar.f2220e.a(fVar);
    }
}

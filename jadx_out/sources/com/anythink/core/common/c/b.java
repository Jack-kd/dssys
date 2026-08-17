package com.anythink.core.common.c;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.common.c.f;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.t;
import com.anythink.core.common.v.ad;
import com.anythink.core.common.v.p;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: f, reason: collision with root package name */
    private static b f2390f;

    /* renamed from: a, reason: collision with root package name */
    Runnable f2391a;

    /* renamed from: b, reason: collision with root package name */
    JSONArray[] f2392b;

    /* renamed from: g, reason: collision with root package name */
    private long f2396g;

    /* renamed from: k, reason: collision with root package name */
    private String f2400k;

    /* renamed from: l, reason: collision with root package name */
    private String f2401l;

    /* renamed from: c, reason: collision with root package name */
    private final String f2393c = getClass().getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    private final String f2394d = com.anythink.core.common.m.f.am;

    /* renamed from: e, reason: collision with root package name */
    private final String f2395e = com.anythink.core.common.m.f.bl;

    /* renamed from: j, reason: collision with root package name */
    private final Object f2399j = new Object();

    /* renamed from: m, reason: collision with root package name */
    private final Object f2402m = new Object();

    /* renamed from: h, reason: collision with root package name */
    private ConcurrentLinkedQueue<e> f2397h = new ConcurrentLinkedQueue<>();

    /* renamed from: i, reason: collision with root package name */
    private ConcurrentHashMap<String, String> f2398i = new ConcurrentHashMap<>();

    public b() {
        com.anythink.core.e.b bVarB;
        this.f2396g = 0L;
        this.f2396g = Math.max(0L, ATSDKGlobalSetting.mInspectInterval);
        if (!TextUtils.isEmpty(s.b().p()) && (bVarB = com.anythink.core.e.d.a(s.b().g()).b(s.b().p())) != null && !bVarB.J()) {
            this.f2396g = bVarB.ap();
        }
        a(new Runnable() { // from class: com.anythink.core.common.c.b.1
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (b.this.f2402m) {
                    b bVar = b.this;
                    if (bVar.f2392b == null) {
                        bVar.f2400k = ad.c(s.b().g(), t.b.f3058a, com.anythink.core.common.m.f.am, "");
                        b.this.f2401l = ad.c(s.b().g(), t.b.f3058a, com.anythink.core.common.m.f.bl, "");
                        if (!TextUtils.isEmpty(b.this.f2400k) && !TextUtils.isEmpty(b.this.f2401l)) {
                            JSONArray[] jSONArrayArr = new JSONArray[2];
                            b.this.f2392b = jSONArrayArr;
                            try {
                                jSONArrayArr[0] = new JSONArray(b.this.f2400k);
                                b.this.f2392b[1] = new JSONArray(b.this.f2401l);
                            } catch (Throwable unused) {
                            }
                        }
                    }
                }
            }
        });
    }

    private static void d() {
    }

    private void f() {
        synchronized (this.f2399j) {
            try {
                if (this.f2391a != null) {
                    this.f2391a = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        synchronized (this.f2399j) {
            try {
                if (this.f2396g >= 0 && this.f2397h.size() > 0 && this.f2391a == null) {
                    e eVarPoll = this.f2397h.poll();
                    if (eVarPoll != null) {
                        Runnable runnableA = a(eVarPoll);
                        this.f2391a = runnableA;
                        a(runnableA);
                    } else {
                        e();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static int g() {
        return ad.b(s.b().g(), t.b.f3058a, t.a.f3021E, 0);
    }

    public static b a() {
        if (f2390f == null) {
            synchronized (b.class) {
                try {
                    if (f2390f == null) {
                        f2390f = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2390f;
    }

    public final JSONArray[] b() {
        JSONArray[] jSONArrayArr;
        synchronized (this.f2402m) {
            jSONArrayArr = this.f2392b;
        }
        return jSONArrayArr;
    }

    public final Map<String, String> c() {
        ConcurrentHashMap<String, String> concurrentHashMap;
        synchronized (this.f2402m) {
            concurrentHashMap = this.f2398i;
        }
        return concurrentHashMap;
    }

    public static /* synthetic */ void f(b bVar) {
        synchronized (bVar.f2399j) {
            try {
                if (bVar.f2391a != null) {
                    bVar.f2391a = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(Runnable runnable) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8101J, runnable));
    }

    public final void a(long j2) {
        this.f2396g = j2;
        s.b().c(com.anythink.core.common.m.f.bG);
    }

    public final void a(final Context context, final String str, final f.a aVar) {
        a(new Runnable() { // from class: com.anythink.core.common.c.b.2
            @Override // java.lang.Runnable
            public final void run() {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new f(context, str, aVar));
                b.a(b.this, arrayList);
            }
        });
    }

    private void a(List<e> list) {
        synchronized (this.f2399j) {
            if (list != null) {
                try {
                    if (list.size() > 0) {
                        this.f2397h.addAll(list);
                        e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private Runnable a(final e eVar) {
        return new Runnable() { // from class: com.anythink.core.common.c.b.3
            @Override // java.lang.Runnable
            public final void run() {
                c cVarB;
                synchronized (b.this.f2399j) {
                    try {
                        try {
                            e eVar2 = eVar;
                            if (eVar2 != null && ((cVarB = eVar2.b()) == null || cVarB.a())) {
                                if (b.this.f2396g > 0) {
                                    try {
                                        Thread.sleep(b.this.f2396g);
                                    } catch (Throwable unused) {
                                    }
                                }
                            }
                            b.f(b.this);
                            b.this.e();
                        } catch (Throwable th) {
                            StackTraceElement[] stackTrace = th.getStackTrace();
                            StringBuilder sb = new StringBuilder("queue size=");
                            sb.append(b.this.f2397h != null ? b.this.f2397h.size() : -1);
                            sb.append(" , ");
                            sb.append(p.a(stackTrace));
                            com.anythink.core.common.u.f.b("inspect error", sb.toString(), s.b().r());
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        };
    }

    public final void a(Map<String, String> map) {
        synchronized (this.f2402m) {
            if (map == null) {
                return;
            }
            try {
                if (map.isEmpty()) {
                    return;
                }
                this.f2398i.clear();
                this.f2398i.putAll(map);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void a(Runnable runnable) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8103L, runnable));
    }

    private static void a(final Runnable runnable, long j2) {
        if (j2 > 0) {
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8100I, new Runnable() { // from class: com.anythink.core.common.c.g
                @Override // java.lang.Runnable
                public final void run() {
                    b.b(runnable);
                }
            }), j2);
        } else {
            com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8102K, runnable));
        }
    }

    public final void a(final JSONArray[] jSONArrayArr) {
        synchronized (this.f2402m) {
            this.f2392b = jSONArrayArr;
        }
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8104M, new Runnable() { // from class: com.anythink.core.common.c.b.4
            @Override // java.lang.Runnable
            public final void run() {
                JSONArray[] jSONArrayArr2 = jSONArrayArr;
                if (jSONArrayArr2 == null || jSONArrayArr2.length != 2) {
                    return;
                }
                try {
                    JSONArray jSONArray = jSONArrayArr2[0];
                    if (jSONArray != null) {
                        String string = jSONArray.toString();
                        if (!TextUtils.equals(string, b.this.f2400k)) {
                            b.this.f2400k = string;
                            ad.b(s.b().g(), t.b.f3058a, com.anythink.core.common.m.f.am, b.this.f2400k);
                        }
                    }
                    JSONArray jSONArray2 = jSONArrayArr[1];
                    if (jSONArray2 != null) {
                        String string2 = jSONArray2.toString();
                        if (TextUtils.equals(string2, b.this.f2401l)) {
                            return;
                        }
                        b.this.f2401l = string2;
                        ad.b(s.b().g(), t.b.f3058a, com.anythink.core.common.m.f.bl, b.this.f2401l);
                    }
                } catch (Throwable unused) {
                }
            }
        }));
    }

    public static /* synthetic */ void a(b bVar, List list) {
        synchronized (bVar.f2399j) {
            try {
                if (list.size() > 0) {
                    bVar.f2397h.addAll(list);
                    bVar.e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

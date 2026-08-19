package com.ubix.ssp.ad.e.w;

import android.content.Context;
import android.text.TextUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class n extends com.ubix.ssp.ad.e.w.b {

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f47372a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ JSONObject f47373b;

        public a(String str, JSONObject jSONObject) {
            this.f47372a = str;
            this.f47373b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            n.this.a(d.TRACK, this.f47372a, this.f47373b);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                n.this.f47274f.a();
            } catch (Exception e2) {
                h.a(e2);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                n.this.f47274f.b();
            } catch (Exception e2) {
                h.a(e2);
            }
        }
    }

    public n() {
    }

    public static n a(Context context) {
        n oVar;
        if (!com.ubix.ssp.ad.e.w.b.c() && context != null) {
            Map<Context, n> map = com.ubix.ssp.ad.e.w.b.f47269a;
            synchronized (map) {
                oVar = map.get(context.getApplicationContext());
                if (oVar == null) {
                    h.b("-----.AbsUbixDataAPI", "The static method sharedInstance(context, serverURL, debugMode) should be called before calling sharedInstance()");
                    oVar = new o();
                }
            }
            return oVar;
        }
        return new o();
    }

    public static void b(Context context, i iVar) {
        if (context == null || iVar == null) {
            throw new NullPointerException("Context、UbixConfigOptions 不可以为 null");
        }
        n nVarA = a(context, iVar);
        if (nVarA.f47276h) {
            return;
        }
        nVarA.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021 A[Catch: all -> 0x001f, TryCatch #0 {all -> 0x001f, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x0017, B:9:0x001d, B:13:0x0021), top: B:16:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.ubix.ssp.ad.e.w.n j() {
        /*
            java.util.Map<android.content.Context, com.ubix.ssp.ad.e.w.n> r0 = com.ubix.ssp.ad.e.w.b.f47269a
            monitor-enter(r0)
            int r1 = r0.size()     // Catch: java.lang.Throwable -> L1f
            if (r1 <= 0) goto L21
            java.util.Collection r1 = r0.values()     // Catch: java.lang.Throwable -> L1f
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L1f
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L1f
            if (r2 == 0) goto L21
            java.lang.Object r1 = r1.next()     // Catch: java.lang.Throwable -> L1f
            com.ubix.ssp.ad.e.w.n r1 = (com.ubix.ssp.ad.e.w.n) r1     // Catch: java.lang.Throwable -> L1f
        L1d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1f
            return r1
        L1f:
            r1 = move-exception
            goto L27
        L21:
            com.ubix.ssp.ad.e.w.o r1 = new com.ubix.ssp.ad.e.w.o     // Catch: java.lang.Throwable -> L1f
            r1.<init>()     // Catch: java.lang.Throwable -> L1f
            goto L1d
        L27:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1f
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.w.n.j():com.ubix.ssp.ad.e.w.n");
    }

    public static n l() {
        return com.ubix.ssp.ad.e.w.b.c() ? new o() : j();
    }

    public void e() throws InterruptedException {
        this.f47282n.a(new b());
    }

    public void f() throws InterruptedException {
        this.f47282n.a(new c());
    }

    public int g() {
        return com.ubix.ssp.ad.e.w.b.f47271c.f47263d;
    }

    public int h() {
        return com.ubix.ssp.ad.e.w.b.f47271c.f47262c;
    }

    public long i() {
        return com.ubix.ssp.ad.e.w.b.f47271c.f47264e;
    }

    public String k() {
        return this.f47275g;
    }

    public n(Context context, i iVar) {
        super(context, iVar);
    }

    private static n a(Context context, i iVar) {
        n nVar;
        if (context == null) {
            return new o();
        }
        Map<Context, n> map = com.ubix.ssp.ad.e.w.b.f47269a;
        synchronized (map) {
            try {
                Context applicationContext = context.getApplicationContext();
                nVar = map.get(applicationContext);
                if (nVar == null) {
                    nVar = new n(applicationContext, iVar);
                    map.put(applicationContext, nVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return nVar;
    }

    public void b(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("md_event", str);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("SDKEvent", jSONObject);
    }

    @Override // com.ubix.ssp.ad.e.w.g
    public void a(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.f47275g = str;
            } else {
                this.f47275g = str;
                h.b("-----.AbsUbixDataAPI", "Server url is null or empty.");
            }
        } catch (Exception e2) {
            h.a(e2);
        }
    }

    public void a(String str, JSONObject jSONObject) {
        try {
            this.f47282n.a(new a(str, jSONObject));
        } catch (Exception e2) {
            h.a(e2);
        }
    }

    @Override // com.ubix.ssp.ad.e.w.g
    public void a(boolean z2) {
        h.b(z2);
    }
}

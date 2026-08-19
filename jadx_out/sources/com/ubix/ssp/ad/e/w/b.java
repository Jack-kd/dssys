package com.ubix.ssp.ad.e.w;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
abstract class b implements g {

    /* renamed from: c, reason: collision with root package name */
    protected static i f47271c;

    /* renamed from: e, reason: collision with root package name */
    protected Context f47273e;

    /* renamed from: f, reason: collision with root package name */
    protected c f47274f;

    /* renamed from: g, reason: collision with root package name */
    protected String f47275g;

    /* renamed from: h, reason: collision with root package name */
    protected boolean f47276h;

    /* renamed from: i, reason: collision with root package name */
    protected com.ubix.ssp.ad.e.w.s.c f47277i;

    /* renamed from: j, reason: collision with root package name */
    protected boolean f47278j;

    /* renamed from: k, reason: collision with root package name */
    protected boolean f47279k;

    /* renamed from: l, reason: collision with root package name */
    protected boolean f47280l;

    /* renamed from: m, reason: collision with root package name */
    protected boolean f47281m;

    /* renamed from: n, reason: collision with root package name */
    protected l f47282n;

    /* renamed from: o, reason: collision with root package name */
    protected m f47283o;

    /* renamed from: a, reason: collision with root package name */
    protected static final Map<Context, n> f47269a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    static boolean f47270b = false;

    /* renamed from: d, reason: collision with root package name */
    protected static boolean f47272d = false;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ubix.ssp.ad.e.w.s.b.a(b.this.f47273e);
        }
    }

    public b() {
        this.f47278j = true;
        this.f47279k = false;
        this.f47280l = false;
        this.f47281m = false;
        this.f47273e = null;
        this.f47274f = null;
    }

    private void b(d dVar, String str, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(str, jSONObject);
        this.f47274f.a(dVar.a(), jSONObject2);
    }

    public static boolean c() {
        return b();
    }

    public void a() {
        if (f47271c.f47261b) {
            p.a();
        }
        i iVar = f47271c;
        if (iVar.f47318j) {
            a(iVar.f47266g);
        }
    }

    public void d() throws InterruptedException {
        this.f47282n.a(new a());
    }

    public b(Context context, i iVar) {
        this.f47278j = true;
        this.f47279k = false;
        this.f47280l = false;
        this.f47281m = false;
        this.f47273e = context;
        try {
            String packageName = context.getPackageName();
            f47271c = iVar.clone();
            this.f47282n = l.a();
            this.f47283o = new m();
            new Thread(this.f47283o, "Ubix.TaskQueueThread").start();
            p.b();
            a(f47271c.f47260a, packageName);
            this.f47277i = new com.ubix.ssp.ad.e.w.s.c(this.f47273e, this.f47281m);
            this.f47274f = c.a(this.f47273e, (n) this);
            d();
            h.a();
        } catch (Throwable th) {
            h.a("-----.AbsUbixDataAPI", th.getMessage());
        }
    }

    private static boolean b() {
        i iVar = f47271c;
        if (iVar != null) {
            return iVar.f47268i;
        }
        h.b("-----.AbsUbixDataAPI", "SAConfigOptions is null");
        return true;
    }

    public void a(d dVar, String str, JSONObject jSONObject) {
        try {
            b(dVar, str, jSONObject);
        } catch (Exception e2) {
            h.a(e2);
        }
    }

    public void a(String str, String str2) throws InterruptedException {
        if (f47271c == null) {
            this.f47276h = false;
            f47271c = new i(str);
        } else {
            this.f47276h = true;
        }
        com.ubix.ssp.ad.core.monitor.data.c.b.a(this.f47273e, str2);
        this.f47282n.a(f47271c.f47265f);
        i iVar = f47271c;
        if (iVar.f47318j) {
            a(iVar.f47266g);
        }
        h.a(f47271c.f47268i);
        a(str);
        if (f47271c.f47261b) {
            p.a();
        }
        i iVar2 = f47271c;
        if (iVar2.f47264e == 0) {
            iVar2.a(com.anythink.china.a.c.f1405z);
        }
        if (f47271c.f47268i) {
            this.f47278j = false;
            f47272d = true;
        }
    }
}

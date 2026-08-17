package com.anythink.core.e;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.t;
import com.anythink.core.common.h.bu;
import com.anythink.core.common.res.b;
import com.anythink.core.common.v.ad;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8772a = "d";

    /* renamed from: c, reason: collision with root package name */
    private static volatile d f8773c;

    /* renamed from: d, reason: collision with root package name */
    private static volatile b f8774d;

    /* renamed from: e, reason: collision with root package name */
    private Context f8776e;

    /* renamed from: g, reason: collision with root package name */
    private Object f8778g = new Object();

    /* renamed from: f, reason: collision with root package name */
    private boolean f8777f = false;

    /* renamed from: b, reason: collision with root package name */
    List<a> f8775b = Collections.synchronizedList(new ArrayList(3));

    /* renamed from: h, reason: collision with root package name */
    private String f8779h = t.a.f3042k;

    /* renamed from: i, reason: collision with root package name */
    private final s f8780i = new s();

    /* renamed from: j, reason: collision with root package name */
    private final c f8781j = new c();

    public interface a {
        void a();

        void b();
    }

    private d(Context context) {
        this.f8776e = context;
    }

    public static /* synthetic */ boolean b(d dVar) {
        dVar.f8777f = false;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        synchronized (this.f8778g) {
            try {
                Iterator<a> it = this.f8775b.iterator();
                while (it.hasNext()) {
                    it.next();
                }
                this.f8775b.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean f() {
        return this.f8777f;
    }

    private static void g() {
    }

    private void b(Context context) {
        this.f8776e = context;
    }

    private Context d() {
        return this.f8776e;
    }

    public static d a(Context context) {
        if (f8773c == null) {
            synchronized (d.class) {
                try {
                    if (f8773c == null) {
                        f8773c = new d(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8773c;
    }

    private void b(a aVar) {
        synchronized (this.f8778g) {
            if (aVar != null) {
                try {
                    this.f8775b.remove(aVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private b c(Context context) {
        s sVar;
        b bVar = new b();
        bVar.f8674b = true;
        bVar.U();
        bVar.c("0");
        bVar.a(0L);
        bVar.aa();
        bVar.ad();
        bVar.af();
        bVar.d("");
        bVar.ai();
        bVar.ak();
        bVar.e("");
        bVar.T();
        bVar.N();
        bVar.F();
        bVar.H();
        bVar.b("[\"com.anythink\"]");
        bVar.B();
        bVar.o();
        bVar.b();
        bVar.l();
        if (context != null && (sVar = this.f8780i) != null) {
            b bVarB = sVar.b(com.anythink.core.common.d.s.b().p());
            if (bVarB != null) {
                bVar.a(bVarB.g());
                bVar.c(bVarB.aT());
                bVar.d(bVarB.aU());
                bVar.a(bVarB.aV());
                bVar.a(bVarB.aW());
            } else {
                bVar.c(1);
                bVar.d(2);
                bVar.a(com.anythink.core.common.b.b.c());
            }
        }
        bVar.aG();
        bVar.aI();
        return bVar;
    }

    public final void d(String str) {
        s sVar = this.f8780i;
        if (sVar != null) {
            sVar.a(str);
        }
    }

    public final b b(String str) {
        s sVar;
        if (f8774d == null) {
            synchronized (this) {
                try {
                    if (f8774d == null) {
                        try {
                            if (this.f8776e == null) {
                                this.f8776e = com.anythink.core.common.d.s.b().g();
                            }
                            f8774d = a(this.f8776e, str);
                        } catch (Throwable unused) {
                        }
                        if (f8774d == null) {
                            Context context = this.f8776e;
                            b bVar = new b();
                            bVar.f8674b = true;
                            bVar.U();
                            bVar.c("0");
                            bVar.a(0L);
                            bVar.aa();
                            bVar.ad();
                            bVar.af();
                            bVar.d("");
                            bVar.ai();
                            bVar.ak();
                            bVar.e("");
                            bVar.T();
                            bVar.N();
                            bVar.F();
                            bVar.H();
                            bVar.b("[\"com.anythink\"]");
                            bVar.B();
                            bVar.o();
                            bVar.b();
                            bVar.l();
                            if (context != null && (sVar = this.f8780i) != null) {
                                b bVarB = sVar.b(com.anythink.core.common.d.s.b().p());
                                if (bVarB != null) {
                                    bVar.a(bVarB.g());
                                    bVar.c(bVarB.aT());
                                    bVar.d(bVarB.aU());
                                    bVar.a(bVarB.aV());
                                    bVar.a(bVarB.aW());
                                } else {
                                    bVar.c(1);
                                    bVar.d(2);
                                    bVar.a(com.anythink.core.common.b.b.c());
                                }
                            }
                            bVar.aG();
                            bVar.aI();
                            f8774d = bVar;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8774d;
    }

    public static b a() {
        return a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
    }

    private void a(a aVar) {
        synchronized (this.f8778g) {
            try {
                if (this.f8778g != null) {
                    this.f8775b.add(aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String a(String str) {
        b bVarB = b(str);
        if (bVarB == null) {
            return "1";
        }
        boolean zJ = bVarB.J();
        boolean zAS = bVarB.aS();
        boolean zBb = bVarB.bb();
        Map<String, Object> map = bVarB.f8675c;
        Map<String, Object> mapM = com.anythink.core.common.d.s.b().m();
        boolean zEquals = true;
        if (map != null) {
            zEquals = true ^ map.equals(mapM);
        } else if (mapM == null) {
            zEquals = false;
        }
        if (zJ) {
            return "1";
        }
        if (zAS) {
            return "2";
        }
        if (zEquals) {
            return "3";
        }
        if (zBb) {
            return i.ac.f2559n;
        }
        return "";
    }

    private b a(Context context, String str) {
        bu buVar;
        List<bu> listA = com.anythink.core.common.f.f.a(com.anythink.core.common.f.e.a(context)).a(str, this.f8779h);
        if (listA != null && listA.size() > 0 && (buVar = listA.get(0)) != null) {
            try {
                b bVarA = b.a(new JSONObject(buVar.d()));
                if (bVarA != null) {
                    bVarA.a(Long.parseLong(buVar.a()));
                    if (bVarA.bc() == 1 && !bVarA.aS()) {
                        bVarA.e(1);
                    }
                }
                return bVarA;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private b a(int i2, final Context context, final String str, final JSONObject jSONObject) {
        try {
            b bVarB = a(context).b(str);
            if (!bVarB.J()) {
                bVarB.a(jSONObject, (String) null);
            }
        } catch (Throwable unused) {
        }
        if (jSONObject != null) {
            try {
                jSONObject.put("strategy_domain_type_key", i2 != 1 ? 0 : 1);
            } catch (Throwable unused2) {
            }
        }
        final b bVarA = b.a(jSONObject);
        bVarA.a(System.currentTimeMillis());
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8110S, new Runnable() { // from class: com.anythink.core.e.d.1
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.core.common.f.f.a(com.anythink.core.common.f.e.a(context)).a(str, jSONObject.toString(), d.this.f8779h);
                ad.a(context, t.b.f3058a, t.a.f3055x, bVarA.Y());
                ad.a(context, t.b.f3058a, t.a.f3056y, bVarA.Z());
            }
        }));
        return bVarA;
    }

    public final void c(String str) {
        com.anythink.core.common.d.s sVarB = com.anythink.core.common.d.s.b();
        final String strP = sVarB.p();
        String strQ = sVarB.q();
        final Context context = this.f8776e;
        if (context == null || TextUtils.isEmpty(strP) || TextUtils.isEmpty(strQ)) {
            return;
        }
        b bVarB = b(strP);
        Map<String, String> map = new HashMap<>();
        if (!bVarB.f8674b) {
            map = bVarB.ba();
        }
        com.anythink.core.common.h.v vVar = new com.anythink.core.common.h.v(strP, strQ);
        vVar.a(map);
        if (!TextUtils.isEmpty(str)) {
            vVar.b(str);
        }
        vVar.c(i.ac.f2560o);
        c.b(context, vVar, new com.anythink.core.common.m.s() { // from class: com.anythink.core.e.d.3
            @Override // com.anythink.core.common.m.s
            public final void onLoadCanceled(int i2) {
                d.this.e();
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadError(int i2, String str2, AdError adError) {
                d.this.e();
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadFinish(int i2, Object obj) throws JSONException {
                d.this.a(context, i2, obj, strP);
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadStart(int i2) {
            }
        });
    }

    public final synchronized void a(final String str, String str2, String str3) {
        try {
            if (this.f8777f) {
                return;
            }
            this.f8777f = true;
            com.anythink.core.common.h.v vVar = new com.anythink.core.common.h.v(str, str2);
            vVar.e();
            if (f8774d != null) {
                f8774d.e(0);
                vVar.a(f8774d.ba());
            }
            if (!TextUtils.isEmpty(str3)) {
                vVar.c(str3);
            }
            this.f8781j.a(this.f8776e, vVar, new com.anythink.core.common.m.s() { // from class: com.anythink.core.e.d.2
                @Override // com.anythink.core.common.m.s
                public final void onLoadCanceled(int i2) {
                    d.b(d.this);
                    d.this.e();
                }

                @Override // com.anythink.core.common.m.s
                public final void onLoadError(int i2, String str4, AdError adError) {
                    d.b(d.this);
                    d.this.e();
                }

                @Override // com.anythink.core.common.m.s
                public final void onLoadFinish(int i2, Object obj) throws JSONException {
                    d.b(d.this);
                    d dVar = d.this;
                    dVar.a(dVar.f8776e, i2, obj, str);
                }

                @Override // com.anythink.core.common.m.s
                public final void onLoadStart(int i2) {
                }
            });
        } catch (Throwable th) {
            throw th;
        }
    }

    public static long b() {
        if (f8774d == null || f8774d.M() == 0) {
            return 204800L;
        }
        return f8774d.M();
    }

    private static void a(Context context, b bVar) {
        if (bVar == null) {
            return;
        }
        String strQ = bVar.q();
        if (TextUtils.isEmpty(strQ)) {
            return;
        }
        com.anythink.core.common.res.b.a(context).a(new com.anythink.core.common.res.e(3, strQ), (b.a) null);
    }

    private void a(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectAO;
        try {
            b bVarB = b(com.anythink.core.common.d.s.b().p());
            if (bVarB == null || (jSONObjectAO = bVarB.aO()) == null) {
                return;
            }
            jSONObject.put("a_c", jSONObjectAO);
        } catch (Exception unused) {
        }
    }

    public final void a(Context context, Object obj, String str) throws JSONException {
        a(context, 0, obj, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, int i2, Object obj, String str) throws JSONException {
        if (obj instanceof JSONObject) {
            b bVarA = a(i2, context, str, (JSONObject) obj);
            if (bVarA != null) {
                f8774d = bVarA;
                String strV = bVarA.v();
                if (!TextUtils.isEmpty(strV) && TextUtils.isEmpty(com.anythink.core.common.d.s.b().D())) {
                    com.anythink.core.common.d.s.b().j(strV);
                }
                com.anythink.core.common.u.a.a.a();
                com.anythink.core.common.u.a.a.a(true);
                com.anythink.core.common.q.a(context).a(f8774d);
                a(context, f8774d);
                com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8109R, new Runnable() { // from class: com.anythink.core.e.d.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.anythink.core.common.c.b.a().a(d.f8774d.ap());
                        com.anythink.core.common.o.e.a().a(d.f8774d);
                    }
                }));
                com.anythink.core.common.d.s.b();
                com.anythink.core.common.d.s.c(bVarA);
                com.anythink.core.common.v.a().a(f8774d.g());
                com.anythink.core.common.c.a().b(f8774d.i());
                com.anythink.core.common.a.n.a().c();
                com.anythink.core.common.d.s.b();
                com.anythink.core.common.d.r rVarC = com.anythink.core.common.d.s.b().c();
                if (rVarC != null) {
                    rVarC.startRefreshes(bVarA.a());
                }
                com.anythink.core.a.b.a(context.getApplicationContext()).a(bVarA.at());
                com.anythink.core.common.d.s.b().H();
                com.anythink.core.common.d.s.b().a(bVarA);
                com.anythink.core.common.v.e.a().a(bVarA.f());
                com.anythink.core.common.d.r rVarC2 = com.anythink.core.common.d.s.b().c();
                if (rVarC2 != null) {
                    rVarC2.uploadAegisData(bVarA);
                }
                com.anythink.core.bridge.a.b.a().a(context.getApplicationContext());
                com.anythink.core.common.l.a(context.getApplicationContext()).a(bVarA.aJ());
            }
            e();
        }
    }
}

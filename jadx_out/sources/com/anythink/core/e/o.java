package com.anythink.core.e;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.d.i;
import com.anythink.core.common.h.bo;
import com.anythink.core.e.m;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class o {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8959a = "o";

    /* renamed from: b, reason: collision with root package name */
    private static volatile o f8960b;

    /* renamed from: c, reason: collision with root package name */
    private Context f8961c;

    /* renamed from: e, reason: collision with root package name */
    private final q f8963e;

    /* renamed from: d, reason: collision with root package name */
    private final t f8962d = new t();

    /* renamed from: f, reason: collision with root package name */
    private final p f8964f = new p(this);

    public static class a implements b {

        /* renamed from: a, reason: collision with root package name */
        private final String f8976a;

        /* renamed from: b, reason: collision with root package name */
        private b f8977b;

        /* renamed from: c, reason: collision with root package name */
        private volatile boolean f8978c = false;

        public a(String str, b bVar) {
            this.f8976a = str;
            this.f8977b = bVar;
        }

        @Override // com.anythink.core.e.o.b
        public final void b() {
            b bVar = this.f8977b;
            if (bVar != null) {
                bVar.b();
            }
        }

        @Override // com.anythink.core.e.o.b
        public final void a() {
            b bVar = this.f8977b;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // com.anythink.core.e.o.b
        public final void b(m mVar) {
            b bVar = this.f8977b;
            if (bVar != null) {
                bVar.b(mVar);
            }
        }

        @Override // com.anythink.core.e.o.b
        public final void a(m mVar) {
            if (this.f8977b == null || this.f8978c) {
                return;
            }
            o.a(com.anythink.core.common.d.s.b().g()).b(this.f8976a, mVar.aW());
            this.f8978c = true;
            this.f8977b.a(mVar);
        }

        @Override // com.anythink.core.e.o.b
        public final void a(AdError adError) {
            if (this.f8977b == null || this.f8978c) {
                return;
            }
            this.f8978c = true;
            this.f8977b.a(adError);
        }
    }

    public interface b {
        void a();

        void a(AdError adError);

        void a(m mVar);

        void b();

        void b(m mVar);
    }

    private o(Context context) {
        this.f8961c = context;
        this.f8963e = new q(context);
    }

    public final m d(String str) {
        return this.f8963e.a(com.anythink.core.common.d.s.b().p(), str);
    }

    public final m e(String str) {
        return this.f8963e.a(com.anythink.core.common.d.s.b().p(), str, 2);
    }

    public final m f(String str) {
        return this.f8963e.a(com.anythink.core.common.d.s.b().p(), str, 0);
    }

    public final m g(String str) {
        String strP = com.anythink.core.common.d.s.b().p();
        if (this.f8963e.a(com.anythink.core.common.d.s.b().p(), str, 0) != null) {
            this.f8963e.b(strP, str, 1);
            return null;
        }
        m mVarA = this.f8963e.a(strP, str, 1);
        if (mVarA == null) {
            mVarA = this.f8962d.b(str);
        }
        if (mVarA != null) {
            a(str, mVarA, null, 1);
        }
        return mVarA;
    }

    public final void h(String str) {
        this.f8963e.c(com.anythink.core.common.d.s.b().p(), str);
    }

    public final boolean i(String str) {
        return this.f8963e.b(com.anythink.core.common.d.s.b().p(), str);
    }

    public final void j(String str) {
        this.f8962d.a(str);
    }

    public final int k(String str) {
        return this.f8963e.d(com.anythink.core.common.d.s.b().p(), str);
    }

    public static o a(Context context) {
        if (f8960b == null) {
            synchronized (o.class) {
                try {
                    if (f8960b == null) {
                        f8960b = new o(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8960b;
    }

    public final void b(String str, int i2) {
        this.f8963e.a(str, i2);
    }

    public final m c(String str) {
        return a(str, false);
    }

    private m c(String str, int i2) {
        return this.f8963e.a(com.anythink.core.common.d.s.b().p(), str, i2, true);
    }

    public final m b(String str) {
        return a(str, true);
    }

    public final void a(String str, m mVar, JSONObject jSONObject, int i2) {
        this.f8963e.a(com.anythink.core.common.d.s.b().p(), str, mVar, jSONObject, i2);
    }

    public final m a(String str) {
        return a(str, true);
    }

    private m a(String str, boolean z2) {
        return this.f8963e.a(com.anythink.core.common.d.s.b().p(), str, z2);
    }

    public final void a(final m mVar, String str, String str2, final String str3, Map<String, Object> map, b bVar, int i2, boolean z2, ATAdRequest aTAdRequest, boolean z3, String str4) {
        long jAr;
        com.anythink.core.common.v.b.d dVar;
        final bo boVar;
        final a aVar;
        a aVar2 = new a(str3, bVar);
        String strAi = mVar != null ? mVar.ai() : "";
        Map<String, Object> mapD = com.anythink.core.common.d.s.b().d(str3);
        bo boVar2 = new bo(str, str2, str3, strAi, mapD, map, com.anythink.core.common.t.a().c(str3), aTAdRequest);
        boVar2.a(z3);
        boVar2.a(i2);
        if (mVar == null) {
            boVar2.a("1");
            this.f8964f.a(this.f8961c, boVar2, new n(this, boVar2, aVar2, null));
            return;
        }
        if (mVar.br()) {
            mVar.b(4);
            aVar2.a(mVar);
            return;
        }
        final int i3 = 3;
        mVar.b(3);
        boVar2.a(mVar.ba());
        if (z2) {
            if (!TextUtils.isEmpty(str4)) {
                boVar2.a(str4);
            }
            this.f8964f.a(this.f8961c, boVar2, new n(this, boVar2, aVar2, mVar));
            return;
        }
        boolean zBm = mVar.bm();
        if (mVar.aO()) {
            aVar2.a(mVar);
            boVar2.a((Map<String, String>) null);
            boVar2.a("1");
            this.f8964f.a(this.f8961c, boVar2, new n(this, boVar2, aVar2, mVar));
            return;
        }
        if (!zBm && mVar.aQ()) {
            aVar2.a(mVar);
            aVar2.f8977b = null;
        }
        m mVarF = f(str3);
        if (mVarF == null) {
            boVar2.a((Map<String, String>) null);
            boVar2.a("1");
            this.f8964f.a(this.f8961c, boVar2, new n(this, boVar2, aVar2, mVar));
            return;
        }
        boVar2.a(mVarF.ba());
        boolean zEquals = mapD.equals(mVarF.af());
        boolean zBb = mVarF.bb();
        boolean zB = com.anythink.core.common.r.a().b(this.f8961c, str3);
        if (zEquals && !mVarF.bl() && !zB && !zBm && !zBb) {
            aVar2.a(mVar);
            return;
        }
        if (zBm) {
            boVar2.a(i.ac.f2549d);
        } else if (!zEquals) {
            boVar2.a("3");
        } else if (zB) {
            boVar2.a(i.ac.f2554i);
        } else if (mVarF.bl()) {
            boVar2.a("2");
        } else if (zBb) {
            boVar2.a(i.ac.f2559n);
        }
        mVarF.e(0);
        final boolean[] zArr = new boolean[1];
        if (zBm) {
            jAr = mVarF.bK();
        } else if (!zEquals) {
            jAr = mVarF.bx();
            i3 = 2;
        } else {
            jAr = mVarF.ar();
            i3 = 1;
        }
        com.anythink.core.common.t.a aVarA = com.anythink.core.common.t.c.a();
        if (jAr == 0) {
            zArr[0] = true;
            aVar2.a(mVar);
            dVar = null;
            boVar = boVar2;
            aVar = aVar2;
        } else {
            boVar = boVar2;
            aVar = aVar2;
            dVar = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f1do, new Runnable() { // from class: com.anythink.core.e.o.1
                @Override // java.lang.Runnable
                public final void run() {
                    zArr[0] = true;
                    mVar.b(1);
                    aVar.a(mVar);
                    com.anythink.core.common.u.f.a("placement", "", "strategy timeout", "", str3, "", "", (ATAdRequest) null, boVar.k(), i3);
                }
            });
            aVarA.a(dVar, jAr);
        }
        com.anythink.core.d.b.a().b(str3);
        this.f8964f.a(this.f8961c, boVar, new n(this, boVar, aVar, mVar, aVarA, dVar, zArr));
    }

    private void a(JSONObject jSONObject, JSONObject jSONObject2, String str) throws JSONException {
        m mVarA;
        JSONObject jSONObjectAN;
        if (jSONObject != null) {
            if (jSONObject2 == null && TextUtils.isEmpty(str)) {
                return;
            }
            try {
                if (jSONObject2 != null) {
                    jSONObject.put(m.a.aa, jSONObject2);
                } else {
                    if (TextUtils.isEmpty(str) || (mVarA = a(str, true)) == null || (jSONObjectAN = mVarA.aN()) == null) {
                        return;
                    }
                    jSONObject.put(m.a.aa, jSONObjectAN);
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void a(int i2, Object obj, final bo boVar, b bVar, boolean[] zArr, m mVar) throws JSONException {
        if (!(obj instanceof JSONObject) || boVar == null) {
            if (bVar != null) {
                if (mVar == null) {
                    bVar.a(ErrorCode.getErrorCode(ErrorCode.placeStrategyError, "", "Placement LoadParams error."));
                    return;
                } else {
                    bVar.a(mVar);
                    return;
                }
            }
            return;
        }
        JSONObject jSONObject = (JSONObject) obj;
        try {
            jSONObject.put(m.a.ac, System.currentTimeMillis());
            jSONObject.put("strategy_domain_type_key", i2 == 1 ? 1 : 0);
            m mVarA = a(boVar.d(), jSONObject.optInt(m.a.av, 0));
            if (mVarA != null) {
                mVarA.a(jSONObject, boVar.d());
            }
        } catch (Throwable th) {
            Log.e(f8959a, "parse place strategy error:" + th.getMessage());
        }
        final m mVarA2 = m.a(boVar.d(), jSONObject);
        final String strD = boVar.d();
        if (mVarA2 != null) {
            mVarA2.b(boVar.o() ? 5 : 2);
            if (mVarA2.as() != 1) {
                jSONObject = null;
            }
            a(strD, mVarA2, jSONObject, mVarA2.aW());
            if (boVar.h() == 3 && mVarA2.aQ()) {
                boVar.a(2);
                boVar.a((Map<String, String>) null);
                boVar.a(i.ac.f2550e);
                this.f8964f.a(this.f8961c, boVar);
            } else if (mVarA2.aR()) {
                com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bY, new Runnable() { // from class: com.anythink.core.e.o.2
                    @Override // java.lang.Runnable
                    public final void run() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                        if (mVarA2.ag() == 1) {
                            com.anythink.core.common.r.a().a(o.this.f8961c, strD, mVarA2.aY());
                        }
                        if (!mVarA2.aP()) {
                            o.this.f8963e.b(boVar.b(), strD, 2);
                            return;
                        }
                        boVar.a(1);
                        m mVarE = o.this.e(strD);
                        if (mVarE != null) {
                            boVar.a(mVarE.ba());
                        } else {
                            boVar.a((Map<String, String>) null);
                        }
                        boVar.a(i.ac.f2551f);
                        o.this.f8964f.a(o.this.f8961c, boVar);
                    }
                }));
            }
        }
        if (zArr != null && zArr.length > 0 && zArr[0]) {
            if (bVar == null || mVarA2 == null) {
                return;
            }
            bVar.b(mVarA2);
            return;
        }
        if (bVar != null) {
            if (mVarA2 != null) {
                bVar.a(mVarA2);
            } else {
                bVar.a(ErrorCode.getErrorCode(ErrorCode.placeStrategyError, "", "Placement Service error."));
            }
        }
    }

    public final void a(String str, String str2, m mVar) {
        if (mVar == null) {
            return;
        }
        this.f8963e.b(str, str2, mVar.aW());
    }

    public final m a(String str, int i2) {
        return this.f8963e.a(com.anythink.core.common.d.s.b().p(), str, i2, true);
    }
}

package com.anythink.core.common.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.bz;
import com.anythink.core.common.h.p;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.ai;
import com.anythink.core.common.v.t;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private final String f2206a = c.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, a> f2207b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    private final com.anythink.core.common.f f2208c;

    public class a {

        /* renamed from: b, reason: collision with root package name */
        private by f2210b;

        /* renamed from: c, reason: collision with root package name */
        private ATBaseAdAdapter f2211c;

        /* renamed from: d, reason: collision with root package name */
        private BaseAd f2212d;

        /* renamed from: e, reason: collision with root package name */
        private com.anythink.core.common.h.c f2213e;

        /* renamed from: f, reason: collision with root package name */
        private String f2214f;

        /* renamed from: g, reason: collision with root package name */
        private com.anythink.core.common.h.n f2215g;

        public a() {
        }

        private com.anythink.core.common.h.n f() {
            return this.f2215g;
        }

        public final synchronized void c() {
            this.f2211c = null;
            this.f2212d = null;
            this.f2213e = null;
        }

        public final by d() {
            return this.f2210b;
        }

        public final synchronized com.anythink.core.common.h.c e() {
            return this.f2213e;
        }

        public final synchronized boolean b() {
            return a() != null;
        }

        public final synchronized void a(String str, com.anythink.core.common.h.n nVar) {
            this.f2214f = str;
            this.f2215g = nVar;
        }

        public final synchronized com.anythink.core.common.h.c a() {
            boolean zInternalIsAdReady;
            if (this.f2211c == null) {
                return null;
            }
            com.anythink.core.common.h.n nVar = this.f2215g;
            if (nVar == null) {
                return null;
            }
            com.anythink.core.common.h.c cVar = this.f2213e;
            if (cVar != null) {
                if (cVar.k()) {
                    return this.f2213e;
                }
                return null;
            }
            this.f2212d = null;
            if (TextUtils.equals(nVar.aS(), "0")) {
                BaseAd baseAdObject = this.f2211c.getBaseAdObject(s.b().g());
                this.f2212d = baseAdObject;
                zInternalIsAdReady = baseAdObject != null;
            } else {
                zInternalIsAdReady = this.f2211c.internalIsAdReady();
            }
            if (zInternalIsAdReady) {
                this.f2215g.L(12);
                this.f2215g.m(ai.a(this.f2210b, this.f2211c));
                ah.a(this.f2211c, this.f2215g, this.f2210b);
                BaseAd baseAd = this.f2212d;
                if (baseAd != null) {
                    baseAd.setTrackingInfo(this.f2211c.getTrackingInfo().ah());
                }
                this.f2210b.Y().b(this.f2214f);
                com.anythink.core.c.d.c.a(this.f2211c, this.f2210b, this.f2215g, this.f2212d);
                com.anythink.core.common.h.c cVar2 = new com.anythink.core.common.h.c();
                this.f2213e = cVar2;
                cVar2.a(this.f2211c);
                this.f2213e.c(System.currentTimeMillis());
                this.f2213e.b(ai.c(this.f2210b));
                this.f2213e.a(this.f2210b.N());
                this.f2213e.a("3");
                BaseAd baseAd2 = this.f2212d;
                if (baseAd2 != null) {
                    this.f2213e.a(baseAd2);
                }
            }
            return this.f2213e;
        }
    }

    public c(com.anythink.core.common.f fVar) {
        this.f2208c = fVar;
    }

    public final a a(Context context, String str, String str2, by byVar, com.anythink.core.e.m mVar, Map<String, Object> map, ATAdRequest aTAdRequest) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(s.b().g()).b(s.b().p());
        if ((bVarB != null && !bVarB.J() && bVarB.m() != 1) || byVar == null) {
            return null;
        }
        com.anythink.core.common.f fVar = this.f2208c;
        bz bzVarA = (fVar == null || fVar.e() == null) ? null : this.f2208c.e().a(str, byVar);
        if (bzVarA != null && bzVarA.a((ad) null).b() != null) {
            return null;
        }
        a aVar = this.f2207b.get(str);
        if (aVar != null && aVar.f2211c != null) {
            return aVar;
        }
        com.anythink.core.common.f fVar2 = this.f2208c;
        ad adVarA = (fVar2 == null || fVar2.f() == null) ? null : this.f2208c.f().a(str, byVar);
        if (adVarA != null && !adVarA.a()) {
            byVar.a(adVarA, 0, 2, 1);
            p pVarA = t.a(byVar);
            ATBaseAdAdapter aTBaseAdAdapter = pVarA != null ? pVarA.f4352a : null;
            if (aTBaseAdAdapter != null && aTBaseAdAdapter.internalInitNetworkObjectByPlacementId(context, mVar.a(str, str2, byVar, aTAdRequest), map)) {
                a aVar2 = new a();
                aVar2.f2211c = aTBaseAdAdapter;
                aVar2.f2210b = byVar;
                this.f2207b.put(str, aVar2);
                return aVar2;
            }
        }
        return null;
    }

    public final synchronized com.anythink.core.common.h.c a(String str) {
        a aVar;
        com.anythink.core.common.h.c cVarE;
        if (!TextUtils.isEmpty(str) && (aVar = this.f2207b.get(str)) != null && aVar.f2211c != null && (cVarE = aVar.e()) != null) {
            if (cVarE.k()) {
                return cVarE;
            }
        }
        return null;
    }

    public final synchronized void a(String str, String str2) {
        a aVar;
        if (!TextUtils.isEmpty(str) && (aVar = this.f2207b.get(str)) != null && aVar.f2210b != null && aVar.f2210b.G().equals(str2)) {
            aVar.c();
            this.f2207b.remove(str);
        }
    }
}

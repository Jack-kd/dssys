package com.anythink.core.common;

import android.content.Context;
import android.util.Log;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.d.i;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.ca;
import com.anythink.core.common.h.ce;
import com.anythink.core.common.v.aa;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    String f5936a;

    /* renamed from: b, reason: collision with root package name */
    String f5937b;

    /* renamed from: c, reason: collision with root package name */
    f f5938c;

    /* renamed from: f, reason: collision with root package name */
    private List<com.anythink.core.common.d.a> f5941f;

    /* renamed from: d, reason: collision with root package name */
    private final String f5939d = n.class.getSimpleName();

    /* renamed from: e, reason: collision with root package name */
    private final Object f5940e = new Object();

    /* renamed from: g, reason: collision with root package name */
    private final com.anythink.core.common.d.a f5942g = new com.anythink.core.common.d.a() { // from class: com.anythink.core.common.n.1
        @Override // com.anythink.core.common.d.a
        public final void onAdLoadFail(AdError adError) {
            synchronized (n.this.f5940e) {
                try {
                    Iterator it = n.this.f5941f.iterator();
                    while (it.hasNext()) {
                        com.anythink.core.common.d.a aVar = (com.anythink.core.common.d.a) it.next();
                        if (aVar != null) {
                            n nVar = n.this;
                            aa.a(nVar.f5936a, String.valueOf(nVar.f5937b), i.s.f2720F, i.s.f2734n, "returned no eligible ads from any mediated networks. [listener:" + aVar.toString() + "]");
                            aVar.onAdLoadFail(adError);
                            it.remove();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.anythink.core.common.d.a
        public final void onAdLoaded() {
            synchronized (n.this.f5940e) {
                try {
                    if (n.this.f5941f != null) {
                        Iterator it = n.this.f5941f.iterator();
                        while (it.hasNext()) {
                            com.anythink.core.common.d.a aVar = (com.anythink.core.common.d.a) it.next();
                            if (aVar != null) {
                                n nVar = n.this;
                                aa.a(nVar.f5936a, String.valueOf(nVar.f5937b), i.s.f2720F, i.s.f2733m, "[listener:" + aVar.toString() + "]");
                                aVar.onAdLoaded();
                                it.remove();
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    public n(f fVar) {
        this.f5938c = fVar;
    }

    private void a(String str, String str2) {
        this.f5936a = str;
        this.f5937b = str2;
    }

    public final void b(com.anythink.core.common.d.a aVar) {
        synchronized (this.f5940e) {
            try {
                List<com.anythink.core.common.d.a> list = this.f5941f;
                if (list == null) {
                    return;
                }
                list.remove(aVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(com.anythink.core.common.d.a aVar) {
        synchronized (this.f5940e) {
            try {
                if (this.f5941f == null) {
                    this.f5941f = new ArrayList();
                }
                if (aVar == null) {
                    return;
                }
                Iterator<com.anythink.core.common.d.a> it = this.f5941f.iterator();
                boolean z2 = false;
                while (it.hasNext()) {
                    if (it.next() == aVar) {
                        z2 = true;
                    }
                }
                if (!z2) {
                    this.f5941f.add(aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(int i2, as asVar, ce ceVar, int i3) {
        boolean zO;
        com.anythink.core.e.m mVarE;
        f fVar;
        com.anythink.core.common.p.d dVar;
        com.anythink.core.e.m mVarA;
        com.anythink.core.e.m mVarA2;
        f fVar2;
        if (ceVar != null && i3 != 10 && (mVarA2 = ceVar.a()) != null) {
            if (mVarA2.q() != 1) {
                f fVar3 = this.f5938c;
                if (fVar3 != null) {
                    fVar3.a(new ca(System.currentTimeMillis(), ceVar.m()), mVarA2);
                }
            } else if (i2 == 1 && (fVar2 = this.f5938c) != null) {
                fVar2.a(new ca(System.currentTimeMillis(), ceVar.m()), mVarA2);
            }
        }
        f fVar4 = this.f5938c;
        if (fVar4 != null) {
            fVar4.j();
        }
        f fVar5 = this.f5938c;
        boolean z2 = (i3 == 13 || (mVarA = com.anythink.core.e.o.a(com.anythink.core.common.d.s.b().g()).a(this.f5936a)) == null || fVar5 == null || ATAdxSetting.getInstance().isAdxNetworkMode(this.f5936a) || mVarA.q() != 1 || fVar5.h() >= mVarA.r()) ? false : true;
        this.f5942g.onAdLoaded();
        if (asVar.f3811c != 9 && i2 != 3 && z2 && this.f5938c != null) {
            as asVarC = asVar.c();
            asVarC.f3811c = 9;
            asVarC.f3813e = null;
            asVarC.f3812d = null;
            this.f5938c.a(com.anythink.core.common.d.s.b().g(), this.f5937b, this.f5936a, asVarC, (com.anythink.core.common.d.a) null);
        }
        if (i2 == 1 && asVar.e() && (fVar = this.f5938c) != null && (dVar = fVar.f3118j) != null) {
            dVar.c();
        }
        if (!asVar.d()) {
            if (ceVar == null) {
                zO = i2 == 3;
            } else {
                zO = ceVar.o();
            }
            if (zO) {
                com.anythink.core.e.o oVarA = com.anythink.core.e.o.a(com.anythink.core.common.d.s.b().g());
                mVarE = oVarA.e(this.f5936a);
                if (mVarE == null) {
                    mVarE = oVarA.f(this.f5936a);
                }
                zO = mVarE != null && mVarE.be();
            } else {
                mVarE = null;
            }
            if (zO) {
                int i4 = mVarE.aQ() ? 13 : 14;
                if (this.f5938c != null) {
                    as asVarC2 = asVar.c();
                    asVarC2.f3811c = i4;
                    asVarC2.f3813e = null;
                    asVarC2.f3812d = null;
                    this.f5938c.a(asVar.a(), this.f5937b, this.f5936a, asVarC2, (com.anythink.core.common.d.a) null);
                }
            }
        }
        a(ceVar, asVar);
    }

    public final void a(int i2, final as asVar, ce ceVar, AdError adError) {
        boolean zIsMgWin;
        f fVar;
        try {
            zIsMgWin = asVar.b().getPreLoadInfo().getMgComparedResult().isMgWin();
        } catch (Throwable unused) {
            zIsMgWin = false;
        }
        if (ceVar != null && i2 == 2 && ceVar.b() && !zIsMgWin) {
            if (this.f5938c != null && !t.a().a(this.f5936a)) {
                com.anythink.core.common.d.s.b();
                com.anythink.core.common.d.s.b(new Runnable() { // from class: com.anythink.core.common.n.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        as asVarC = asVar.c();
                        asVarC.f3811c = 8;
                        asVarC.f3813e = null;
                        asVarC.f3812d = null;
                        f fVar2 = n.this.f5938c;
                        Context contextG = com.anythink.core.common.d.s.b().g();
                        n nVar = n.this;
                        fVar2.a(contextG, nVar.f5937b, nVar.f5936a, asVarC, (com.anythink.core.common.d.a) null);
                    }
                }, ceVar.c());
            }
        } else {
            if (i2 != 3 && (fVar = this.f5938c) != null) {
                fVar.k();
            }
            this.f5942g.onAdLoadFail(adError);
        }
        if (this.f5938c != null && asVar.e()) {
            this.f5938c.a(adError);
        }
        if (i2 != 2 && ATSDK.isNetworkLogDebug()) {
            Log.e("anythink", "ad load failed: " + this.f5936a + ", " + adError.printStackTrace());
        }
        a(ceVar, asVar);
    }

    private static void a(ce ceVar, as asVar) {
        com.anythink.core.e.b bVarB;
        com.anythink.core.common.r.g gVarG;
        if (ceVar == null || (bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p())) == null || (gVarG = bVarB.g()) == null || !v.a().a(ceVar.a())) {
            return;
        }
        v.a().a(gVarG, ceVar.a(), asVar);
    }

    private boolean a(f fVar, int i2) {
        com.anythink.core.e.m mVarA;
        return (i2 == 13 || (mVarA = com.anythink.core.e.o.a(com.anythink.core.common.d.s.b().g()).a(this.f5936a)) == null || fVar == null || ATAdxSetting.getInstance().isAdxNetworkMode(this.f5936a) || mVarA.q() != 1 || fVar.h() >= mVarA.r()) ? false : true;
    }

    private void a(int i2, as asVar, ce ceVar) {
        boolean zO;
        com.anythink.core.e.m mVarE;
        if (asVar == null || asVar.d()) {
            return;
        }
        boolean z2 = false;
        if (ceVar == null) {
            zO = i2 == 3;
        } else {
            zO = ceVar.o();
        }
        if (zO) {
            com.anythink.core.e.o oVarA = com.anythink.core.e.o.a(com.anythink.core.common.d.s.b().g());
            mVarE = oVarA.e(this.f5936a);
            if (mVarE == null) {
                mVarE = oVarA.f(this.f5936a);
            }
            if (mVarE != null && mVarE.be()) {
                z2 = true;
            }
            zO = z2;
        } else {
            mVarE = null;
        }
        if (zO) {
            int i3 = mVarE.aQ() ? 13 : 14;
            if (this.f5938c != null) {
                as asVarC = asVar.c();
                asVarC.f3811c = i3;
                asVarC.f3813e = null;
                asVarC.f3812d = null;
                this.f5938c.a(asVar.a(), this.f5937b, this.f5936a, asVarC, (com.anythink.core.common.d.a) null);
            }
        }
    }
}

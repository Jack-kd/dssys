package com.smartdigimkt.k2;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.QAIncentiveTaskView;
import com.smartdigimkt.v1.q2;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class p extends f {

    /* renamed from: i, reason: collision with root package name */
    public com.smartdigimkt.x3.d f41325i;

    /* renamed from: j, reason: collision with root package name */
    public BaseIncentiveTaskView f41326j;

    /* renamed from: k, reason: collision with root package name */
    public long f41327k;

    /* renamed from: l, reason: collision with root package name */
    public long f41328l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f41329m;

    /* renamed from: n, reason: collision with root package name */
    public int f41330n;

    /* renamed from: o, reason: collision with root package name */
    public int f41331o = 3;

    /* renamed from: p, reason: collision with root package name */
    public volatile boolean f41332p;

    /* renamed from: q, reason: collision with root package name */
    public long f41333q;

    /* renamed from: r, reason: collision with root package name */
    public long f41334r;

    @Override // com.smartdigimkt.k2.f
    public final void a(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, ViewGroup viewGroup, RelativeLayout relativeLayout, View view, int i2, e eVar) {
        super.a(context, cVar, aVar, viewGroup, relativeLayout, view, i2, eVar);
    }

    public void b() {
        com.smartdigimkt.c2.d dVar;
        this.f41332p = false;
        this.f41333q = 0L;
        this.f41334r = 0L;
        BaseIncentiveTaskView baseIncentiveTaskView = this.f41326j;
        if (baseIncentiveTaskView != null) {
            com.smartdigimkt.z3.d.a(baseIncentiveTaskView);
            e eVar = this.f41311h;
            if ((eVar instanceof q2) && (dVar = ((q2) eVar).f44581a.f43229o) != null) {
                dVar.f39650q = true;
                dVar.c();
            }
            this.f41326j.release();
            this.f41326j = null;
        }
    }

    public final boolean c() {
        com.smartdigimkt.l3.a aVar;
        com.smartdigimkt.m3.e eVar;
        if (this.f41305b != null && (aVar = this.f41306c) != null && (eVar = aVar.f41644r) != null) {
            com.smartdigimkt.m3.d dVar = eVar.f41897T1;
            if (!com.smartdigimkt.m3.h.a(dVar)) {
                return false;
            }
            com.smartdigimkt.m3.c cVar = this.f41305b;
            if (cVar.f41824o != 3) {
                return false;
            }
            if ((!TextUtils.isEmpty(cVar.f41820k) || !TextUtils.isEmpty(this.f41305b.f41822m)) && com.smartdigimkt.m3.o.b(dVar) >= 1) {
                return true;
            }
        }
        return false;
    }

    public void d() {
        com.smartdigimkt.s2.c.f43116c.set(0);
        this.f41332p = false;
        this.f41333q = 0L;
        this.f41334r = 0L;
        com.smartdigimkt.x3.d dVar = this.f41325i;
        if (dVar != null) {
            dVar.c();
            this.f41325i = null;
        }
        b();
    }

    public long e() {
        com.smartdigimkt.m3.e eVar = this.f41306c.f41644r;
        com.smartdigimkt.m3.d dVar = eVar.f41897T1;
        return eVar.f41944j1;
    }

    public boolean f() {
        return false;
    }

    @Override // com.smartdigimkt.k2.f
    public void a(int i2, HashMap map) {
        com.smartdigimkt.l3.a aVar;
        com.smartdigimkt.m3.e eVar;
        com.smartdigimkt.m3.c cVar;
        Context context;
        com.smartdigimkt.l3.a aVar2;
        com.smartdigimkt.m3.e eVar2;
        com.smartdigimkt.m3.e eVar3;
        if (!f()) {
            if (i2 == 131 || i2 == 128) {
                if (this.f41332p && (aVar = this.f41306c) != null && (eVar = aVar.f41644r) != null && com.smartdigimkt.m3.h.a(eVar.f41897T1) && (!this.f41332p || !c())) {
                    this.f41332p = false;
                    this.f41333q = 0L;
                    this.f41334r = 0L;
                    BaseIncentiveTaskView baseIncentiveTaskView = this.f41326j;
                    if (baseIncentiveTaskView != null && (baseIncentiveTaskView instanceof CountDownSkipIncentiveTaskView)) {
                        o oVar = new o(this, (CountDownSkipIncentiveTaskView) baseIncentiveTaskView);
                        com.smartdigimkt.b4.e.a().getClass();
                        if (com.smartdigimkt.b4.e.b()) {
                            oVar.run();
                        } else {
                            com.smartdigimkt.b4.e.a().a(oVar);
                        }
                    }
                }
            } else if (i2 == 111) {
                if (this.f41332p && c() && this.f41334r <= 0) {
                    this.f41334r = SystemClock.elapsedRealtime();
                }
            } else if (i2 == 110) {
                if (this.f41334r > 0) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f41334r;
                    this.f41334r = 0L;
                    if (jElapsedRealtime >= 200 && this.f41332p && c()) {
                        com.smartdigimkt.l3.a aVar3 = this.f41306c;
                        int iB = (aVar3 == null || (eVar3 = aVar3.f41644r) == null) ? 0 : com.smartdigimkt.m3.o.b(eVar3.f41897T1);
                        if (iB >= 1) {
                            long j2 = this.f41333q + jElapsedRealtime;
                            this.f41333q = j2;
                            if (j2 >= iB * 1000) {
                                this.f41332p = false;
                                this.f41333q = 0L;
                                this.f41334r = 0L;
                                BaseIncentiveTaskView baseIncentiveTaskView2 = this.f41326j;
                                if (baseIncentiveTaskView2 != null && (baseIncentiveTaskView2 instanceof CountDownSkipIncentiveTaskView)) {
                                    o oVar2 = new o(this, (CountDownSkipIncentiveTaskView) baseIncentiveTaskView2);
                                    com.smartdigimkt.b4.e.a().getClass();
                                    if (com.smartdigimkt.b4.e.b()) {
                                        oVar2.run();
                                    } else {
                                        com.smartdigimkt.b4.e.a().a(oVar2);
                                    }
                                }
                            }
                        }
                    }
                }
                if (this.f41332p && ((!this.f41332p || !c()) && (cVar = this.f41305b) != null && !TextUtils.isEmpty(cVar.f41822m) && (context = this.f41304a) != null && com.smartdigimkt.c5.k.c(context, this.f41305b.f41822m) && (aVar2 = this.f41306c) != null && (eVar2 = aVar2.f41644r) != null && com.smartdigimkt.m3.h.a(eVar2.f41897T1))) {
                    this.f41332p = false;
                    this.f41333q = 0L;
                    this.f41334r = 0L;
                    BaseIncentiveTaskView baseIncentiveTaskView3 = this.f41326j;
                    if (baseIncentiveTaskView3 != null && (baseIncentiveTaskView3 instanceof CountDownSkipIncentiveTaskView)) {
                        o oVar3 = new o(this, (CountDownSkipIncentiveTaskView) baseIncentiveTaskView3);
                        com.smartdigimkt.b4.e.a().getClass();
                        if (com.smartdigimkt.b4.e.b()) {
                            oVar3.run();
                        } else {
                            com.smartdigimkt.b4.e.a().a(oVar3);
                        }
                    }
                }
            }
        }
        if (i2 != 107 && i2 != 108) {
            if (i2 == 114) {
                if (this.f41325i == null) {
                    this.f41325i = new com.smartdigimkt.x3.d(e(), new l(this));
                }
                Object obj = map.get("video_length");
                if (obj != null && (obj instanceof Long)) {
                    this.f41327k = ((Long) obj).longValue();
                }
                com.smartdigimkt.x3.d dVar = this.f41325i;
                if (dVar != null) {
                    dVar.b();
                    return;
                }
                return;
            }
            if (i2 != 120) {
                switch (i2) {
                    case 110:
                        com.smartdigimkt.s2.c.a();
                        com.smartdigimkt.x3.d dVar2 = this.f41325i;
                        if (dVar2 != null) {
                            dVar2.b();
                        }
                        BaseIncentiveTaskView baseIncentiveTaskView4 = this.f41326j;
                        if (baseIncentiveTaskView4 != null) {
                            baseIncentiveTaskView4.onResume();
                            break;
                        }
                        break;
                    case 111:
                        com.smartdigimkt.x3.d dVar3 = this.f41325i;
                        if (dVar3 != null) {
                            dVar3.a();
                        }
                        BaseIncentiveTaskView baseIncentiveTaskView5 = this.f41326j;
                        if (baseIncentiveTaskView5 != null) {
                            baseIncentiveTaskView5.onPause();
                            break;
                        }
                        break;
                }
                return;
            }
        }
        d();
    }

    public BaseIncentiveTaskView a() {
        int i2 = this.f41306c.f41644r.f41941i1;
        this.f41330n = i2;
        if (i2 == 2) {
            return new QAIncentiveTaskView(this.f41304a);
        }
        if (i2 != 3) {
            return null;
        }
        if (c()) {
            return new m(this, this.f41304a);
        }
        return new CountDownSkipIncentiveTaskView(this.f41304a);
    }
}

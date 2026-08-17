package com.smartdigimkt.e;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.smartdigimkt.china.formatbusiness.ui.RvDoubleTaskIncentiveTaskView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView;
import java.util.HashMap;

/* loaded from: classes5.dex */
public abstract class i0 extends com.smartdigimkt.k2.p {

    /* renamed from: s, reason: collision with root package name */
    public volatile boolean f39941s;

    /* renamed from: t, reason: collision with root package name */
    public long f39942t;

    /* renamed from: u, reason: collision with root package name */
    public long f39943u;

    @Override // com.smartdigimkt.k2.p, com.smartdigimkt.k2.f
    public final void a(int i2, HashMap map) {
        com.smartdigimkt.l3.a aVar;
        com.smartdigimkt.m3.e eVar;
        Context context;
        com.smartdigimkt.l3.a aVar2;
        com.smartdigimkt.m3.e eVar2;
        if ((i2 == 131 || i2 == 128) && this.f39941s && (aVar = this.f41306c) != null && (eVar = aVar.f41644r) != null && com.smartdigimkt.m3.h.a(eVar.f41897T1) && !g()) {
            this.f39941s = false;
            this.f39942t = 0L;
            this.f39943u = 0L;
            BaseIncentiveTaskView baseIncentiveTaskView = this.f41326j;
            if (baseIncentiveTaskView != null && (baseIncentiveTaskView instanceof CountDownSkipIncentiveTaskView)) {
                com.smartdigimkt.k2.o oVar = new com.smartdigimkt.k2.o(this, (CountDownSkipIncentiveTaskView) baseIncentiveTaskView);
                com.smartdigimkt.b4.e.a().getClass();
                if (com.smartdigimkt.b4.e.b()) {
                    oVar.run();
                } else {
                    com.smartdigimkt.b4.e.a().a(oVar);
                }
            }
        }
        if (i2 == 111) {
            if (this.f39941s && g() && !com.smartdigimkt.s2.c.f43115b && com.smartdigimkt.s2.c.f43114a.get() <= 0 && com.smartdigimkt.s2.c.f43116c.get() <= 0 && this.f39943u <= 0) {
                this.f39943u = SystemClock.elapsedRealtime();
                h();
            }
        } else if (i2 == 110) {
            if (this.f39943u > 0) {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f39943u;
                this.f39943u = 0L;
                if (jElapsedRealtime >= 200 && this.f39941s && g()) {
                    this.f39942t += jElapsedRealtime;
                    int iH = h();
                    if (iH >= 1 && this.f39942t >= iH * 1000) {
                        this.f39941s = false;
                        this.f39942t = 0L;
                        this.f39943u = 0L;
                        BaseIncentiveTaskView baseIncentiveTaskView2 = this.f41326j;
                        if (baseIncentiveTaskView2 != null && (baseIncentiveTaskView2 instanceof CountDownSkipIncentiveTaskView)) {
                            com.smartdigimkt.k2.o oVar2 = new com.smartdigimkt.k2.o(this, (CountDownSkipIncentiveTaskView) baseIncentiveTaskView2);
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
            if (this.f39941s) {
                com.smartdigimkt.m3.c cVar = this.f41305b;
                String str = cVar != null ? cVar.f41822m : null;
                if (!TextUtils.isEmpty(str) && (context = this.f41304a) != null && com.smartdigimkt.c5.k.c(context, str) && (aVar2 = this.f41306c) != null && (eVar2 = aVar2.f41644r) != null && com.smartdigimkt.m3.h.a(eVar2.f41897T1) && !g()) {
                    this.f39941s = false;
                    this.f39942t = 0L;
                    this.f39943u = 0L;
                    BaseIncentiveTaskView baseIncentiveTaskView3 = this.f41326j;
                    if (baseIncentiveTaskView3 != null && (baseIncentiveTaskView3 instanceof CountDownSkipIncentiveTaskView)) {
                        com.smartdigimkt.k2.o oVar3 = new com.smartdigimkt.k2.o(this, (CountDownSkipIncentiveTaskView) baseIncentiveTaskView3);
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
        super.a(i2, map);
    }

    @Override // com.smartdigimkt.k2.p
    public final void b() {
        this.f39941s = false;
        this.f39942t = 0L;
        this.f39943u = 0L;
        super.b();
    }

    @Override // com.smartdigimkt.k2.p
    public final void d() {
        this.f39941s = false;
        this.f39942t = 0L;
        this.f39943u = 0L;
        super.d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0004, code lost:
    
        r0 = r0.f41644r;
     */
    @Override // com.smartdigimkt.k2.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long e() {
        /*
            r6 = this;
            com.smartdigimkt.l3.a r0 = r6.f41306c
            if (r0 == 0) goto L4b
            com.smartdigimkt.m3.e r0 = r0.f41644r
            if (r0 != 0) goto L9
            goto L4b
        L9:
            com.smartdigimkt.m3.d r1 = r0.f41897T1
            if (r1 == 0) goto L48
            boolean r2 = com.smartdigimkt.m3.h.a(r1)
            if (r2 != 0) goto L14
            goto L48
        L14:
            java.lang.String r2 = r1.a()
            boolean r3 = com.smartdigimkt.m3.o.a(r2)
            r4 = 1000(0x3e8, double:4.94E-321)
            if (r3 == 0) goto L29
            com.smartdigimkt.m3.n r0 = com.smartdigimkt.m3.o.a(r1)
            int r0 = r0.f42133a
        L26:
            long r0 = (long) r0
            long r0 = r0 * r4
            return r0
        L29:
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: org.json.JSONException -> L41
            java.lang.String r2 = r2.trim()     // Catch: org.json.JSONException -> L41
            r3.<init>(r2)     // Catch: org.json.JSONException -> L41
            java.lang.String r2 = "t_c_s"
            boolean r2 = r3.has(r2)     // Catch: org.json.JSONException -> L41
            if (r2 == 0) goto L45
            com.smartdigimkt.m3.n r1 = com.smartdigimkt.m3.o.a(r1)     // Catch: org.json.JSONException -> L41
            int r0 = r1.f42133a     // Catch: org.json.JSONException -> L41
            goto L26
        L41:
            r1 = move-exception
            r1.getMessage()
        L45:
            long r0 = r0.f41944j1
            return r0
        L48:
            long r0 = r0.f41944j1
            return r0
        L4b:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.e.i0.e():long");
    }

    @Override // com.smartdigimkt.k2.p
    public final boolean f() {
        return true;
    }

    public final boolean g() {
        com.smartdigimkt.l3.a aVar;
        com.smartdigimkt.m3.e eVar;
        if (!this.f39941s || this.f41305b == null || (aVar = this.f41306c) == null || (eVar = aVar.f41644r) == null || !com.smartdigimkt.m3.h.a(eVar.f41897T1)) {
            return false;
        }
        com.smartdigimkt.m3.c cVar = this.f41305b;
        int i2 = cVar.f41824o;
        if (i2 == 3) {
            if (TextUtils.isEmpty(cVar.f41820k) && TextUtils.isEmpty(this.f41305b.f41822m)) {
                return false;
            }
        } else if (i2 != 6 || TextUtils.isEmpty(cVar.f41782C)) {
            return false;
        }
        return h() >= 1;
    }

    public final int h() {
        com.smartdigimkt.m3.e eVar;
        int iC;
        com.smartdigimkt.l3.a aVar = this.f41306c;
        if (aVar == null || (eVar = aVar.f41644r) == null || (iC = com.smartdigimkt.m3.o.c(eVar.f41897T1)) < 1 || iC > 15) {
            return 0;
        }
        return iC;
    }

    @Override // com.smartdigimkt.k2.p
    public final BaseIncentiveTaskView a() {
        if (com.smartdigimkt.m3.h.a(this.f41306c.f41644r.f41897T1)) {
            this.f41330n = 3;
            return new RvDoubleTaskIncentiveTaskView(this.f41304a, this);
        }
        return super.a();
    }
}

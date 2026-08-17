package com.smartdigimkt.k2;

import androidx.work.WorkRequest;
import com.smartdigimkt.sdk.basead.ui.FullScreenATView;
import com.smartdigimkt.v1.q2;

/* loaded from: classes5.dex */
public final class n implements com.smartdigimkt.m2.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f41322a;

    public n(p pVar) {
        this.f41322a = pVar;
    }

    public final void a() {
        p pVar = this.f41322a;
        com.smartdigimkt.l3.a aVar = pVar.f41306c;
        com.smartdigimkt.m3.c cVar = pVar.f41305b;
        long j2 = pVar.f41328l;
        boolean z2 = pVar.f41329m;
        long j3 = pVar.f41327k;
        int i2 = pVar.f41331o;
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), "66");
        cVar2.f42817a = "1004733";
        cVar2.a(aVar);
        com.smartdigimkt.m3.e eVar = aVar.f41644r;
        if (eVar != null) {
            cVar2.f42828l = eVar.f41941i1 == 2 ? "1" : "2";
            cVar2.f42833q = String.valueOf(eVar.f41944j1);
            cVar2.f42834r = String.valueOf(aVar.f41644r.f41947k1);
            cVar2.f42836t = String.valueOf(aVar.f41644r.f41950l1);
            long j4 = aVar.f41644r.f41984x;
            if (j4 <= 0) {
                j4 = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
            }
            cVar2.f42837u = String.valueOf(j4);
        }
        cVar2.f42829m = String.valueOf(j2);
        cVar2.f42830n = String.valueOf(System.currentTimeMillis() - j2);
        if (cVar instanceof com.smartdigimkt.m3.b) {
            cVar2.f42831o = ((com.smartdigimkt.m3.b) cVar).f42054o0;
            cVar2.f42832p = cVar.f41806a;
        }
        cVar2.f42835s = z2 ? "1" : "2";
        cVar2.f42838v = String.valueOf(j3);
        cVar2.f42839w = String.valueOf(i2);
        com.smartdigimkt.y3.h.a(cVar2);
        this.f41322a.b();
    }

    public final void a(long j2) {
        com.smartdigimkt.p1.t tVar;
        e eVar = this.f41322a.f41311h;
        if (eVar instanceof q2) {
            q2 q2Var = (q2) eVar;
            if (j2 > 0) {
                FullScreenATView fullScreenATView = q2Var.f44581a;
                fullScreenATView.f43280U = Math.max(0L, fullScreenATView.f43280U - j2);
                FullScreenATView fullScreenATView2 = q2Var.f44581a;
                if (fullScreenATView2.f43283a0) {
                    return;
                }
                String str = FullScreenATView.TAG;
                fullScreenATView2.N();
                FullScreenATView fullScreenATView3 = q2Var.f44581a;
                if (fullScreenATView3.f43280U <= 0) {
                    fullScreenATView3.x();
                    return;
                }
                com.smartdigimkt.c2.d dVar = fullScreenATView3.f43229o;
                if (dVar != null) {
                    long jA = dVar.a();
                    if (jA > 0) {
                        FullScreenATView fullScreenATView4 = q2Var.f44581a;
                        if (jA >= fullScreenATView4.f43280U) {
                            fullScreenATView4.x();
                            return;
                        } else {
                            fullScreenATView4.b(fullScreenATView4.f43229o.a());
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            FullScreenATView fullScreenATView5 = q2Var.f44581a;
            if (!fullScreenATView5.f43412M0 && fullScreenATView5.R()) {
                com.smartdigimkt.y3.h.b(16, 53, fullScreenATView5.f43216b, fullScreenATView5.f43217c, com.smartdigimkt.m3.g.a(1), true);
                fullScreenATView5.f43412M0 = true;
                if (!fullScreenATView5.f43221g && (tVar = fullScreenATView5.f43303u0) != null) {
                    tVar.c();
                }
            }
            FullScreenATView fullScreenATView6 = q2Var.f44581a;
            if (fullScreenATView6.f43412M0) {
                return;
            }
            fullScreenATView6.x();
            q2Var.f44581a.c(1);
        }
    }
}

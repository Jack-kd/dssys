package com.smartdigimkt.r1;

import android.view.View;
import com.smartdigimkt.p1.u;
import java.util.Date;

/* loaded from: classes5.dex */
public final class j extends com.smartdigimkt.a4.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f42960a;

    public j(m mVar) {
        this.f42960a = mVar;
    }

    @Override // com.smartdigimkt.a4.a
    public final void recordImpression(View view) {
        m mVar = this.f42960a;
        if (mVar.f42967k) {
            return;
        }
        l lVar = mVar.f42971o;
        if (lVar != null) {
            lVar.a(114);
        }
        mVar.f42967k = true;
        com.smartdigimkt.s1.d dVarA = com.smartdigimkt.s1.d.a(mVar.f42945a);
        com.smartdigimkt.p3.a aVar = mVar.f42949e;
        dVarA.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str = dVarA.f43107b.format(new Date(jCurrentTimeMillis));
        com.smartdigimkt.i0.c cVarA = dVarA.a(aVar);
        if (cVarA.f40641f.equals(str)) {
            cVarA.f40639d++;
        } else {
            cVarA.f40639d = 1;
            cVarA.f40641f = str;
        }
        cVarA.f40640e = jCurrentTimeMillis;
        com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.s1.c(dVarA, cVarA));
        com.smartdigimkt.z.p.a(8, mVar.f42949e, new com.smartdigimkt.i0.l(mVar.f42946b, ""));
        com.smartdigimkt.p1.a aVar2 = mVar.f42963g;
        if (aVar2 != null) {
            aVar2.onAdShow(new u());
        }
    }
}

package com.smartdigimkt.a0;

import android.net.Uri;
import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f39250a;

    public l(m mVar) {
        this.f39250a = mVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String scheme;
        com.smartdigimkt.i0.a aVar;
        m mVar;
        com.smartdigimkt.m3.c cVar;
        com.smartdigimkt.m3.e eVar;
        r rVar;
        boolean z2 = com.smartdigimkt.x.l.a().f45040h;
        this.f39250a.f39255e.add(Boolean.valueOf(z2));
        if (this.f39250a.f39255e.size() == 3 && (cVar = (mVar = this.f39250a).f39251a) != null && (eVar = cVar.f41832w) != null && eVar.f41867J1 == 1 && !z2 && (rVar = mVar.f39256f) != null) {
            rVar.b();
        }
        if (this.f39250a.f39255e.size() < 5) {
            m mVar2 = this.f39250a;
            mVar2.getClass();
            com.smartdigimkt.b4.e.a().a(new l(mVar2), 1000L, 2);
            return;
        }
        m mVar3 = this.f39250a;
        if (TextUtils.isEmpty(mVar3.f39253c)) {
            scheme = "";
        } else {
            try {
                scheme = Uri.parse(mVar3.f39253c).getScheme();
            } catch (Throwable unused) {
            }
        }
        com.smartdigimkt.i0.l lVar = mVar3.f39254d;
        int i2 = (lVar == null || (aVar = lVar.f40671g) == null) ? -1 : aVar.f40631s;
        com.smartdigimkt.m3.c cVar2 = mVar3.f39251a;
        com.smartdigimkt.l3.a aVar2 = mVar3.f39252b;
        String str = mVar3.f39253c;
        ArrayList arrayList = mVar3.f39255e;
        boolean z3 = com.smartdigimkt.x.l.a().f45048p;
        if (cVar2 == null || aVar2 == null) {
            return;
        }
        com.smartdigimkt.q3.c cVar3 = new com.smartdigimkt.q3.c(String.valueOf(aVar2.f41628b), String.valueOf(aVar2.f41636j));
        cVar3.f42817a = "1004756";
        cVar3.a(aVar2);
        cVar3.f42828l = cVar2.f41806a;
        if (cVar2 instanceof com.smartdigimkt.m3.b) {
            cVar3.f42829m = ((com.smartdigimkt.m3.b) cVar2).f42054o0;
        }
        cVar3.f42830n = str;
        cVar3.f42831o = scheme;
        cVar3.f42832p = String.valueOf(aVar2.f41628b);
        cVar3.f42834r = String.valueOf(i2);
        if (arrayList != null && arrayList.size() == 5) {
            Boolean bool = (Boolean) arrayList.get(0);
            Boolean bool2 = (Boolean) arrayList.get(1);
            Boolean bool3 = (Boolean) arrayList.get(2);
            Boolean bool4 = (Boolean) arrayList.get(3);
            Boolean bool5 = (Boolean) arrayList.get(4);
            if (bool != null) {
                cVar3.f42835s = bool.booleanValue() ? "1" : "2";
            }
            if (bool2 != null) {
                cVar3.f42836t = bool2.booleanValue() ? "1" : "2";
            }
            if (bool3 != null) {
                cVar3.f42837u = bool3.booleanValue() ? "1" : "2";
            }
            if (bool4 != null) {
                cVar3.f42838v = bool4.booleanValue() ? "1" : "2";
            }
            if (bool5 != null) {
                cVar3.f42839w = bool5.booleanValue() ? "1" : "2";
            }
        }
        cVar3.f42840x = z3 ? "1" : "2";
        cVar3.f42841y = cVar2.i() ? "1" : "2";
        if (cVar2.f41824o == 3 && TextUtils.isEmpty(cVar2.f41822m) && !TextUtils.isEmpty(scheme)) {
            cVar3.f42842z = com.smartdigimkt.p.a.a(scheme, "://");
        }
        com.smartdigimkt.m3.e eVar2 = aVar2.f41644r;
        if (eVar2 != null) {
            cVar3.f42795A = String.valueOf(eVar2.f41877N);
        }
        com.smartdigimkt.y3.h.a(cVar3);
    }
}

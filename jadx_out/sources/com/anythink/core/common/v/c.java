package com.anythink.core.common.v;

import android.text.TextUtils;
import com.anythink.core.api.ATAdMixBidInfo;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.h.ay;
import com.anythink.core.common.h.bx;
import com.anythink.core.common.h.by;
import java.util.List;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8144a = "anythink_event_listener";

    /* renamed from: b, reason: collision with root package name */
    private static volatile c f8145b;

    /* renamed from: c, reason: collision with root package name */
    private final com.anythink.core.common.u.b f8146c = new com.anythink.core.common.u.b();

    private c() {
    }

    public static c a() {
        if (f8145b == null) {
            synchronized (c.class) {
                try {
                    if (f8145b == null) {
                        f8145b = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8145b;
    }

    public final com.anythink.core.common.u.b b() {
        return this.f8146c;
    }

    public final void c(ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter != null) {
            a(aTBaseAdAdapter.getTrackingInfo());
        }
    }

    public final void b(ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter != null) {
            b(aTBaseAdAdapter, aTBaseAdAdapter.getTrackingInfo(), true);
        }
    }

    public final void b(ATBaseAdAdapter aTBaseAdAdapter, com.anythink.core.common.h.n nVar, boolean z2) {
        this.f8146c.e(nVar);
        if (aTBaseAdAdapter != null && z2) {
            a(nVar, aTBaseAdAdapter.getUnitGroupInfo(), aTBaseAdAdapter, 1);
        }
        try {
            if (ATSDK.isCnSDK()) {
                com.anythink.core.bridge.a.a.a();
                com.anythink.core.bridge.a.a.a(aTBaseAdAdapter, com.anythink.core.bridge.a.a.f1724c, nVar.aS());
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(com.anythink.core.common.h.c cVar) {
        if (cVar != null) {
            try {
                ATBaseAdAdapter aTBaseAdAdapterE = cVar.e();
                if (aTBaseAdAdapterE != null) {
                    com.anythink.core.bridge.a.a.a();
                    com.anythink.core.bridge.a.a.a(aTBaseAdAdapterE, com.anythink.core.bridge.a.a.f1722a, aTBaseAdAdapterE.getTrackingInfo().aS());
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final void a(ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter != null) {
            a(aTBaseAdAdapter, aTBaseAdAdapter.getTrackingInfo(), true);
        }
    }

    public final void a(ATBaseAdAdapter aTBaseAdAdapter, com.anythink.core.common.h.n nVar, boolean z2) {
        this.f8146c.a((bx) nVar);
        if (aTBaseAdAdapter != null && z2) {
            a(nVar, aTBaseAdAdapter.getUnitGroupInfo(), aTBaseAdAdapter, 0);
        }
        try {
            if (ATSDK.isCnSDK()) {
                com.anythink.core.bridge.a.a.a();
                com.anythink.core.bridge.a.a.a(aTBaseAdAdapter, com.anythink.core.bridge.a.a.f1723b, nVar.aS());
            }
        } catch (Throwable unused) {
        }
    }

    public final void a(com.anythink.core.common.h.n nVar) {
        this.f8146c.c(nVar);
    }

    private void a(final com.anythink.core.common.h.n nVar, by byVar, final ATBaseAdAdapter aTBaseAdAdapter, final int i2) {
        if (nVar == null || byVar == null || byVar.n() == 8) {
            return;
        }
        com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8125h, new Runnable() { // from class: com.anythink.core.common.v.c.1
            @Override // java.lang.Runnable
            public final void run() {
                ATAdMixBidInfo.XBiddingInfo xBiddingInfo;
                ATAdMixBidInfo.BidEntity biddingInfo;
                List<com.anythink.core.common.h.c> listA;
                com.anythink.core.common.h.ad adVarY;
                try {
                    com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
                    if (bVarB == null || bVarB.c() == null || !bVarB.c().contains(28) || (xBiddingInfo = ATAdMixBidInfo.getInstance().getXBiddingInfo()) == null || (biddingInfo = xBiddingInfo.getBiddingInfo(com.anythink.core.common.d.k.a(aTBaseAdAdapter))) == null) {
                        return;
                    }
                    String adTittle = biddingInfo.getAdTittle();
                    String adUserName = biddingInfo.getAdUserName();
                    if (TextUtils.isEmpty(adTittle) && TextUtils.isEmpty(adUserName)) {
                        return;
                    }
                    String strAQ = nVar.aQ();
                    com.anythink.core.common.f fVarA = nVar.a();
                    if (fVarA == null || fVarA.e() == null || (listA = fVarA.e().a(strAQ)) == null) {
                        return;
                    }
                    for (com.anythink.core.common.h.c cVar : listA) {
                        if (cVar != null && cVar.c() == 0) {
                            com.anythink.core.common.h.n nVarI = cVar.i();
                            by unitGroupInfo = cVar.e().getUnitGroupInfo();
                            if (unitGroupInfo != null && unitGroupInfo.n() == 28 && unitGroupInfo.w() && (adVarY = unitGroupInfo.Y()) != null) {
                                ay ayVar = new ay(8, unitGroupInfo, nVarI, o.a(unitGroupInfo));
                                ayVar.a(biddingInfo);
                                ayVar.b(i2);
                                com.anythink.core.c.d.c.a(adVarY, ayVar, true, 32);
                            }
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }));
    }
}

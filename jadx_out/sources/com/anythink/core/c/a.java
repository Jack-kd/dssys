package com.anythink.core.c;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.AdError;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.aq;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.n;
import com.anythink.core.common.h.p;
import com.anythink.core.common.h.z;
import com.anythink.core.common.v.aa;
import com.anythink.core.common.v.ac;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.t;
import com.anythink.core.e.m;
import com.anythink.core.e.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class a extends d {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1851a = "a";

    /* renamed from: b, reason: collision with root package name */
    private List<by> f1852b;

    /* renamed from: c, reason: collision with root package name */
    private com.anythink.core.c.b.b f1853c;

    /* renamed from: d, reason: collision with root package name */
    private long f1854d;

    /* renamed from: e, reason: collision with root package name */
    private List<ATBaseAdAdapter> f1855e;

    /* renamed from: k, reason: collision with root package name */
    private m f1856k;

    /* renamed from: com.anythink.core.c.a$3, reason: invalid class name */
    public class AnonymousClass3 extends com.anythink.core.c.b.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ by f1863a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(ATBaseAdAdapter aTBaseAdAdapter, by byVar) {
            super(aTBaseAdAdapter);
            this.f1863a = byVar;
        }

        private void a(final ATBiddingResult aTBiddingResult, final com.anythink.core.c.c.c cVar, final com.anythink.core.c.c.b bVar) {
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8111T, new Runnable() { // from class: com.anythink.core.c.a.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.a(aTBiddingResult.isSuccessWithUseType(), aTBiddingResult, AnonymousClass3.this.f1863a, a.a(aTBiddingResult), cVar, bVar);
                }
            }));
        }

        @Override // com.anythink.core.api.ATBiddingListener
        public final void onC2SBidResult(ATBiddingResult aTBiddingResult) {
            ATBaseAdAdapter aTBaseAdAdapter = this.f1981c;
            String internalNetworkSDKVersion = "";
            if (aTBaseAdAdapter != null) {
                try {
                    internalNetworkSDKVersion = aTBaseAdAdapter.getInternalNetworkSDKVersion();
                } catch (Throwable unused) {
                }
                a.this.f1855e.remove(this.f1981c);
                this.f1981c.releaseLoadResource();
            }
            a(aTBiddingResult, null, new com.anythink.core.c.c.b(internalNetworkSDKVersion));
        }

        @Override // com.anythink.core.api.ATBiddingListener
        public final void onC2SBiddingResultWithCache(ATBiddingResult aTBiddingResult, BaseAd baseAd) {
            ATBaseAdAdapter aTBaseAdAdapter = this.f1981c;
            String internalNetworkSDKVersion = "";
            if (aTBaseAdAdapter != null) {
                try {
                    internalNetworkSDKVersion = aTBaseAdAdapter.getInternalNetworkSDKVersion();
                } catch (Throwable unused) {
                }
                a.this.f1855e.remove(this.f1981c);
                this.f1981c.releaseLoadResource();
            }
            a(aTBiddingResult, new com.anythink.core.c.c.c(this.f1981c, baseAd), new com.anythink.core.c.c.b(internalNetworkSDKVersion));
        }
    }

    /* renamed from: com.anythink.core.c.a$5, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass5 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1871a;

        static {
            int[] iArr = new int[ATAdConst.CURRENCY.values().length];
            f1871a = iArr;
            try {
                iArr[ATAdConst.CURRENCY.RMB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1871a[ATAdConst.CURRENCY.RMB_CENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1871a[ATAdConst.CURRENCY.USD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public a(com.anythink.core.common.h.a aVar) {
        super(aVar);
        this.f1852b = Collections.synchronizedList(new ArrayList(this.f1998f.f3576j));
        this.f1855e = Collections.synchronizedList(new ArrayList());
    }

    private void b(by byVar, com.anythink.core.c.b.b bVar) {
        p pVarA = t.a(byVar);
        ATBaseAdAdapter aTBaseAdAdapter = pVarA != null ? pVarA.f4352a : null;
        if (aTBaseAdAdapter == null) {
            String strB = byVar.u() + " not exist!";
            if (pVarA != null) {
                strB = pVarA.b(strB);
            }
            a(false, ATBiddingResult.fail(strB), byVar, -9, (com.anythink.core.c.c.c) null, (com.anythink.core.c.c.b) null);
            return;
        }
        this.f1855e.add(aTBaseAdAdapter);
        try {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(aTBaseAdAdapter, byVar);
            this.f1856k = o.a(this.f1998f.f3568b).a(this.f1998f.f3571e);
            as asVar = this.f1998f.f3569c;
            ATAdRequest aTAdRequestB = asVar != null ? asVar.b() : null;
            m mVar = this.f1856k;
            com.anythink.core.common.h.a aVar = this.f1998f;
            Map<String, Object> mapA = mVar.a(aVar.f3571e, aVar.f3570d, byVar, aTAdRequestB);
            try {
                double dA = com.anythink.core.c.d.b.a(this.f1998f, byVar);
                if (dA > 0.0d) {
                    mapA.put("bid_floor", Double.valueOf(dA * a(byVar)));
                }
            } catch (Throwable th) {
                th.getMessage();
            }
            n nVarAh = this.f1998f.f3585s.ah();
            ah.a(nVarAh, byVar, 0, false);
            com.anythink.core.common.v.o.a(mapA, nVarAh);
            if (byVar.n() == 22) {
                com.anythink.core.common.v.f.a(this.f1856k, mapA, byVar, this.f1998f.f3590x);
            }
            as asVar2 = this.f1998f.f3569c;
            Context contextA = asVar2 != null ? asVar2.a() : null;
            if (contextA == null) {
                contextA = this.f1998f.f3568b;
            }
            boolean zInternalStartBiddingRequest = aTBaseAdAdapter.internalStartBiddingRequest(contextA, mapA, this.f1998f.f3583q, new com.anythink.core.c.b.a(this.f1998f.f3585s, byVar.G(), mapA, anonymousClass3));
            if (bVar != null) {
                bVar.a(byVar, aTBaseAdAdapter);
            }
            if (zInternalStartBiddingRequest) {
                return;
            }
            a(ATBiddingResult.fail("This network don't support head bidding in current TopOn's version."), byVar);
        } catch (Throwable th2) {
            th2.printStackTrace();
            a(ATBiddingResult.fail(th2.getMessage()), byVar);
        }
    }

    @Override // com.anythink.core.c.d
    public final void a(final com.anythink.core.c.b.b bVar) {
        this.f1853c = bVar;
        List<by> list = this.f1998f.f3576j;
        this.f1854d = SystemClock.elapsedRealtime();
        for (int i2 = 0; i2 < list.size(); i2++) {
            final by byVar = list.get(i2);
            if (byVar != null) {
                long jBy = byVar.by();
                if (jBy > 0) {
                    com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8112U, new Runnable() { // from class: com.anythink.core.c.a.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (a.this.f2000h.get()) {
                                return;
                            }
                            a.this.a(byVar, bVar);
                        }
                    }), jBy);
                } else {
                    a(byVar, bVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final by byVar, final com.anythink.core.c.b.b bVar) {
        com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8113V, new Runnable() { // from class: com.anythink.core.c.a.2
            @Override // java.lang.Runnable
            public final void run() {
                a.b(a.this, byVar, bVar);
            }
        }));
    }

    private boolean a(by byVar, z zVar, long j2, int i2, com.anythink.core.c.c.c cVar, com.anythink.core.c.c.b bVar) throws Throwable {
        int i3;
        final ATBaseAdAdapter aTBaseAdAdapterA;
        boolean zIsSuccessWithUseType = zVar.isSuccessWithUseType();
        ad adVarA = a(byVar, zVar, j2, cVar, bVar);
        double price = zIsSuccessWithUseType ? adVarA.getPrice() : 0.0d;
        boolean zA = d.a(zIsSuccessWithUseType, byVar, adVarA);
        double dAX = byVar.aX();
        boolean z2 = dAX <= 0.0d || price <= dAX;
        AdError adErrorA = zIsSuccessWithUseType ? ac.a(0, this.f1998f.f3585s, byVar, adVarA) : null;
        boolean z3 = adErrorA != null;
        if (zIsSuccessWithUseType && !zA && z2 && !z3) {
            a(byVar, adVarA);
            String str = i.s.f2733m;
            com.anythink.core.common.h.a aVar = this.f1998f;
            aa.a(str, aVar.f3571e, com.anythink.core.common.v.o.f(String.valueOf(aVar.f3572f)), byVar);
            return true;
        }
        if (zA) {
            d.a(byVar, ATBidRequestInfo.LESS_THAN_BID_FLOOR_TYPE, j2, -11);
            byVar.b(price);
            byVar.e(adVarA.getSortPrice());
            byVar.a(adVarA);
        } else if (z3) {
            d.a(byVar, adErrorA.getPlatformMSG(), j2, -13);
            byVar.b(price);
            byVar.e(adVarA.getSortPrice());
            byVar.a(adVarA);
        } else {
            if (z2 || byVar.n() != 72) {
                i3 = i2;
            } else {
                zVar.errorMsg = ATBidRequestInfo.JAD_PRICE_EXCEPTION_TYPE;
                i3 = -12;
            }
            d.a(byVar, zVar.errorMsg, j2, i3);
            adVarA.errorMsg = zVar.getErrorMsg();
            byVar.a(adVarA);
        }
        if (cVar != null && (aTBaseAdAdapterA = cVar.a()) != null) {
            s.b();
            s.b(new Runnable() { // from class: com.anythink.core.c.a.4
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        ATBaseAdAdapter aTBaseAdAdapter = aTBaseAdAdapterA;
                        if (aTBaseAdAdapter != null) {
                            aTBaseAdAdapter.internalDestroy();
                        }
                    } catch (Throwable th) {
                        Log.e("anythink", "destroy error:" + aTBaseAdAdapterA, th);
                    }
                }
            });
        }
        String str2 = i.s.f2734n;
        com.anythink.core.common.h.a aVar2 = this.f1998f;
        aa.a(str2, aVar2.f3571e, com.anythink.core.common.v.o.f(String.valueOf(aVar2.f3572f)), byVar);
        return false;
    }

    private static int b(ATBiddingResult aTBiddingResult) {
        if (aTBiddingResult.isSuccessWithUseType()) {
            return 0;
        }
        return TextUtils.equals(aTBiddingResult.errorMsg, ATBidRequestInfo.BID_TYPE_ERROR_TYPE) ? -10 : -1;
    }

    private static boolean b(double d2, by byVar) {
        double dAX = byVar.aX();
        return dAX <= 0.0d || d2 <= dAX;
    }

    public static /* synthetic */ void b(a aVar, by byVar, com.anythink.core.c.b.b bVar) {
        p pVarA = t.a(byVar);
        ATBaseAdAdapter aTBaseAdAdapter = pVarA != null ? pVarA.f4352a : null;
        if (aTBaseAdAdapter == null) {
            String strB = byVar.u() + " not exist!";
            if (pVarA != null) {
                strB = pVarA.b(strB);
            }
            aVar.a(false, ATBiddingResult.fail(strB), byVar, -9, (com.anythink.core.c.c.c) null, (com.anythink.core.c.c.b) null);
            return;
        }
        aVar.f1855e.add(aTBaseAdAdapter);
        try {
            AnonymousClass3 anonymousClass3 = aVar.new AnonymousClass3(aTBaseAdAdapter, byVar);
            aVar.f1856k = o.a(aVar.f1998f.f3568b).a(aVar.f1998f.f3571e);
            as asVar = aVar.f1998f.f3569c;
            ATAdRequest aTAdRequestB = asVar != null ? asVar.b() : null;
            m mVar = aVar.f1856k;
            com.anythink.core.common.h.a aVar2 = aVar.f1998f;
            Map<String, Object> mapA = mVar.a(aVar2.f3571e, aVar2.f3570d, byVar, aTAdRequestB);
            try {
                double dA = com.anythink.core.c.d.b.a(aVar.f1998f, byVar);
                if (dA > 0.0d) {
                    mapA.put("bid_floor", Double.valueOf(dA * aVar.a(byVar)));
                }
            } catch (Throwable th) {
                th.getMessage();
            }
            n nVarAh = aVar.f1998f.f3585s.ah();
            ah.a(nVarAh, byVar, 0, false);
            com.anythink.core.common.v.o.a(mapA, nVarAh);
            if (byVar.n() == 22) {
                com.anythink.core.common.v.f.a(aVar.f1856k, mapA, byVar, aVar.f1998f.f3590x);
            }
            as asVar2 = aVar.f1998f.f3569c;
            Context contextA = asVar2 != null ? asVar2.a() : null;
            if (contextA == null) {
                contextA = aVar.f1998f.f3568b;
            }
            boolean zInternalStartBiddingRequest = aTBaseAdAdapter.internalStartBiddingRequest(contextA, mapA, aVar.f1998f.f3583q, new com.anythink.core.c.b.a(aVar.f1998f.f3585s, byVar.G(), mapA, anonymousClass3));
            if (bVar != null) {
                bVar.a(byVar, aTBaseAdAdapter);
            }
            if (zInternalStartBiddingRequest) {
                return;
            }
            aVar.a(ATBiddingResult.fail("This network don't support head bidding in current TopOn's version."), byVar);
        } catch (Throwable th2) {
            th2.printStackTrace();
            aVar.a(ATBiddingResult.fail(th2.getMessage()), byVar);
        }
    }

    private static void a(by byVar, z zVar) {
        Object extra;
        if (byVar.n() != 75 || (extra = zVar.getExtra()) == null) {
            return;
        }
        String str = (String) extra;
        JSONObject jSONObjectAZ = byVar.aZ();
        if (jSONObjectAZ == null || TextUtils.isEmpty(str)) {
            return;
        }
        double dOptDouble = jSONObjectAZ.optDouble(str, 0.0d);
        if (dOptDouble > 0.0d) {
            zVar.setSortPrice(dOptDouble);
            zVar.setPrice(dOptDouble);
        }
    }

    private ad a(by byVar, z zVar, long j2, com.anythink.core.c.c.c cVar, com.anythink.core.c.c.b bVar) {
        double dA;
        Double dValueOf;
        double dA2;
        Double d2;
        a(byVar, zVar);
        byVar.e(j2);
        byVar.a(zVar.currency);
        double dA3 = a(zVar.getSortPrice(), byVar);
        boolean zIsSamePrice = zVar.isSamePrice();
        double dA4 = zIsSamePrice ? dA3 : a(zVar.getPrice(), byVar);
        if (dA3 <= 0.0d) {
            byVar.o();
            byVar.G();
            dValueOf = Double.valueOf(dA3);
            dA = com.anythink.core.common.v.o.a(byVar);
        } else {
            dA = dA3;
            dValueOf = null;
        }
        if (dA4 <= 0.0d) {
            byVar.o();
            byVar.G();
            Double dValueOf2 = Double.valueOf(dA4);
            dA2 = com.anythink.core.common.v.o.a(byVar);
            d2 = dValueOf2;
        } else {
            dA2 = dA4;
            d2 = null;
        }
        if (dValueOf != null || d2 != null) {
            com.anythink.core.common.h.a aVar = this.f1998f;
            com.anythink.core.common.u.f.a(aVar.f3570d, aVar.f3571e, byVar, dValueOf, d2, bVar);
        }
        ad adVar = new ad(zVar.isSuccessWithUseType(), dA, dA2, zVar.token, zVar.winNoticeUrl, zVar.loseNoticeUrl, zVar.displayNoticeUrl, "");
        adVar.f3679l = a(byVar);
        ATAdConst.CURRENCY currency = zVar.currency;
        if (currency != null) {
            adVar.f3669b = currency.toString();
        }
        adVar.setExtra(zVar.getExtra());
        adVar.setBiddingNotice(zVar.biddingNotice);
        adVar.f3673f = byVar.A() + System.currentTimeMillis();
        adVar.f3672e = byVar.A();
        adVar.f3678k = byVar.G();
        adVar.f3671d = byVar.n();
        adVar.f3686s = cVar;
        adVar.f3687t = cVar != null;
        double dA5 = zVar.originPrice;
        int i2 = AnonymousClass5.f1871a[zVar.currency.ordinal()];
        if (i2 == 1) {
            dA5 = zVar.originPrice;
        } else if (i2 == 2) {
            dA5 = zVar.originPrice / 100.0d;
        } else if (i2 == 3) {
            dA5 = zVar.originPrice * com.anythink.core.common.v.s.a();
        }
        adVar.rmbPrice = dA5;
        a(byVar.n(), adVar, 0.0d, zIsSamePrice);
        a((z) adVar, byVar);
        com.anythink.core.common.h.a aVar2 = this.f1998f;
        adVar.commonAdManager = aVar2 != null ? aVar2.f3566J : null;
        return adVar;
    }

    @Override // com.anythink.core.c.d
    public final void a(by byVar, z zVar, long j2) throws Throwable {
        a(byVar, zVar, j2, -1, (com.anythink.core.c.c.c) null, (com.anythink.core.c.c.b) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(boolean r12, com.anythink.core.api.ATBiddingResult r13, com.anythink.core.common.h.by r14, int r15, com.anythink.core.c.c.c r16, com.anythink.core.c.c.b r17) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.c.a.a(boolean, com.anythink.core.api.ATBiddingResult, com.anythink.core.common.h.by, int, com.anythink.core.c.c.c, com.anythink.core.c.c.b):void");
    }

    private synchronized void a(ATBiddingResult aTBiddingResult, by byVar) {
        a(false, aTBiddingResult, byVar, -1, (com.anythink.core.c.c.c) null, (com.anythink.core.c.c.b) null);
    }

    private static ATBiddingResult a(String str) {
        return ATBiddingResult.fail(str);
    }

    @Override // com.anythink.core.c.d
    public final synchronized void a() throws Throwable {
        try {
            try {
                if (!this.f2000h.get()) {
                    this.f2000h.set(true);
                    ArrayList arrayList = new ArrayList(3);
                    ArrayList arrayList2 = new ArrayList(3);
                    for (by byVar : this.f1852b) {
                        if (a(byVar, "bid timeout", -3)) {
                            arrayList.add(byVar);
                        } else {
                            a(byVar, ATBiddingResult.fail("bid timeout!"), SystemClock.elapsedRealtime() - this.f1854d, -3, (com.anythink.core.c.c.c) null, (com.anythink.core.c.c.b) null);
                            arrayList2.add(byVar);
                        }
                    }
                    this.f1852b.clear();
                    com.anythink.core.c.b.b bVar = this.f1853c;
                    if (bVar != null) {
                        bVar.a(arrayList, arrayList2);
                    }
                    this.f1853c = null;
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    private static void a(z zVar, by byVar) {
        double dAY = byVar.aY();
        if (dAY > 0.0d) {
            double d2 = zVar.originPrice * (1.0d - dAY);
            zVar.setPrice(d2);
            zVar.setSortPrice(d2);
        }
    }

    private void a(m mVar, by byVar) {
        aq aqVarBe;
        aq aqVarBj;
        if (mVar == null || byVar == null || (aqVarBe = byVar.be()) == null || (aqVarBj = mVar.bj()) == null) {
            return;
        }
        String strC = aqVarBj.c();
        aqVarBe.c(strC);
        if (TextUtils.isEmpty(strC)) {
            return;
        }
        String strG = byVar.G();
        aqVarBe.b(com.anythink.core.common.q.a.b(strC, strG + "_" + byVar.K() + "_" + this.f1998f.f3570d).a());
        aqVarBe.d(com.anythink.core.common.q.a.b(strC, strG + "_" + byVar.j() + "_" + this.f1998f.f3570d).a());
    }

    public static /* synthetic */ int a(ATBiddingResult aTBiddingResult) {
        if (aTBiddingResult.isSuccessWithUseType()) {
            return 0;
        }
        return TextUtils.equals(aTBiddingResult.errorMsg, ATBidRequestInfo.BID_TYPE_ERROR_TYPE) ? -10 : -1;
    }
}

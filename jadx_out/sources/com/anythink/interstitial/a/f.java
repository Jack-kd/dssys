package com.anythink.interstitial.a;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.a.b;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.k;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.n;
import com.anythink.core.common.u.g;
import com.anythink.core.common.v.aa;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.d;
import com.anythink.interstitial.api.ATInterstitialExListener;
import com.anythink.interstitial.api.ATInterstitialListener;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener;
import java.util.Map;

/* loaded from: classes2.dex */
public final class f implements CustomInterstitialEventListener {

    /* renamed from: a, reason: collision with root package name */
    ATInterstitialListener f9138a;

    /* renamed from: b, reason: collision with root package name */
    CustomInterstitialAdapter f9139b;

    /* renamed from: c, reason: collision with root package name */
    long f9140c;

    /* renamed from: d, reason: collision with root package name */
    long f9141d;

    /* renamed from: e, reason: collision with root package name */
    int f9142e = 0;

    /* renamed from: f, reason: collision with root package name */
    boolean f9143f = true;

    /* renamed from: g, reason: collision with root package name */
    boolean f9144g;

    /* renamed from: h, reason: collision with root package name */
    private final a f9145h;

    /* renamed from: i, reason: collision with root package name */
    private final com.anythink.core.common.f f9146i;

    /* renamed from: com.anythink.interstitial.a.f$10, reason: invalid class name */
    public class AnonymousClass10 implements Runnable {
        public AnonymousClass10() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            f.this.f9145h.a();
        }
    }

    /* renamed from: com.anythink.interstitial.a.f$2, reason: invalid class name */
    public class AnonymousClass2 implements d.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f9157a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ CustomInterstitialAdapter f9158b;

        public AnonymousClass2(n nVar, CustomInterstitialAdapter customInterstitialAdapter) {
            this.f9157a = nVar;
            this.f9158b = customInterstitialAdapter;
        }

        @Override // com.anythink.core.common.v.d.a
        public final void a() {
            ah.b(this.f9157a, this.f9158b);
            com.anythink.core.common.u.e.a(s.b().g());
            com.anythink.core.common.u.e.a(4, this.f9157a, this.f9158b.getUnitGroupInfo());
        }

        @Override // com.anythink.core.common.v.d.a
        public final void b() {
        }
    }

    /* renamed from: com.anythink.interstitial.a.f$9, reason: invalid class name */
    public class AnonymousClass9 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ CustomInterstitialAdapter f9179a;

        public AnonymousClass9(CustomInterstitialAdapter customInterstitialAdapter) {
            this.f9179a = customInterstitialAdapter;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                com.anythink.core.common.v.d.a().d(this.f9179a);
                this.f9179a.clearImpressionListener();
                this.f9179a.internalDestroy();
            } catch (Throwable unused) {
            }
        }
    }

    public f(CustomInterstitialAdapter customInterstitialAdapter, ATInterstitialListener aTInterstitialListener, a aVar, com.anythink.core.common.f fVar) {
        this.f9138a = aTInterstitialListener;
        this.f9139b = customInterstitialAdapter;
        this.f9145h = aVar;
        this.f9146i = fVar;
        if (aVar != null) {
            aVar.a(customInterstitialAdapter, this);
        }
    }

    private void b(CustomInterstitialAdapter customInterstitialAdapter, long j2, long j3) {
        if (this.f9144g) {
            return;
        }
        this.f9144g = true;
        com.anythink.core.common.v.c.a().a(customInterstitialAdapter);
        this.f9140c = j2;
        this.f9141d = j3;
        k kVarA = k.a(customInterstitialAdapter);
        if (customInterstitialAdapter != null) {
            n nVarA = a(customInterstitialAdapter);
            nVarA.a(customInterstitialAdapter.getInternalNetworkInfoMap());
            String ilrd = customInterstitialAdapter.getILRD();
            if (!TextUtils.isEmpty(ilrd)) {
                nVarA.d(ilrd);
            }
            com.anythink.core.common.v.d.a().a(nVarA, customInterstitialAdapter.getUnitGroupInfo(), 6);
            aa.a(nVarA, i.s.f2723c, i.s.f2733m, "");
            com.anythink.core.common.v.d.a().a(customInterstitialAdapter, new AnonymousClass2(nVarA, customInterstitialAdapter));
            com.anythink.core.common.f fVarA = nVarA.a();
            if (fVarA != null) {
                fVarA.a(kVarA);
            }
            a(nVarA.aQ(), 6);
        }
        if (this.f9138a != null) {
            if (kVarA.getNetworkFirmId() == -1) {
                g.a("Interstitial", customInterstitialAdapter, null);
            }
            this.f9138a.onInterstitialAdShow(kVarA);
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
    public final void onDeeplinkCallback(final boolean z2) {
        final CustomInterstitialAdapter customInterstitialAdapter = this.f9139b;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bj, new Runnable() { // from class: com.anythink.interstitial.a.f.3
            @Override // java.lang.Runnable
            public final void run() {
                ATInterstitialListener aTInterstitialListener = f.this.f9138a;
                if (aTInterstitialListener != null && (aTInterstitialListener instanceof ATInterstitialExListener)) {
                    ((ATInterstitialExListener) aTInterstitialListener).onDeeplinkCallback(k.a(customInterstitialAdapter), z2);
                }
                CustomInterstitialAdapter customInterstitialAdapter2 = customInterstitialAdapter;
                if (customInterstitialAdapter2 != null) {
                    aa.a(customInterstitialAdapter2.getTrackingInfo(), i.s.f2730j, z2 ? i.s.f2733m : i.s.f2734n, "");
                }
            }
        }));
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
    public final void onDownloadConfirm(final Context context, final ATNetworkConfirmInfo aTNetworkConfirmInfo) {
        final CustomInterstitialAdapter customInterstitialAdapter = this.f9139b;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bl, new Runnable() { // from class: com.anythink.interstitial.a.f.4
            @Override // java.lang.Runnable
            public final void run() {
                ATInterstitialListener aTInterstitialListener = f.this.f9138a;
                if (aTInterstitialListener != null && (aTInterstitialListener instanceof ATInterstitialExListener)) {
                    ((ATInterstitialExListener) aTInterstitialListener).onDownloadConfirm(context, k.a(customInterstitialAdapter), aTNetworkConfirmInfo);
                }
                CustomInterstitialAdapter customInterstitialAdapter2 = customInterstitialAdapter;
                if (customInterstitialAdapter2 != null) {
                    aa.a(customInterstitialAdapter2.getTrackingInfo(), i.s.f2731k, i.s.f2733m, "");
                }
            }
        }));
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
    public final void onInterstitialAdClicked() {
        final CustomInterstitialAdapter customInterstitialAdapter = this.f9139b;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bm, new Runnable() { // from class: com.anythink.interstitial.a.f.11
            @Override // java.lang.Runnable
            public final void run() {
                CustomInterstitialAdapter customInterstitialAdapter2 = customInterstitialAdapter;
                if (customInterstitialAdapter2 != null) {
                    n nVarA = f.this.a(customInterstitialAdapter2);
                    ah.c(nVarA, customInterstitialAdapter);
                    com.anythink.core.common.u.e.a(s.b().g());
                    com.anythink.core.common.u.e.a(6, nVarA);
                    if (nVarA != null ? nVarA.aB() : false) {
                        return;
                    } else {
                        aa.a(nVarA, i.s.f2724d, i.s.f2733m, "");
                    }
                }
                com.anythink.core.common.v.c.a().b(customInterstitialAdapter);
                ATInterstitialListener aTInterstitialListener = f.this.f9138a;
                if (aTInterstitialListener != null) {
                    aTInterstitialListener.onInterstitialAdClicked(k.a(customInterstitialAdapter));
                }
                s.b();
                s.b(new Runnable() { // from class: com.anythink.interstitial.a.f.11.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                        if (customInterstitialAdapter == null || f.this.f9145h == null) {
                            return;
                        }
                        f.this.f9145h.b(customInterstitialAdapter);
                    }
                });
            }
        }));
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
    public final void onInterstitialAdClose() {
        a aVar;
        final CustomInterstitialAdapter customInterstitialAdapter = this.f9139b;
        if (customInterstitialAdapter != null && (aVar = this.f9145h) != null) {
            aVar.c(customInterstitialAdapter);
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bn, new Runnable() { // from class: com.anythink.interstitial.a.f.8
            @Override // java.lang.Runnable
            public final void run() {
                f.a(f.this, customInterstitialAdapter, jCurrentTimeMillis, jElapsedRealtime);
            }
        }));
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
    public final void onInterstitialAdReward() {
        final CustomInterstitialAdapter customInterstitialAdapter = this.f9139b;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bk, new Runnable() { // from class: com.anythink.interstitial.a.f.5
            @Override // java.lang.Runnable
            public final void run() {
                ATInterstitialListener aTInterstitialListener = f.this.f9138a;
                if (aTInterstitialListener != null && (aTInterstitialListener instanceof ATInterstitialExListener)) {
                    ((ATInterstitialExListener) aTInterstitialListener).onInterstitialAdReward(k.a(customInterstitialAdapter));
                }
                CustomInterstitialAdapter customInterstitialAdapter2 = customInterstitialAdapter;
                if (customInterstitialAdapter2 != null) {
                    aa.a(customInterstitialAdapter2.getTrackingInfo(), i.s.f2729i, i.s.f2733m, "");
                }
            }
        }));
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
    public final void onInterstitialAdShow() {
        a aVar;
        final CustomInterstitialAdapter customInterstitialAdapter = this.f9139b;
        if (customInterstitialAdapter != null && (aVar = this.f9145h) != null) {
            aVar.a(customInterstitialAdapter);
        }
        if (customInterstitialAdapter == null || (com.anythink.core.common.v.d.a().a(customInterstitialAdapter) && com.anythink.core.common.v.d.a().b(customInterstitialAdapter))) {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bo, new Runnable() { // from class: com.anythink.interstitial.a.f.12
                @Override // java.lang.Runnable
                public final void run() {
                    f.b(f.this, customInterstitialAdapter, jCurrentTimeMillis, jElapsedRealtime);
                }
            }));
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
    public final void onInterstitialAdVideoEnd() {
        final CustomInterstitialAdapter customInterstitialAdapter = this.f9139b;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bp, new Runnable() { // from class: com.anythink.interstitial.a.f.6
            @Override // java.lang.Runnable
            public final void run() {
                CustomInterstitialAdapter customInterstitialAdapter2 = customInterstitialAdapter;
                if (customInterstitialAdapter2 != null) {
                    if (customInterstitialAdapter2.getDismissType() == 0) {
                        f.this.f9142e = 3;
                    }
                    n trackingInfo = customInterstitialAdapter.getTrackingInfo();
                    com.anythink.core.common.u.e.a(s.b().g());
                    com.anythink.core.common.u.e.a(9, trackingInfo);
                    ATInterstitialListener aTInterstitialListener = f.this.f9138a;
                    if (aTInterstitialListener != null) {
                        aTInterstitialListener.onInterstitialAdVideoEnd(k.a(customInterstitialAdapter));
                    }
                    aa.a(trackingInfo, i.s.f2727g, i.s.f2733m, "");
                }
            }
        }));
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
    public final void onInterstitialAdVideoError(String str, final String str2) {
        final CustomInterstitialAdapter customInterstitialAdapter = this.f9139b;
        final AdError errorCode = ErrorCode.getErrorCode(ErrorCode.adShowError, str, str2);
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bq, new Runnable() { // from class: com.anythink.interstitial.a.f.7
            @Override // java.lang.Runnable
            public final void run() {
                f.this.f9142e = 99;
                CustomInterstitialAdapter customInterstitialAdapter2 = customInterstitialAdapter;
                if (customInterstitialAdapter2 != null) {
                    n trackingInfo = customInterstitialAdapter2.getTrackingInfo();
                    if (trackingInfo.Z() == 66) {
                        f.this.f9143f = false;
                    }
                    com.anythink.core.common.u.f.a(trackingInfo, errorCode, customInterstitialAdapter.getInternalNetworkInfoMap());
                    String strAQ = trackingInfo.aQ();
                    f.b(trackingInfo);
                    f.this.a(strAQ, 7);
                    aa.a(trackingInfo, i.s.f2728h, i.s.f2734n, str2);
                }
                ATInterstitialListener aTInterstitialListener = f.this.f9138a;
                if (aTInterstitialListener != null) {
                    aTInterstitialListener.onInterstitialAdVideoError(errorCode);
                }
            }
        }));
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
    public final void onInterstitialAdVideoStart() {
        final CustomInterstitialAdapter customInterstitialAdapter = this.f9139b;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.br, new Runnable() { // from class: com.anythink.interstitial.a.f.1
            @Override // java.lang.Runnable
            public final void run() {
                CustomInterstitialAdapter customInterstitialAdapter2 = customInterstitialAdapter;
                if (customInterstitialAdapter2 != null) {
                    n trackingInfo = customInterstitialAdapter2.getTrackingInfo();
                    if (f.this.f9143f) {
                        com.anythink.core.common.u.e.a(s.b().g());
                        com.anythink.core.common.u.e.a(8, trackingInfo);
                        ATInterstitialListener aTInterstitialListener = f.this.f9138a;
                        if (aTInterstitialListener != null) {
                            aTInterstitialListener.onInterstitialAdVideoStart(k.a(customInterstitialAdapter));
                        }
                    }
                }
            }
        }));
    }

    private void a(CustomInterstitialAdapter customInterstitialAdapter, long j2, long j3) {
        if (customInterstitialAdapter != null) {
            n trackingInfo = customInterstitialAdapter.getTrackingInfo();
            int dismissType = this.f9142e;
            if (dismissType == 0) {
                dismissType = customInterstitialAdapter.getDismissType();
            }
            if (dismissType == 0) {
                dismissType = 1;
            }
            trackingInfo.K(dismissType);
            a aVar = this.f9145h;
            if (aVar != null) {
                trackingInfo.aj(aVar.c());
                trackingInfo.ah(this.f9145h.f());
                trackingInfo.ai(this.f9145h.e());
            }
            aa.a(trackingInfo, i.s.f2725e, i.s.f2733m, "");
            long j4 = this.f9140c;
            if (j4 != 0) {
                com.anythink.core.common.u.f.a(trackingInfo, false, j4, j2, j3 - this.f9141d);
            }
            Map<String, Object> adExtraInfoMap = customInterstitialAdapter.getAdExtraInfoMap();
            if (adExtraInfoMap != null) {
                Object obj = adExtraInfoMap.get(b.C0047b.f2179a);
                if (obj instanceof Integer) {
                    trackingInfo.S(((Integer) obj).intValue());
                }
            }
            com.anythink.core.common.v.c.a().c(customInterstitialAdapter);
            com.anythink.core.common.u.f.a(trackingInfo, false);
            s.b();
            s.b(new AnonymousClass9(customInterstitialAdapter));
            a aVar2 = this.f9145h;
            if (aVar2 != null) {
                if (aVar2.b() != 1) {
                    s.b();
                    s.b(new AnonymousClass10());
                    ATInterstitialListener aTInterstitialListener = this.f9138a;
                    if (aTInterstitialListener != null) {
                        aTInterstitialListener.onInterstitialAdClose(k.a(trackingInfo, customInterstitialAdapter));
                    }
                }
            } else {
                ATInterstitialListener aTInterstitialListener2 = this.f9138a;
                if (aTInterstitialListener2 != null) {
                    aTInterstitialListener2.onInterstitialAdClose(k.a(trackingInfo, customInterstitialAdapter));
                }
            }
            b(trackingInfo);
            a(trackingInfo.aQ(), 18);
        }
        s.b().ai();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(n nVar) {
        com.anythink.core.common.f fVarA;
        com.anythink.core.common.h.i iVarS;
        if (nVar == null || (fVarA = nVar.a()) == null || (iVarS = fVarA.s()) == null) {
            return;
        }
        fVarA.t();
        fVarA.c(fVarA.d(iVarS.a()));
    }

    public static /* synthetic */ void b(f fVar, CustomInterstitialAdapter customInterstitialAdapter, long j2, long j3) {
        if (fVar.f9144g) {
            return;
        }
        fVar.f9144g = true;
        com.anythink.core.common.v.c.a().a(customInterstitialAdapter);
        fVar.f9140c = j2;
        fVar.f9141d = j3;
        k kVarA = k.a(customInterstitialAdapter);
        if (customInterstitialAdapter != null) {
            n nVarA = fVar.a(customInterstitialAdapter);
            nVarA.a(customInterstitialAdapter.getInternalNetworkInfoMap());
            String ilrd = customInterstitialAdapter.getILRD();
            if (!TextUtils.isEmpty(ilrd)) {
                nVarA.d(ilrd);
            }
            com.anythink.core.common.v.d.a().a(nVarA, customInterstitialAdapter.getUnitGroupInfo(), 6);
            aa.a(nVarA, i.s.f2723c, i.s.f2733m, "");
            com.anythink.core.common.v.d.a().a(customInterstitialAdapter, fVar.new AnonymousClass2(nVarA, customInterstitialAdapter));
            com.anythink.core.common.f fVarA = nVarA.a();
            if (fVarA != null) {
                fVarA.a(kVarA);
            }
            fVar.a(nVarA.aQ(), 6);
        }
        if (fVar.f9138a != null) {
            if (kVarA.getNetworkFirmId() == -1) {
                g.a("Interstitial", customInterstitialAdapter, null);
            }
            fVar.f9138a.onInterstitialAdShow(kVarA);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public n a(CustomInterstitialAdapter customInterstitialAdapter) {
        a aVar;
        n trackingInfo = customInterstitialAdapter.getTrackingInfo();
        if (trackingInfo != null && (aVar = this.f9145h) != null) {
            if (aVar.b() == 0) {
                trackingInfo.aj(0);
                trackingInfo.ak(-1);
                return trackingInfo;
            }
            trackingInfo.aj(this.f9145h.c());
            trackingInfo.ak(this.f9145h.d());
        }
        return trackingInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i2) {
        com.anythink.core.common.f fVar;
        if (TextUtils.isEmpty(str) || (fVar = this.f9146i) == null || !fVar.a((ATAdStatusInfo) null, i2)) {
            return;
        }
        as asVar = new as();
        asVar.a(s.b().M());
        asVar.f3811c = i2;
        if (fVar.n() != null) {
            asVar.a(fVar.n());
        }
        fVar.b(s.b().M(), "3", str, asVar, null);
    }

    public static /* synthetic */ void a(f fVar, CustomInterstitialAdapter customInterstitialAdapter, long j2, long j3) {
        if (customInterstitialAdapter != null) {
            n trackingInfo = customInterstitialAdapter.getTrackingInfo();
            int dismissType = fVar.f9142e;
            if (dismissType == 0) {
                dismissType = customInterstitialAdapter.getDismissType();
            }
            if (dismissType == 0) {
                dismissType = 1;
            }
            trackingInfo.K(dismissType);
            a aVar = fVar.f9145h;
            if (aVar != null) {
                trackingInfo.aj(aVar.c());
                trackingInfo.ah(fVar.f9145h.f());
                trackingInfo.ai(fVar.f9145h.e());
            }
            aa.a(trackingInfo, i.s.f2725e, i.s.f2733m, "");
            long j4 = fVar.f9140c;
            if (j4 != 0) {
                com.anythink.core.common.u.f.a(trackingInfo, false, j4, j2, j3 - fVar.f9141d);
            }
            Map<String, Object> adExtraInfoMap = customInterstitialAdapter.getAdExtraInfoMap();
            if (adExtraInfoMap != null) {
                Object obj = adExtraInfoMap.get(b.C0047b.f2179a);
                if (obj instanceof Integer) {
                    trackingInfo.S(((Integer) obj).intValue());
                }
            }
            com.anythink.core.common.v.c.a().c(customInterstitialAdapter);
            com.anythink.core.common.u.f.a(trackingInfo, false);
            s.b();
            s.b(fVar.new AnonymousClass9(customInterstitialAdapter));
            a aVar2 = fVar.f9145h;
            if (aVar2 != null) {
                if (aVar2.b() != 1) {
                    s.b();
                    s.b(fVar.new AnonymousClass10());
                    ATInterstitialListener aTInterstitialListener = fVar.f9138a;
                    if (aTInterstitialListener != null) {
                        aTInterstitialListener.onInterstitialAdClose(k.a(trackingInfo, customInterstitialAdapter));
                    }
                }
            } else {
                ATInterstitialListener aTInterstitialListener2 = fVar.f9138a;
                if (aTInterstitialListener2 != null) {
                    aTInterstitialListener2.onInterstitialAdClose(k.a(trackingInfo, customInterstitialAdapter));
                }
            }
            b(trackingInfo);
            fVar.a(trackingInfo.aQ(), 18);
        }
        s.b().ai();
    }
}

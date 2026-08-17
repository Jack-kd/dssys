package com.anythink.rewardvideo.a;

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
import com.anythink.core.common.h.be;
import com.anythink.core.common.h.i;
import com.anythink.core.common.h.n;
import com.anythink.core.common.v.aa;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.d;
import com.anythink.core.common.v.o;
import com.anythink.rewardvideo.api.ATRewardVideoExListener;
import com.anythink.rewardvideo.api.ATRewardVideoListener;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener;
import java.util.Map;

/* loaded from: classes2.dex */
public final class f implements CustomRewardedVideoEventListener {

    /* renamed from: b, reason: collision with root package name */
    long f10742b;

    /* renamed from: c, reason: collision with root package name */
    boolean f10743c;

    /* renamed from: d, reason: collision with root package name */
    boolean f10744d;

    /* renamed from: e, reason: collision with root package name */
    n f10745e;

    /* renamed from: f, reason: collision with root package name */
    long f10746f;

    /* renamed from: g, reason: collision with root package name */
    long f10747g;

    /* renamed from: h, reason: collision with root package name */
    boolean f10748h;

    /* renamed from: k, reason: collision with root package name */
    boolean f10751k;

    /* renamed from: l, reason: collision with root package name */
    boolean f10752l;

    /* renamed from: m, reason: collision with root package name */
    private ATRewardVideoListener f10753m;

    /* renamed from: n, reason: collision with root package name */
    private CustomRewardVideoAdapter f10754n;

    /* renamed from: o, reason: collision with root package name */
    private com.anythink.core.common.k.e f10755o;

    /* renamed from: p, reason: collision with root package name */
    private long f10756p;

    /* renamed from: q, reason: collision with root package name */
    private long f10757q;

    /* renamed from: r, reason: collision with root package name */
    private final com.anythink.core.common.f f10758r;

    /* renamed from: i, reason: collision with root package name */
    int f10749i = 0;

    /* renamed from: a, reason: collision with root package name */
    long f10741a = 0;

    /* renamed from: j, reason: collision with root package name */
    boolean f10750j = true;

    /* renamed from: com.anythink.rewardvideo.a.f$13, reason: invalid class name */
    public class AnonymousClass13 implements Runnable {
        public AnonymousClass13() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                com.anythink.core.common.v.d.a().d(f.this.f10754n);
                f.this.f10754n.clearImpressionListener();
                f.this.f10754n.internalDestroy();
            } catch (Throwable unused) {
            }
        }
    }

    public f(CustomRewardVideoAdapter customRewardVideoAdapter, com.anythink.core.common.k.e eVar, ATRewardVideoListener aTRewardVideoListener, com.anythink.core.common.f fVar) {
        this.f10753m = aTRewardVideoListener;
        this.f10754n = customRewardVideoAdapter;
        this.f10755o = eVar;
        this.f10758r = fVar;
    }

    private void f(n nVar) {
        com.anythink.core.common.u.e.a(s.b().g());
        com.anythink.core.common.u.e.a(13, nVar, this.f10754n.getUnitGroupInfo());
        com.anythink.core.common.v.d.a().a(nVar, this.f10754n.getUnitGroupInfo(), com.anythink.core.common.v.d.f8152b);
        c(nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g(n nVar) {
        com.anythink.core.common.f fVarA;
        i iVarS;
        if (nVar == null || (fVarA = nVar.a()) == null || (iVarS = fVarA.s()) == null) {
            return;
        }
        fVarA.t();
        fVarA.c(fVarA.d(iVarS.a()));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onAgainReward() {
        if (this.f10754n == null || com.anythink.core.common.v.d.a().c(this.f10754n)) {
            com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ch, new Runnable() { // from class: com.anythink.rewardvideo.a.f.7
                @Override // java.lang.Runnable
                public final void run() {
                    n nVarF = f.f(f.this);
                    if (f.this.f10755o != null) {
                        f fVar = f.this;
                        f.a(fVar, fVar.f10755o, nVarF, true, true);
                        com.anythink.core.common.k.e eVar = f.this.f10755o;
                        f fVar2 = f.this;
                        eVar.a(fVar2.f10746f, fVar2.f10747g, fVar2.f10754n, nVarF);
                    }
                    if (f.this.f10753m != null && (f.this.f10753m instanceof ATRewardVideoExListener)) {
                        ((ATRewardVideoExListener) f.this.f10753m).onAgainReward(k.a(nVarF, f.this.f10754n));
                    }
                    if (f.this.f10754n != null) {
                        aa.a(nVarF, i.s.f2729i, i.s.f2733m, "");
                    }
                }
            }));
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onAgainRewardFailed() {
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ci, new Runnable() { // from class: com.anythink.rewardvideo.a.f.8
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    n nVarF = f.f(f.this);
                    f fVar = f.this;
                    f.a(fVar, fVar.f10755o, nVarF, false, true);
                    if (f.this.f10753m != null && (f.this.f10753m instanceof ATRewardVideoExListener)) {
                        ((ATRewardVideoExListener) f.this.f10753m).onAgainRewardFailed(k.a(nVarF, f.this.f10754n));
                    }
                    if (f.this.f10754n != null) {
                        aa.a(nVarF, i.s.f2729i, i.s.f2734n, "");
                    }
                } catch (Throwable th) {
                    com.anythink.core.common.u.f.b("onAgainRewardFailed error", th.getMessage(), s.b().r());
                }
            }
        }));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onDeeplinkCallback(final boolean z2) {
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cj, new Runnable() { // from class: com.anythink.rewardvideo.a.f.17
            @Override // java.lang.Runnable
            public final void run() {
                if (f.this.f10753m != null && (f.this.f10753m instanceof ATRewardVideoExListener)) {
                    ((ATRewardVideoExListener) f.this.f10753m).onDeeplinkCallback(k.a(f.this.f10754n), z2);
                }
                if (f.this.f10754n != null) {
                    aa.a(f.this.f10754n.getTrackingInfo(), i.s.f2730j, z2 ? i.s.f2733m : i.s.f2734n, "");
                }
            }
        }));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onDownloadConfirm(final Context context, final ATNetworkConfirmInfo aTNetworkConfirmInfo) {
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ck, new Runnable() { // from class: com.anythink.rewardvideo.a.f.2
            @Override // java.lang.Runnable
            public final void run() {
                if (f.this.f10753m != null && (f.this.f10753m instanceof ATRewardVideoExListener)) {
                    ((ATRewardVideoExListener) f.this.f10753m).onDownloadConfirm(context, k.a(f.this.f10754n), aTNetworkConfirmInfo);
                }
                if (f.this.f10754n != null) {
                    aa.a(f.this.f10754n.getTrackingInfo(), i.s.f2731k, i.s.f2733m, "");
                }
            }
        }));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onReward() {
        if (this.f10754n == null || com.anythink.core.common.v.d.a().c(this.f10754n)) {
            com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cu, new Runnable() { // from class: com.anythink.rewardvideo.a.f.15
                @Override // java.lang.Runnable
                public final void run() {
                    f fVar = f.this;
                    if (fVar.f10744d) {
                        return;
                    }
                    fVar.f10744d = true;
                    if (!fVar.f10743c && fVar.f10755o != null) {
                        n trackingInfo = f.this.f10754n.getTrackingInfo();
                        f fVar2 = f.this;
                        f.a(fVar2, fVar2.f10755o, trackingInfo, true, false);
                        f.this.f10755o.a(f.this.f10756p, f.this.f10757q, f.this.f10754n, trackingInfo);
                    }
                    f fVar3 = f.this;
                    fVar3.f10743c = true;
                    if (fVar3.f10753m != null) {
                        f.this.f10753m.onReward(k.a(f.this.f10754n));
                    }
                    if (f.this.f10754n != null) {
                        aa.a(f.this.f10754n.getTrackingInfo(), i.s.f2729i, i.s.f2733m, "");
                    }
                }
            }));
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardFailed() {
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cv, new Runnable() { // from class: com.anythink.rewardvideo.a.f.16
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    f fVar = f.this;
                    if (fVar.f10744d) {
                        return;
                    }
                    fVar.f10744d = true;
                    n trackingInfo = fVar.f10754n.getTrackingInfo();
                    f fVar2 = f.this;
                    f.a(fVar2, fVar2.f10755o, trackingInfo, false, false);
                    if (f.this.f10753m != null && (f.this.f10753m instanceof ATRewardVideoExListener)) {
                        ((ATRewardVideoExListener) f.this.f10753m).onRewardFailed(k.a(f.this.f10754n));
                    }
                    if (f.this.f10754n != null) {
                        aa.a(trackingInfo, i.s.f2729i, i.s.f2734n, "");
                    }
                } catch (Throwable th) {
                    com.anythink.core.common.u.f.b("onRewardFailed error", th.getMessage(), s.b().r());
                }
            }
        }));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdAgainPlayClicked() {
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cl, new Runnable() { // from class: com.anythink.rewardvideo.a.f.6
            @Override // java.lang.Runnable
            public final void run() {
                n nVarF = f.f(f.this);
                if (((f.this.f10754n == null || nVarF == null) ? true : f.a(f.this, nVarF)) && f.this.f10753m != null && (f.this.f10753m instanceof ATRewardVideoExListener)) {
                    ((ATRewardVideoExListener) f.this.f10753m).onRewardedVideoAdAgainPlayClicked(k.a(nVarF, f.this.f10754n));
                }
            }
        }));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdAgainPlayEnd() {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cm, new Runnable() { // from class: com.anythink.rewardvideo.a.f.4
            @Override // java.lang.Runnable
            public final void run() {
                f fVar = f.this;
                if (fVar.f10748h) {
                    return;
                }
                fVar.f10748h = true;
                if (fVar.f10747g == 0) {
                    fVar.f10747g = jElapsedRealtime;
                }
                n nVarF = f.f(fVar);
                if (f.this.f10754n != null && nVarF != null) {
                    f.a(nVarF);
                }
                if (f.this.f10753m == null || !(f.this.f10753m instanceof ATRewardVideoExListener)) {
                    return;
                }
                ((ATRewardVideoExListener) f.this.f10753m).onRewardedVideoAdAgainPlayEnd(k.a(nVarF, f.this.f10754n));
            }
        }));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdAgainPlayFailed(String str, String str2) {
        final AdError errorCode = ErrorCode.getErrorCode(ErrorCode.adShowError, str, str2);
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cn, new Runnable() { // from class: com.anythink.rewardvideo.a.f.5
            @Override // java.lang.Runnable
            public final void run() {
                f fVar = f.this;
                fVar.f10749i = 99;
                n nVarF = f.f(fVar);
                if (f.this.f10754n != null && nVarF != null) {
                    f.a(f.this, errorCode, nVarF);
                }
                if (f.this.f10753m == null || !(f.this.f10753m instanceof ATRewardVideoExListener)) {
                    return;
                }
                ((ATRewardVideoExListener) f.this.f10753m).onRewardedVideoAdAgainPlayFailed(errorCode, k.a(nVarF, f.this.f10754n));
            }
        }));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdAgainPlayStart() {
        if (this.f10754n == null || (com.anythink.core.common.v.d.a().a(this.f10754n) && com.anythink.core.common.v.d.a().b(this.f10754n))) {
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.co, new Runnable() { // from class: com.anythink.rewardvideo.a.f.3
                @Override // java.lang.Runnable
                public final void run() {
                    f fVar = f.this;
                    fVar.f10749i = 0;
                    if (fVar.f10746f == 0) {
                        fVar.f10746f = jElapsedRealtime;
                    }
                    fVar.f10747g = 0L;
                    n nVarF = f.f(fVar);
                    if (f.this.f10754n != null && nVarF != null) {
                        com.anythink.core.common.v.d.a().a(nVarF, f.this.f10754n.getUnitGroupInfo(), 6);
                        f.b(f.this, nVarF);
                        if (f.this.f10755o != null) {
                            com.anythink.core.common.k.e eVar = f.this.f10755o;
                            f fVar2 = f.this;
                            eVar.a(fVar2.f10742b, fVar2.f10754n, nVarF);
                        }
                    }
                    if (f.this.f10753m == null || !(f.this.f10753m instanceof ATRewardVideoExListener)) {
                        return;
                    }
                    ((ATRewardVideoExListener) f.this.f10753m).onRewardedVideoAdAgainPlayStart(k.a(nVarF, f.this.f10754n));
                }
            }));
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdClosed() {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cp, new Runnable() { // from class: com.anythink.rewardvideo.a.f.12
            @Override // java.lang.Runnable
            public final void run() {
                f.b(f.this, jCurrentTimeMillis, jElapsedRealtime);
            }
        }));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdPlayClicked() {
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cq, new Runnable() { // from class: com.anythink.rewardvideo.a.f.14
            @Override // java.lang.Runnable
            public final void run() {
                boolean zA;
                if (f.this.f10754n != null) {
                    zA = f.a(f.this, f.this.f10754n.getTrackingInfo());
                } else {
                    zA = true;
                }
                if (!zA || f.this.f10753m == null) {
                    return;
                }
                f.this.f10753m.onRewardedVideoAdPlayClicked(k.a(f.this.f10754n));
            }
        }));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdPlayEnd() {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cr, new Runnable() { // from class: com.anythink.rewardvideo.a.f.10
            @Override // java.lang.Runnable
            public final void run() {
                f fVar = f.this;
                if (fVar.f10752l) {
                    return;
                }
                fVar.f10752l = true;
                if (fVar.f10757q == 0) {
                    f.this.f10757q = jElapsedRealtime;
                }
                if (f.this.f10754n != null) {
                    if (f.this.f10754n.getDismissType() == 0) {
                        f.this.f10749i = 3;
                    }
                    f.a(f.this.f10754n.getTrackingInfo());
                }
                if (f.this.f10753m != null) {
                    f.this.f10753m.onRewardedVideoAdPlayEnd(k.a(f.this.f10754n));
                }
            }
        }));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdPlayFailed(String str, String str2) {
        final AdError errorCode = ErrorCode.getErrorCode(ErrorCode.adShowError, str, str2);
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cs, new Runnable() { // from class: com.anythink.rewardvideo.a.f.11
            @Override // java.lang.Runnable
            public final void run() {
                f fVar = f.this;
                fVar.f10749i = 99;
                if (fVar.f10754n != null) {
                    n trackingInfo = f.this.f10754n.getTrackingInfo();
                    if (trackingInfo.Z() == 66) {
                        f.this.f10750j = false;
                    }
                    String strAQ = trackingInfo.aQ();
                    f.a(f.this, errorCode, trackingInfo);
                    f.g(trackingInfo);
                    f.this.a(strAQ, 7);
                }
                if (f.this.f10753m != null) {
                    f.this.f10753m.onRewardedVideoAdPlayFailed(errorCode, k.a(f.this.f10754n));
                }
            }
        }));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdPlayStart() {
        if (this.f10754n == null || (com.anythink.core.common.v.d.a().a(this.f10754n) && com.anythink.core.common.v.d.a().b(this.f10754n))) {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ct, new Runnable() { // from class: com.anythink.rewardvideo.a.f.1
                @Override // java.lang.Runnable
                public final void run() {
                    f.a(f.this, jCurrentTimeMillis, jElapsedRealtime);
                }
            }));
        }
    }

    private void c(final n nVar) {
        com.anythink.core.common.v.c.a().a(this.f10754n);
        String ilrd = this.f10754n.getILRD();
        if (!TextUtils.isEmpty(ilrd)) {
            nVar.d(ilrd);
        }
        com.anythink.core.common.v.d.a().a(this.f10754n, new d.a() { // from class: com.anythink.rewardvideo.a.f.9
            @Override // com.anythink.core.common.v.d.a
            public final void a() {
                ah.b(nVar, f.this.f10754n);
                com.anythink.core.common.u.e.a(s.b().g());
                com.anythink.core.common.u.e.a(4, nVar, f.this.f10754n.getUnitGroupInfo());
            }

            @Override // com.anythink.core.common.v.d.a
            public final void b() {
            }
        });
        if (this.f10750j) {
            com.anythink.core.common.u.e.a(s.b().g());
            com.anythink.core.common.u.e.a(8, nVar);
        }
        aa.a(nVar, i.s.f2723c, i.s.f2733m, "");
    }

    private static void d(n nVar) {
        aa.a(nVar, i.s.f2727g, i.s.f2733m, "");
        com.anythink.core.common.u.e.a(s.b().g());
        com.anythink.core.common.u.e.a(9, nVar);
    }

    private boolean e(n nVar) {
        ah.c(nVar, this.f10754n);
        com.anythink.core.common.u.e.a(s.b().g());
        com.anythink.core.common.u.e.a(6, nVar);
        if (nVar != null ? nVar.aB() : false) {
            return false;
        }
        com.anythink.core.common.v.c.a().b(this.f10754n);
        aa.a(nVar, i.s.f2724d, i.s.f2733m, "");
        return true;
    }

    private void b(long j2, long j3) {
        CustomRewardVideoAdapter customRewardVideoAdapter = this.f10754n;
        if (customRewardVideoAdapter != null) {
            n trackingInfo = customRewardVideoAdapter.getTrackingInfo();
            int dismissType = this.f10749i;
            if (dismissType == 0) {
                dismissType = this.f10754n.getDismissType();
            }
            if (dismissType == 0) {
                dismissType = 1;
            }
            trackingInfo.K(dismissType);
            aa.a(trackingInfo, i.s.f2725e, i.s.f2733m, this.f10743c ? "" : "onReward() is not fired");
            long j4 = this.f10741a;
            if (j4 != 0) {
                com.anythink.core.common.u.f.a(trackingInfo, this.f10743c, j4, j2, j3 - this.f10742b);
            }
            Map<String, Object> adExtraInfoMap = this.f10754n.getAdExtraInfoMap();
            if (adExtraInfoMap != null) {
                Object obj = adExtraInfoMap.get(b.C0047b.f2179a);
                if (obj instanceof Integer) {
                    trackingInfo.S(((Integer) obj).intValue());
                }
            }
            com.anythink.core.common.v.c.a().c(this.f10754n);
            com.anythink.core.common.u.f.a(trackingInfo, this.f10743c);
            boolean z2 = this.f10744d;
            s.b();
            s.a(new AnonymousClass13(), z2 ? 0L : 5000L);
            g(trackingInfo);
            ATRewardVideoListener aTRewardVideoListener = this.f10753m;
            if (aTRewardVideoListener != null) {
                aTRewardVideoListener.onRewardedVideoAdClosed(k.a(trackingInfo, this.f10754n));
            }
            a(trackingInfo.aQ(), 18);
        }
        s.b().ai();
    }

    private void a(long j2, long j3) {
        if (this.f10751k) {
            return;
        }
        this.f10751k = true;
        this.f10741a = j2;
        this.f10742b = j3;
        if (this.f10756p == 0) {
            this.f10756p = j3;
        }
        k kVarA = k.a(this.f10754n);
        CustomRewardVideoAdapter customRewardVideoAdapter = this.f10754n;
        if (customRewardVideoAdapter != null) {
            n trackingInfo = customRewardVideoAdapter.getTrackingInfo();
            trackingInfo.a(this.f10754n.getInternalNetworkInfoMap());
            com.anythink.core.common.v.d.a().a(trackingInfo, this.f10754n.getUnitGroupInfo(), 6);
            c(trackingInfo);
            com.anythink.core.common.k.e eVar = this.f10755o;
            if (eVar != null) {
                eVar.a(this.f10742b, this.f10754n, trackingInfo);
            }
            String strAQ = trackingInfo.aQ();
            com.anythink.core.common.f fVarA = trackingInfo.a();
            if (fVarA != null) {
                fVarA.a(kVarA);
            }
            a(strAQ, 6);
        }
        if (!this.f10750j || this.f10753m == null) {
            return;
        }
        if (kVarA.getNetworkFirmId() == -1) {
            com.anythink.core.common.u.g.a(i.o.f2698b, this.f10754n, null);
        }
        this.f10753m.onRewardedVideoAdPlayStart(kVarA);
    }

    public static /* synthetic */ n f(f fVar) {
        CustomRewardVideoAdapter customRewardVideoAdapter;
        if (fVar.f10745e == null && (customRewardVideoAdapter = fVar.f10754n) != null) {
            n nVarAh = customRewardVideoAdapter.getTrackingInfo().ah();
            fVar.f10745e = nVarAh;
            nVarAh.f4342t = 6;
            fVar.f10745e.n(o.b(nVarAh.aR(), fVar.f10745e.N(), System.currentTimeMillis()));
        }
        return fVar.f10745e;
    }

    public static /* synthetic */ void b(f fVar, long j2, long j3) {
        CustomRewardVideoAdapter customRewardVideoAdapter = fVar.f10754n;
        if (customRewardVideoAdapter != null) {
            n trackingInfo = customRewardVideoAdapter.getTrackingInfo();
            int dismissType = fVar.f10749i;
            if (dismissType == 0) {
                dismissType = fVar.f10754n.getDismissType();
            }
            if (dismissType == 0) {
                dismissType = 1;
            }
            trackingInfo.K(dismissType);
            aa.a(trackingInfo, i.s.f2725e, i.s.f2733m, fVar.f10743c ? "" : "onReward() is not fired");
            long j4 = fVar.f10741a;
            if (j4 != 0) {
                com.anythink.core.common.u.f.a(trackingInfo, fVar.f10743c, j4, j2, j3 - fVar.f10742b);
            }
            Map<String, Object> adExtraInfoMap = fVar.f10754n.getAdExtraInfoMap();
            if (adExtraInfoMap != null) {
                Object obj = adExtraInfoMap.get(b.C0047b.f2179a);
                if (obj instanceof Integer) {
                    trackingInfo.S(((Integer) obj).intValue());
                }
            }
            com.anythink.core.common.v.c.a().c(fVar.f10754n);
            com.anythink.core.common.u.f.a(trackingInfo, fVar.f10743c);
            boolean z2 = fVar.f10744d;
            s.b();
            s.a(fVar.new AnonymousClass13(), z2 ? 0L : 5000L);
            g(trackingInfo);
            ATRewardVideoListener aTRewardVideoListener = fVar.f10753m;
            if (aTRewardVideoListener != null) {
                aTRewardVideoListener.onRewardedVideoAdClosed(k.a(trackingInfo, fVar.f10754n));
            }
            fVar.a(trackingInfo.aQ(), 18);
        }
        s.b().ai();
    }

    private n a() {
        CustomRewardVideoAdapter customRewardVideoAdapter;
        if (this.f10745e == null && (customRewardVideoAdapter = this.f10754n) != null) {
            n nVarAh = customRewardVideoAdapter.getTrackingInfo().ah();
            this.f10745e = nVarAh;
            nVarAh.f4342t = 6;
            this.f10745e.n(o.b(nVarAh.aR(), this.f10745e.N(), System.currentTimeMillis()));
        }
        return this.f10745e;
    }

    private void a(AdError adError, n nVar) {
        aa.a(nVar, i.s.f2723c, i.s.f2734n, adError.printStackTrace());
        CustomRewardVideoAdapter customRewardVideoAdapter = this.f10754n;
        com.anythink.core.common.u.f.a(nVar, adError, customRewardVideoAdapter != null ? customRewardVideoAdapter.getInternalNetworkInfoMap() : null);
    }

    private void a(com.anythink.core.common.k.e eVar, n nVar, boolean z2, boolean z3) {
        long jElapsedRealtime;
        long j2;
        boolean z4 = z3 ? this.f10748h : this.f10752l;
        com.anythink.core.common.i.a();
        String strC = com.anythink.core.common.i.c();
        nVar.a(be.a(z4, strC, z2, this.f10754n.getNetworkInfoMap()));
        com.anythink.core.common.u.e.a(s.b().g());
        com.anythink.core.common.u.e.a(25, nVar);
        if (z3) {
            jElapsedRealtime = SystemClock.elapsedRealtime();
            j2 = this.f10746f;
        } else {
            jElapsedRealtime = SystemClock.elapsedRealtime();
            j2 = this.f10756p;
        }
        com.anythink.core.common.u.f.a(eVar, z2, nVar, jElapsedRealtime - j2, z4, strC, this.f10754n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i2) {
        com.anythink.core.common.f fVar;
        if (TextUtils.isEmpty(str) || (fVar = this.f10758r) == null || !fVar.a((ATAdStatusInfo) null, i2)) {
            return;
        }
        as asVar = new as();
        asVar.a(s.b().M());
        asVar.f3811c = i2;
        if (fVar.n() != null) {
            asVar.a(fVar.n());
        }
        fVar.b(s.b().M(), "1", str, asVar, null);
    }

    public static /* synthetic */ void b(f fVar, n nVar) {
        com.anythink.core.common.u.e.a(s.b().g());
        com.anythink.core.common.u.e.a(13, nVar, fVar.f10754n.getUnitGroupInfo());
        com.anythink.core.common.v.d.a().a(nVar, fVar.f10754n.getUnitGroupInfo(), com.anythink.core.common.v.d.f8152b);
        fVar.c(nVar);
    }

    public static /* synthetic */ void a(f fVar, long j2, long j3) {
        if (fVar.f10751k) {
            return;
        }
        fVar.f10751k = true;
        fVar.f10741a = j2;
        fVar.f10742b = j3;
        if (fVar.f10756p == 0) {
            fVar.f10756p = j3;
        }
        k kVarA = k.a(fVar.f10754n);
        CustomRewardVideoAdapter customRewardVideoAdapter = fVar.f10754n;
        if (customRewardVideoAdapter != null) {
            n trackingInfo = customRewardVideoAdapter.getTrackingInfo();
            trackingInfo.a(fVar.f10754n.getInternalNetworkInfoMap());
            com.anythink.core.common.v.d.a().a(trackingInfo, fVar.f10754n.getUnitGroupInfo(), 6);
            fVar.c(trackingInfo);
            com.anythink.core.common.k.e eVar = fVar.f10755o;
            if (eVar != null) {
                eVar.a(fVar.f10742b, fVar.f10754n, trackingInfo);
            }
            String strAQ = trackingInfo.aQ();
            com.anythink.core.common.f fVarA = trackingInfo.a();
            if (fVarA != null) {
                fVarA.a(kVarA);
            }
            fVar.a(strAQ, 6);
        }
        if (!fVar.f10750j || fVar.f10753m == null) {
            return;
        }
        if (kVarA.getNetworkFirmId() == -1) {
            com.anythink.core.common.u.g.a(i.o.f2698b, fVar.f10754n, null);
        }
        fVar.f10753m.onRewardedVideoAdPlayStart(kVarA);
    }

    public static /* synthetic */ void a(n nVar) {
        aa.a(nVar, i.s.f2727g, i.s.f2733m, "");
        com.anythink.core.common.u.e.a(s.b().g());
        com.anythink.core.common.u.e.a(9, nVar);
    }

    public static /* synthetic */ void a(f fVar, AdError adError, n nVar) {
        aa.a(nVar, i.s.f2723c, i.s.f2734n, adError.printStackTrace());
        CustomRewardVideoAdapter customRewardVideoAdapter = fVar.f10754n;
        com.anythink.core.common.u.f.a(nVar, adError, customRewardVideoAdapter != null ? customRewardVideoAdapter.getInternalNetworkInfoMap() : null);
    }

    public static /* synthetic */ boolean a(f fVar, n nVar) {
        ah.c(nVar, fVar.f10754n);
        com.anythink.core.common.u.e.a(s.b().g());
        com.anythink.core.common.u.e.a(6, nVar);
        if (nVar != null ? nVar.aB() : false) {
            return false;
        }
        com.anythink.core.common.v.c.a().b(fVar.f10754n);
        aa.a(nVar, i.s.f2724d, i.s.f2733m, "");
        return true;
    }

    public static /* synthetic */ void a(f fVar, com.anythink.core.common.k.e eVar, n nVar, boolean z2, boolean z3) {
        long jElapsedRealtime;
        long j2;
        boolean z4 = z3 ? fVar.f10748h : fVar.f10752l;
        com.anythink.core.common.i.a();
        String strC = com.anythink.core.common.i.c();
        nVar.a(be.a(z4, strC, z2, fVar.f10754n.getNetworkInfoMap()));
        com.anythink.core.common.u.e.a(s.b().g());
        com.anythink.core.common.u.e.a(25, nVar);
        if (z3) {
            jElapsedRealtime = SystemClock.elapsedRealtime();
            j2 = fVar.f10746f;
        } else {
            jElapsedRealtime = SystemClock.elapsedRealtime();
            j2 = fVar.f10756p;
        }
        com.anythink.core.common.u.f.a(eVar, z2, nVar, jElapsedRealtime - j2, z4, strC, fVar.f10754n);
    }
}

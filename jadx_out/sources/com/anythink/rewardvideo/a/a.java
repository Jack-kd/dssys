package com.anythink.rewardvideo.a;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdCreateConfig;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdMultipleLoadedListener;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATCommonImpressionListener;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.ATNativeAdCustomRender;
import com.anythink.core.api.ATShowConfig;
import com.anythink.core.api.AdError;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.d.k;
import com.anythink.core.common.d.r;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.ae;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.n;
import com.anythink.core.common.l.d.a;
import com.anythink.core.common.l.e.a.a;
import com.anythink.core.common.l.f.a.a;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.l;
import com.anythink.core.common.v.o;
import com.anythink.core.common.v.q;
import com.anythink.rewardvideo.api.ATRewardVideoListener;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f10659a = "a";

    /* renamed from: f, reason: collision with root package name */
    private static Map<String, a> f10660f = new ConcurrentHashMap(3);

    /* renamed from: b, reason: collision with root package name */
    ATAdCreateConfig f10661b;

    /* renamed from: c, reason: collision with root package name */
    private Context f10662c;

    /* renamed from: d, reason: collision with root package name */
    private String f10663d;

    /* renamed from: e, reason: collision with root package name */
    private final com.anythink.core.common.f f10664e;

    /* renamed from: com.anythink.rewardvideo.a.a$2, reason: invalid class name */
    public class AnonymousClass2 implements a.InterfaceC0065a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ CustomRewardVideoAdapter f10677a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ATRewardVideoListener f10678b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Activity f10679c;

        public AnonymousClass2(CustomRewardVideoAdapter customRewardVideoAdapter, ATRewardVideoListener aTRewardVideoListener, Activity activity) {
            this.f10677a = customRewardVideoAdapter;
            this.f10678b = aTRewardVideoListener;
            this.f10679c = activity;
        }

        @Override // com.anythink.core.common.l.f.a.a.InterfaceC0065a
        public final void a(final Activity activity, ViewGroup viewGroup) {
            CustomRewardVideoAdapter customRewardVideoAdapter = this.f10677a;
            s.b();
            e eVar = new e(new f(customRewardVideoAdapter, s.a(a.this.f10664e), this.f10678b, a.this.f10664e), this.f10677a.isMixFormatAd(), this.f10677a.getAdRewardCallbackType()) { // from class: com.anythink.rewardvideo.a.a.2.1
                @Override // com.anythink.rewardvideo.a.d, com.anythink.core.api.ATCommonImpressionListener
                public final void onAdDismiss() {
                    s.b();
                    s.b(new Runnable() { // from class: com.anythink.rewardvideo.a.a.2.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (AnonymousClass2.this.f10679c.isFinishing()) {
                                return;
                            }
                            activity.finish();
                        }
                    });
                    super.onAdDismiss();
                }
            };
            eVar.a(4);
            this.f10677a.internalShow(activity, viewGroup, eVar);
        }
    }

    /* renamed from: com.anythink.rewardvideo.a.a$3, reason: invalid class name */
    public class AnonymousClass3 extends com.anythink.core.common.l.e.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ATCommonImpressionListener f10684a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(com.anythink.core.common.h.c cVar, ATCommonImpressionListener aTCommonImpressionListener) {
            super(cVar);
            this.f10684a = aTCommonImpressionListener;
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onAdClicked(View view) {
            super.onAdClicked(view);
            ATCommonImpressionListener aTCommonImpressionListener = this.f10684a;
            if (aTCommonImpressionListener != null) {
                aTCommonImpressionListener.onAdClick();
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onAdImpressed() {
            ATCommonImpressionListener aTCommonImpressionListener = this.f10684a;
            if (aTCommonImpressionListener != null) {
                aTCommonImpressionListener.onAdImpression();
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onAdVideoEnd() {
            ATCommonImpressionListener aTCommonImpressionListener = this.f10684a;
            if (aTCommonImpressionListener != null) {
                aTCommonImpressionListener.onAdVideoPlayEnd();
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onAdVideoStart() {
            ATCommonImpressionListener aTCommonImpressionListener = this.f10684a;
            if (aTCommonImpressionListener != null) {
                aTCommonImpressionListener.onAdVideoPlayStart();
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onClose() {
            ATCommonImpressionListener aTCommonImpressionListener = this.f10684a;
            if (aTCommonImpressionListener != null) {
                aTCommonImpressionListener.onAdDismiss();
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onDeeplinkCallback(boolean z2) {
            ATCommonImpressionListener aTCommonImpressionListener = this.f10684a;
            if (aTCommonImpressionListener != null) {
                aTCommonImpressionListener.onDeeplinkCallback(z2);
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onVideoError(String str, String str2) {
            ATCommonImpressionListener aTCommonImpressionListener = this.f10684a;
            if (aTCommonImpressionListener != null) {
                aTCommonImpressionListener.onAdShowFail(ErrorCode.adShowError, "onVideoError, errorCode: " + str + ", errorMsg: " + str2);
            }
        }
    }

    /* renamed from: com.anythink.rewardvideo.a.a$4, reason: invalid class name */
    public class AnonymousClass4 implements a.InterfaceC0064a {
        public AnonymousClass4() {
        }

        @Override // com.anythink.core.common.l.e.a.a.InterfaceC0064a
        public final void a(Activity activity) {
        }
    }

    private a(Context context, String str) {
        this(context, str, null);
    }

    public a(Context context, String str, ATAdCreateConfig aTAdCreateConfig) {
        this.f10662c = context.getApplicationContext();
        this.f10663d = str;
        this.f10661b = aTAdCreateConfig;
        if (aTAdCreateConfig == null) {
            this.f10664e = com.anythink.core.common.f.a(context, str, "1");
        } else {
            if (!aTAdCreateConfig.isMultiton()) {
                this.f10664e = com.anythink.core.common.f.a(context, str, "1");
                return;
            }
            com.anythink.core.common.f fVar = new com.anythink.core.common.f(context, str, "1");
            this.f10664e = fVar;
            fVar.u();
        }
    }

    public static a a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        a aVar = f10660f.get(str);
        if (aVar != null) {
            return aVar;
        }
        synchronized (a.class) {
            if (aVar == null) {
                try {
                    aVar = new a(context, str);
                    f10660f.put(str, aVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return aVar;
    }

    public final com.anythink.core.common.f b() {
        return this.f10664e;
    }

    public final void c() {
        com.anythink.core.common.f fVar;
        ATAdCreateConfig aTAdCreateConfig = this.f10661b;
        if (aTAdCreateConfig == null || !aTAdCreateConfig.isMultiton() || (fVar = this.f10664e) == null) {
            return;
        }
        fVar.p();
    }

    public final void b(Map<String, Object> map) {
        com.anythink.core.common.f fVar = this.f10664e;
        if (fVar != null) {
            fVar.a(map);
        }
    }

    public final void c(Map<String, Object> map) {
        com.anythink.core.common.f fVar = this.f10664e;
        if (fVar != null) {
            fVar.b(map);
        }
    }

    public final boolean a() {
        ATAdCreateConfig aTAdCreateConfig = this.f10661b;
        return aTAdCreateConfig != null && aTAdCreateConfig.isMultiton();
    }

    public final synchronized void a(final Activity activity, final ATShowConfig aTShowConfig, final ATRewardVideoListener aTRewardVideoListener, final ATEventInterface aTEventInterface, final Map<String, Object> map, final ATNativeAdCustomRender aTNativeAdCustomRender) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        final com.anythink.core.common.h.c cVarB = this.f10664e.b((Context) activity, false, true, a(aTShowConfig, map));
        if (cVarB != null && (cVarB.e() instanceof CustomRewardVideoAdapter)) {
            this.f10664e.a(cVarB);
            cVarB.a(cVarB.c() + 1);
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8135r, new Runnable() { // from class: com.anythink.rewardvideo.a.a.1
                @Override // java.lang.Runnable
                public final void run() throws NumberFormatException {
                    final String scenarioId;
                    String showCustomExt;
                    n trackingInfo = cVarB.e().getTrackingInfo();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    ATShowConfig aTShowConfig2 = aTShowConfig;
                    if (aTShowConfig2 != null) {
                        scenarioId = aTShowConfig2.getScenarioId();
                        showCustomExt = aTShowConfig.getShowCustomExt();
                        q.a(aTShowConfig.getATCustomContentResult(), trackingInfo);
                    } else {
                        scenarioId = "";
                        showCustomExt = "";
                    }
                    if (trackingInfo != null) {
                        ah.a(a.this.f10664e.n(), trackingInfo);
                        com.anythink.core.common.f fVarA = trackingInfo.a();
                        if (fVarA != null) {
                            trackingInfo.f4348z = fVarA.m();
                        }
                        trackingInfo.f4324H = scenarioId;
                        trackingInfo.y(showCustomExt);
                        trackingInfo.n(o.a(trackingInfo.aR(), trackingInfo.N(), jCurrentTimeMillis));
                        ah.a(a.this.f10662c, trackingInfo);
                        ah.a((Map<String, Object>) map, trackingInfo);
                        ah.a(a.this.f10663d, trackingInfo);
                        if (fVarA != null) {
                            fVarA.e().a(a.this.f10662c, cVarB);
                        }
                    }
                    com.anythink.core.common.u.e.a(a.this.f10662c);
                    com.anythink.core.common.u.e.a(13, trackingInfo, cVarB.e().getUnitGroupInfo(), jCurrentTimeMillis);
                    com.anythink.core.common.v.d.a().a(trackingInfo, cVarB.e().getUnitGroupInfo(), com.anythink.core.common.v.d.f8152b);
                    final CustomRewardVideoAdapter customRewardVideoAdapter = (CustomRewardVideoAdapter) cVarB.e();
                    Activity activity2 = activity;
                    if (activity2 != null) {
                        customRewardVideoAdapter.refreshActivityContext(activity2);
                    }
                    s.b();
                    s.b(new Runnable() { // from class: com.anythink.rewardvideo.a.a.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            customRewardVideoAdapter.setScenario(scenarioId);
                            r rVarC = s.b().c();
                            if (rVarC != null) {
                                CustomRewardVideoAdapter customRewardVideoAdapter2 = customRewardVideoAdapter;
                                customRewardVideoAdapter2.setAdDownloadListener(rVarC.createDataFetchListener(customRewardVideoAdapter2, null, aTEventInterface));
                            }
                            if (customRewardVideoAdapter.isMixSplash()) {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                a.a(a.this, activity, customRewardVideoAdapter, aTRewardVideoListener);
                            } else if (customRewardVideoAdapter.isMixNative()) {
                                AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                a aVar = a.this;
                                Activity activity3 = activity;
                                com.anythink.core.common.h.c cVar = cVarB;
                                ATShowConfig aTShowConfig3 = aTShowConfig;
                                CustomRewardVideoAdapter customRewardVideoAdapter3 = customRewardVideoAdapter;
                                a.a(aVar, activity3, cVar, aTShowConfig3, customRewardVideoAdapter3, a.a(aVar, customRewardVideoAdapter3, aTRewardVideoListener), aTNativeAdCustomRender);
                            } else {
                                CustomRewardVideoAdapter customRewardVideoAdapter4 = customRewardVideoAdapter;
                                AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                                customRewardVideoAdapter4.internalShow(activity, null, a.a(a.this, customRewardVideoAdapter4, aTRewardVideoListener));
                            }
                            n trackingInfo2 = customRewardVideoAdapter.getTrackingInfo();
                            com.anythink.core.common.u.f.a("4", trackingInfo2, trackingInfo2.aR(), trackingInfo2.aQ(), trackingInfo2.N(), trackingInfo2.Z(), 4, SystemClock.elapsedRealtime() - jElapsedRealtime);
                        }
                    });
                }
            }));
        } else {
            if (this.f10664e.a((ATAdStatusInfo) null, 7)) {
                a(s.b().M(), 7, (com.anythink.core.common.d.a) null, (com.anythink.core.common.d.c) null, (ATAdMultipleLoadedListener) null, map, (ATAdRequest) null);
            }
            AdError errorCode = ErrorCode.getErrorCode(ErrorCode.noADError, "", "No Cache.");
            if (aTRewardVideoListener != null) {
                aTRewardVideoListener.onRewardedVideoAdPlayFailed(errorCode, k.a((ATBaseAdAdapter) null));
            }
        }
    }

    private e a(CustomRewardVideoAdapter customRewardVideoAdapter, ATRewardVideoListener aTRewardVideoListener) {
        s.b();
        e eVar = new e(new f(customRewardVideoAdapter, s.a(this.f10664e), aTRewardVideoListener, this.f10664e), customRewardVideoAdapter.isMixFormatAd(), customRewardVideoAdapter.getAdRewardCallbackType());
        if (customRewardVideoAdapter.isMixInterstitial()) {
            eVar.a(3);
            return eVar;
        }
        if (customRewardVideoAdapter.isMixNative()) {
            eVar.a(0);
        }
        return eVar;
    }

    private ae a(ATShowConfig aTShowConfig, Map<String, Object> map) {
        ae aeVar = new ae();
        aeVar.a(map);
        if (aTShowConfig != null) {
            aeVar.a(aTShowConfig.getATAdInfo());
        }
        com.anythink.core.common.f fVar = this.f10664e;
        if (fVar != null) {
            aeVar.a(fVar.n());
        }
        return aeVar;
    }

    public final void a(Context context, int i2, com.anythink.core.common.d.a aVar, com.anythink.core.common.d.c cVar, ATAdMultipleLoadedListener aTAdMultipleLoadedListener, Map<String, Object> map, ATAdRequest aTAdRequest) {
        as asVar = new as();
        asVar.a(context);
        asVar.a(aTAdRequest);
        asVar.f3811c = i2;
        asVar.f3812d = cVar;
        asVar.f3814f = aTAdMultipleLoadedListener;
        if (map != null) {
            try {
                asVar.f3815g = new HashMap(map);
            } catch (Throwable unused) {
            }
        }
        if (aTAdRequest != null) {
            asVar.f3820l = aTAdRequest.getATAdxBidFloorInfo();
        }
        this.f10664e.b(this.f10662c, "1", this.f10663d, asVar, aVar);
    }

    public final com.anythink.core.common.h.c a(Map<String, Object> map) {
        ae aeVarA = a((ATShowConfig) null, map);
        aeVarA.f();
        com.anythink.core.common.f fVar = this.f10664e;
        if (fVar != null) {
            return fVar.b(this.f10662c, false, false, aeVarA);
        }
        return null;
    }

    public final List<ATAdInfo> a(Context context) {
        com.anythink.core.common.f fVar = this.f10664e;
        if (fVar != null) {
            return fVar.a(context);
        }
        return null;
    }

    public final ATAdStatusInfo a(Context context, Map<String, Object> map) {
        com.anythink.core.common.f fVar = this.f10664e;
        if (fVar != null) {
            return fVar.a(context, map);
        }
        return null;
    }

    private void a(Activity activity, CustomRewardVideoAdapter customRewardVideoAdapter, ATRewardVideoListener aTRewardVideoListener) {
        com.anythink.core.basead.b.c cVar = new com.anythink.core.basead.b.c();
        by unitGroupInfo = customRewardVideoAdapter.getUnitGroupInfo();
        if (unitGroupInfo == null) {
            return;
        }
        com.anythink.core.common.l.c.a.a aVarA = com.anythink.core.common.inner.mixad.b.b.a(customRewardVideoAdapter, null);
        if (!(aVarA instanceof com.anythink.core.common.l.c.a.e)) {
            AdError errorCode = ErrorCode.getErrorCode(ErrorCode.adShowError, "", "create reward video bridge with unknow error.");
            if (aTRewardVideoListener != null) {
                aTRewardVideoListener.onRewardedVideoAdPlayFailed(errorCode, k.a((ATBaseAdAdapter) null));
                return;
            }
            return;
        }
        cVar.f1636d = com.anythink.core.common.f.a(this.f10663d, unitGroupInfo.G(), String.valueOf(unitGroupInfo.n()));
        ((com.anythink.core.common.l.c.a.e) aVarA).a(activity, cVar, new AnonymousClass2(customRewardVideoAdapter, aTRewardVideoListener, activity));
    }

    private void a(Activity activity, com.anythink.core.common.h.c cVar, ATShowConfig aTShowConfig, CustomRewardVideoAdapter customRewardVideoAdapter, ATCommonImpressionListener aTCommonImpressionListener, ATNativeAdCustomRender aTNativeAdCustomRender) {
        String strA;
        BaseAd baseAdF = cVar.f();
        if (baseAdF == null) {
            if (aTCommonImpressionListener != null) {
                aTCommonImpressionListener.onAdShowFail(ErrorCode.adShowError, "showThirdPartyNativeReward fail, no ad cache.");
                return;
            }
            return;
        }
        n nVarI = cVar.i();
        com.anythink.core.common.l.c.a.a aVarA = com.anythink.core.common.inner.mixad.b.b.a(customRewardVideoAdapter, new a.C0063a().a(activity).a(baseAdF).a(nVarI).a(aTNativeAdCustomRender).a(new AnonymousClass3(cVar, aTCommonImpressionListener)).a());
        if (!(aVarA instanceof com.anythink.core.common.l.c.a.e)) {
            if (aTCommonImpressionListener != null) {
                aTCommonImpressionListener.onAdShowFail(ErrorCode.adShowError, "create reward video bridge failed. adapterFormatBridge: ".concat(String.valueOf(aVarA)));
                return;
            }
            return;
        }
        com.anythink.core.basead.b.c cVar2 = new com.anythink.core.basead.b.c();
        String scenarioId = "";
        if (nVarI == null || this.f10664e == null) {
            strA = "";
        } else {
            strA = com.anythink.core.common.f.a(nVarI.aQ(), nVarI.N(), String.valueOf(nVarI.Z()));
        }
        if (TextUtils.isEmpty(strA)) {
            if (aTCommonImpressionListener != null) {
                aTCommonImpressionListener.onAdShowFail(ErrorCode.adShowError, "create reward video bridge with error: eventId is empty.");
                return;
            }
            return;
        }
        cVar2.f1636d = strA;
        cVar2.f1637e = l.f(activity);
        if (aTShowConfig != null) {
            scenarioId = aTShowConfig.getScenarioId();
        }
        cVar2.f1634b = scenarioId;
        cVar2.f1633a = Integer.parseInt("1");
        ((com.anythink.core.common.l.c.a.e) aVarA).a(activity, cVar2, new AnonymousClass4());
    }

    public final void a(int i2) {
        com.anythink.core.common.f fVar = this.f10664e;
        if (fVar != null) {
            fVar.a(i2);
        }
    }

    public final void a(List<ATAdInfo> list) {
        com.anythink.core.common.f fVar = this.f10664e;
        if (fVar != null) {
            fVar.a(list);
        }
    }

    public static /* synthetic */ void a(a aVar, Activity activity, CustomRewardVideoAdapter customRewardVideoAdapter, ATRewardVideoListener aTRewardVideoListener) {
        com.anythink.core.basead.b.c cVar = new com.anythink.core.basead.b.c();
        by unitGroupInfo = customRewardVideoAdapter.getUnitGroupInfo();
        if (unitGroupInfo != null) {
            com.anythink.core.common.l.c.a.a aVarA = com.anythink.core.common.inner.mixad.b.b.a(customRewardVideoAdapter, null);
            if (!(aVarA instanceof com.anythink.core.common.l.c.a.e)) {
                AdError errorCode = ErrorCode.getErrorCode(ErrorCode.adShowError, "", "create reward video bridge with unknow error.");
                if (aTRewardVideoListener != null) {
                    aTRewardVideoListener.onRewardedVideoAdPlayFailed(errorCode, k.a((ATBaseAdAdapter) null));
                    return;
                }
                return;
            }
            cVar.f1636d = com.anythink.core.common.f.a(aVar.f10663d, unitGroupInfo.G(), String.valueOf(unitGroupInfo.n()));
            ((com.anythink.core.common.l.c.a.e) aVarA).a(activity, cVar, aVar.new AnonymousClass2(customRewardVideoAdapter, aTRewardVideoListener, activity));
        }
    }

    public static /* synthetic */ e a(a aVar, CustomRewardVideoAdapter customRewardVideoAdapter, ATRewardVideoListener aTRewardVideoListener) {
        s.b();
        e eVar = new e(new f(customRewardVideoAdapter, s.a(aVar.f10664e), aTRewardVideoListener, aVar.f10664e), customRewardVideoAdapter.isMixFormatAd(), customRewardVideoAdapter.getAdRewardCallbackType());
        if (customRewardVideoAdapter.isMixInterstitial()) {
            eVar.a(3);
            return eVar;
        }
        if (customRewardVideoAdapter.isMixNative()) {
            eVar.a(0);
        }
        return eVar;
    }

    public static /* synthetic */ void a(a aVar, Activity activity, com.anythink.core.common.h.c cVar, ATShowConfig aTShowConfig, CustomRewardVideoAdapter customRewardVideoAdapter, ATCommonImpressionListener aTCommonImpressionListener, ATNativeAdCustomRender aTNativeAdCustomRender) {
        String strA;
        BaseAd baseAdF = cVar.f();
        if (baseAdF == null) {
            if (aTCommonImpressionListener != null) {
                aTCommonImpressionListener.onAdShowFail(ErrorCode.adShowError, "showThirdPartyNativeReward fail, no ad cache.");
                return;
            }
            return;
        }
        n nVarI = cVar.i();
        com.anythink.core.common.l.c.a.a aVarA = com.anythink.core.common.inner.mixad.b.b.a(customRewardVideoAdapter, new a.C0063a().a(activity).a(baseAdF).a(nVarI).a(aTNativeAdCustomRender).a(aVar.new AnonymousClass3(cVar, aTCommonImpressionListener)).a());
        if (!(aVarA instanceof com.anythink.core.common.l.c.a.e)) {
            if (aTCommonImpressionListener != null) {
                aTCommonImpressionListener.onAdShowFail(ErrorCode.adShowError, "create reward video bridge failed. adapterFormatBridge: ".concat(String.valueOf(aVarA)));
                return;
            }
            return;
        }
        com.anythink.core.basead.b.c cVar2 = new com.anythink.core.basead.b.c();
        String scenarioId = "";
        if (nVarI == null || aVar.f10664e == null) {
            strA = "";
        } else {
            strA = com.anythink.core.common.f.a(nVarI.aQ(), nVarI.N(), String.valueOf(nVarI.Z()));
        }
        if (TextUtils.isEmpty(strA)) {
            if (aTCommonImpressionListener != null) {
                aTCommonImpressionListener.onAdShowFail(ErrorCode.adShowError, "create reward video bridge with error: eventId is empty.");
                return;
            }
            return;
        }
        cVar2.f1636d = strA;
        cVar2.f1637e = l.f(activity);
        if (aTShowConfig != null) {
            scenarioId = aTShowConfig.getScenarioId();
        }
        cVar2.f1634b = scenarioId;
        cVar2.f1633a = Integer.parseInt("1");
        ((com.anythink.core.common.l.c.a.e) aVarA).a(activity, cVar2, aVar.new AnonymousClass4());
    }
}

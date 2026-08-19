package com.anythink.splashad.a;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdCreateConfig;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdMultipleLoadedListener;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.ATNativeAdCustomRender;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.ATShowConfig;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.bridge.IATBaseAdAdapter;
import com.anythink.core.common.d.r;
import com.anythink.core.common.d.s;
import com.anythink.core.common.g;
import com.anythink.core.common.h.ae;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.n;
import com.anythink.core.common.l.d.a;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.ak;
import com.anythink.core.common.v.o;
import com.anythink.core.common.v.q;
import com.anythink.splashad.api.ATSplashSkipAdListener;
import com.anythink.splashad.api.ATSplashSkipInfo;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: e, reason: collision with root package name */
    private static Map<String, c> f10792e = new ConcurrentHashMap(3);

    /* renamed from: a, reason: collision with root package name */
    ATAdCreateConfig f10793a;

    /* renamed from: b, reason: collision with root package name */
    private Context f10794b;

    /* renamed from: c, reason: collision with root package name */
    private String f10795c;

    /* renamed from: d, reason: collision with root package name */
    private com.anythink.core.common.f f10796d;

    /* renamed from: com.anythink.splashad.a.c$2, reason: invalid class name */
    public class AnonymousClass2 extends com.anythink.core.common.l.e.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f10813a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean[] f10814b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(com.anythink.core.common.h.c cVar, f fVar, boolean[] zArr) {
            super(cVar);
            this.f10813a = fVar;
            this.f10814b = zArr;
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onAdClicked(View view) {
            super.onAdClicked(view);
            f fVar = this.f10813a;
            if (fVar != null) {
                fVar.onSplashAdClicked();
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onAdImpressed() {
            boolean[] zArr = this.f10814b;
            if (zArr[0]) {
                return;
            }
            zArr[0] = true;
            f fVar = this.f10813a;
            if (fVar != null) {
                fVar.onSplashAdShow();
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onAdVideoEnd() {
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onAdVideoStart() {
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onClose() {
            f fVar = this.f10813a;
            if (fVar != null) {
                fVar.onSplashAdDismiss();
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onDeeplinkCallback(boolean z2) {
            f fVar = this.f10813a;
            if (fVar != null) {
                fVar.onDeeplinkCallback(z2);
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onDownloadConfirmCallback(Context context, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
            f fVar = this.f10813a;
            if (fVar != null) {
                fVar.onDownloadConfirm(context, aTNetworkConfirmInfo);
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onVideoError(String str, String str2) {
            f fVar = this.f10813a;
            if (fVar != null) {
                fVar.a(99);
                this.f10813a.onSplashAdShowFail(ErrorCode.getErrorCode("", str, str2));
                this.f10813a.onSplashAdDismiss();
            }
        }
    }

    /* renamed from: com.anythink.splashad.a.c$3, reason: invalid class name */
    public class AnonymousClass3 implements com.anythink.core.common.l.b.a.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f10816a;

        public AnonymousClass3(e eVar) {
            this.f10816a = eVar;
        }

        @Override // com.anythink.core.common.l.b.a.b
        public final void a(int i2) {
            this.f10816a.a(i2);
            this.f10816a.onAdDismiss();
        }
    }

    /* renamed from: com.anythink.splashad.a.c$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f10818a;

        public AnonymousClass4(e eVar) {
            this.f10818a = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f10818a.onAdImpression();
        }
    }

    private c(Context context, String str) {
        this(context, str, null);
    }

    public final void d() {
        com.anythink.core.common.f fVar;
        ATAdCreateConfig aTAdCreateConfig = this.f10793a;
        if (aTAdCreateConfig == null || !aTAdCreateConfig.isMultiton() || (fVar = this.f10796d) == null) {
            return;
        }
        fVar.p();
    }

    public c(Context context, String str, ATAdCreateConfig aTAdCreateConfig) {
        this.f10794b = context.getApplicationContext();
        this.f10795c = str;
        this.f10793a = aTAdCreateConfig;
        if (aTAdCreateConfig == null || !aTAdCreateConfig.isMultiton()) {
            this.f10796d = com.anythink.core.common.f.a(context, str, "4");
        } else {
            com.anythink.core.common.f fVar = new com.anythink.core.common.f(context, str, "4");
            this.f10796d = fVar;
            fVar.u();
        }
        this.f10796d.a(new d());
    }

    private static c a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        c cVar = f10792e.get(str);
        if (cVar != null) {
            return cVar;
        }
        synchronized (c.class) {
            if (cVar == null) {
                try {
                    cVar = new c(context, str);
                    f10792e.put(str, cVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return cVar;
    }

    public final com.anythink.core.common.f b() {
        return this.f10796d;
    }

    public final void c() {
        com.anythink.core.common.f fVar = this.f10796d;
        if (fVar != null) {
            fVar.o();
        }
    }

    public final void b(Map<String, Object> map) {
        com.anythink.core.common.f fVar = this.f10796d;
        if (fVar != null) {
            fVar.a(map);
        }
    }

    public final void c(Map<String, Object> map) {
        com.anythink.core.common.f fVar = this.f10796d;
        if (fVar != null) {
            fVar.b(map);
        }
    }

    public final boolean a() {
        ATAdCreateConfig aTAdCreateConfig = this.f10793a;
        return aTAdCreateConfig != null && aTAdCreateConfig.isMultiton();
    }

    public final void a(Context context, b bVar, ATAdMultipleLoadedListener aTAdMultipleLoadedListener, int i2, boolean z2, int i3, com.anythink.core.common.d.c cVar, Map<String, Object> map, ATAdRequest aTAdRequest, long j2, long j3) {
        as asVar = new as();
        asVar.a(context);
        asVar.a(aTAdRequest);
        asVar.f3822n = j2;
        asVar.f3823o = j3;
        asVar.f3816h = i2;
        asVar.f3818j = z2;
        asVar.f3811c = i3;
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
        com.anythink.core.common.f fVar = this.f10796d;
        if (fVar != null) {
            fVar.b(this.f10794b, "4", this.f10795c, asVar, bVar);
        }
    }

    public final com.anythink.core.common.h.c a(Map<String, Object> map) {
        ae aeVarA = a((ATShowConfig) null, map);
        aeVarA.f();
        com.anythink.core.common.f fVar = this.f10796d;
        if (fVar != null) {
            return fVar.b(this.f10794b, false, false, aeVarA);
        }
        return null;
    }

    public final synchronized void a(final Activity activity, final ViewGroup viewGroup, final a aVar, final ATEventInterface aTEventInterface, final ATSplashSkipInfo aTSplashSkipInfo, final ATShowConfig aTShowConfig, final Map<String, Object> map, final ATNativeAdCustomRender aTNativeAdCustomRender) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        final com.anythink.core.common.h.c cVarB = this.f10796d.b((Context) activity, false, true, a(aTShowConfig, map));
        if (cVarB == null) {
            Log.e("anythink", "Splash No Cache.");
            return;
        }
        if (cVarB.e() instanceof CustomSplashAdapter) {
            this.f10796d.a(cVarB);
            cVarB.a(cVarB.c() + 1);
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8137t, new Runnable() { // from class: com.anythink.splashad.a.c.1
                @Override // java.lang.Runnable
                public final void run() throws NumberFormatException {
                    String scenarioId;
                    String showCustomExt;
                    final CustomSplashAdapter customSplashAdapter = (CustomSplashAdapter) cVarB.e();
                    Activity activity2 = activity;
                    if (activity2 != null) {
                        customSplashAdapter.refreshActivityContext(activity2);
                    }
                    final n trackingInfo = cVarB.e().getTrackingInfo();
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
                        ah.a(c.this.f10796d.n(), trackingInfo);
                        com.anythink.core.common.f fVarA = trackingInfo.a();
                        if (fVarA != null) {
                            trackingInfo.f4348z = fVarA.m();
                        }
                        trackingInfo.f4324H = scenarioId;
                        trackingInfo.y(showCustomExt);
                        trackingInfo.n(o.a(trackingInfo.aR(), trackingInfo.N(), jCurrentTimeMillis));
                        ah.a(c.this.f10794b, trackingInfo);
                        ah.a((Map<String, Object>) map, trackingInfo);
                        ah.a(c.this.f10795c, trackingInfo);
                        if (fVarA != null && fVarA.e() != null) {
                            fVarA.e().a(c.this.f10794b, cVarB);
                        }
                    }
                    com.anythink.core.common.u.e.a(c.this.f10794b);
                    com.anythink.core.common.u.e.a(13, trackingInfo, customSplashAdapter.getUnitGroupInfo(), jCurrentTimeMillis);
                    com.anythink.core.common.v.d.a().a(trackingInfo, customSplashAdapter.getUnitGroupInfo(), com.anythink.core.common.v.d.f8152b);
                    s.b();
                    s.b(new Runnable() { // from class: com.anythink.splashad.a.c.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            r rVarC = s.b().c();
                            if (rVarC != null) {
                                CustomSplashAdapter customSplashAdapter2 = customSplashAdapter;
                                customSplashAdapter2.setAdDownloadListener(rVarC.createDataFetchListener(customSplashAdapter2, null, aTEventInterface));
                            }
                            ATSplashSkipInfo aTSplashSkipInfo2 = aTSplashSkipInfo;
                            boolean z2 = aTSplashSkipInfo2 != null && aTSplashSkipInfo2.canUseCustomSkipView();
                            boolean zIsSupportCustomSkipView = customSplashAdapter.isSupportCustomSkipView();
                            if (z2 && zIsSupportCustomSkipView) {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                aTSplashSkipInfo.setContainer(viewGroup);
                                customSplashAdapter.setSplashSkipInfo(aTSplashSkipInfo);
                            }
                            CustomSplashAdapter customSplashAdapter3 = customSplashAdapter;
                            AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                            final f fVar = new f(customSplashAdapter3, aVar, c.this.f10796d);
                            if (customSplashAdapter.isMixNative()) {
                                AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                                c.a(c.this, customSplashAdapter, activity, viewGroup, fVar, z2, cVarB, trackingInfo, aTNativeAdCustomRender);
                            } else if (customSplashAdapter.isMixBanner()) {
                                AnonymousClass1 anonymousClass14 = AnonymousClass1.this;
                                c.a(c.this, customSplashAdapter, activity, viewGroup, fVar, z2, trackingInfo);
                            } else {
                                CustomSplashAdapter customSplashAdapter4 = customSplashAdapter;
                                AnonymousClass1 anonymousClass15 = AnonymousClass1.this;
                                customSplashAdapter4.internalShow(activity, viewGroup, new e(fVar));
                            }
                            n trackingInfo2 = customSplashAdapter.getTrackingInfo();
                            com.anythink.core.common.u.f.a("4", trackingInfo2, trackingInfo2.aR(), trackingInfo2.aQ(), trackingInfo2.N(), trackingInfo2.Z(), 4, SystemClock.elapsedRealtime() - jElapsedRealtime);
                            if (!z2) {
                                if (aTSplashSkipInfo != null) {
                                    Log.e("anythink", "This AdSource does't support 'Custom SkipView' or 'SkipView' is null.");
                                }
                            } else {
                                ATSplashSkipAdListener aTSplashSkipAdListener = aTSplashSkipInfo.getATSplashSkipAdListener();
                                if (aTSplashSkipAdListener != null) {
                                    aTSplashSkipAdListener.isSupportCustomSkipView(zIsSupportCustomSkipView);
                                }
                                if (zIsSupportCustomSkipView) {
                                    aTSplashSkipInfo.getSkipView().setOnClickListener(new View.OnClickListener() { // from class: com.anythink.splashad.a.c.1.1.1
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            f fVar2 = fVar;
                                            if (fVar2 != null) {
                                                fVar2.a(2);
                                                fVar.onSplashAdDismiss();
                                            }
                                        }
                                    });
                                }
                            }
                        }
                    });
                }
            }));
        }
    }

    private ae a(ATShowConfig aTShowConfig, Map<String, Object> map) {
        ae aeVar = new ae();
        aeVar.a(map);
        if (aTShowConfig != null) {
            aeVar.a(aTShowConfig.getATAdInfo());
        }
        com.anythink.core.common.f fVar = this.f10796d;
        if (fVar != null) {
            aeVar.a(fVar.n());
        }
        return aeVar;
    }

    public final List<ATAdInfo> a(Context context) {
        return this.f10796d.a(context);
    }

    public final ATAdStatusInfo a(Context context, Map<String, Object> map) {
        return this.f10796d.a(context, map);
    }

    private boolean a(ATAdStatusInfo aTAdStatusInfo, int i2) {
        return this.f10796d.a(aTAdStatusInfo, i2);
    }

    public final g a(String str) {
        return this.f10796d.b(str);
    }

    public final com.anythink.core.common.h.c a(Context context, ae aeVar) {
        return this.f10796d.b(context, false, false, aeVar);
    }

    private void a(CustomSplashAdapter customSplashAdapter, Activity activity, ViewGroup viewGroup, f fVar, boolean z2, com.anythink.core.common.h.c cVar, n nVar, ATNativeAdCustomRender aTNativeAdCustomRender) {
        BaseAd baseAdF = cVar.f();
        if (baseAdF == null) {
            if (fVar != null) {
                fVar.a(99);
                fVar.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", "showThirdPartyNativeSplash fail, no ad cache."));
                fVar.onSplashAdDismiss();
                return;
            }
            return;
        }
        try {
            com.anythink.core.common.l.c.a.a aVarA = com.anythink.core.common.inner.mixad.b.b.a(customSplashAdapter, new a.C0063a().a(activity).a(nVar).a(baseAdF).a(z2).a(aTNativeAdCustomRender).a(new AnonymousClass2(cVar, fVar, new boolean[]{false})).a());
            if (!(aVarA instanceof com.anythink.core.common.l.c.a.f)) {
                a(fVar, null, "", "Failed to show mixed native splash ad：create splash bridge with an unknown error.");
                return;
            }
            Object objA = ((com.anythink.core.common.l.c.a.f) aVarA).a();
            if (!(objA instanceof View)) {
                a(fVar, null, "", "Failed to show mixed native splash ad: failed to create splash view.");
                return;
            }
            View view = (View) objA;
            ak.a(view);
            ViewGroup customAdContainer = baseAdF.getCustomAdContainer();
            if (customAdContainer != null) {
                ak.a((View) customAdContainer);
                customAdContainer.addView(view);
                view = customAdContainer;
            }
            viewGroup.addView(view);
            if (objA instanceof com.anythink.core.common.l.e.a.f) {
                ((com.anythink.core.common.l.e.a.f) objA).registerNativeAdContainer(viewGroup);
                ((com.anythink.core.common.l.e.a.f) objA).handleFullScreenClick(customAdContainer);
            }
        } catch (Throwable th) {
            a(fVar, null, "", "Failed to show mixed native splash ad： ".concat(String.valueOf(th)));
        }
    }

    private void a(CustomSplashAdapter customSplashAdapter, Activity activity, ViewGroup viewGroup, f fVar, boolean z2, n nVar) {
        e eVar = new e(fVar);
        try {
            customSplashAdapter.internalShow(activity, viewGroup, eVar);
            com.anythink.core.common.l.d.a aVarA = new a.C0063a().a(activity.getApplicationContext()).a(nVar).a(z2).a(new AnonymousClass3(eVar)).a();
            com.anythink.core.common.l.c.a.a aVarA2 = com.anythink.core.common.inner.mixad.b.b.a(customSplashAdapter, aVarA);
            if (!(aVarA2 instanceof com.anythink.core.common.l.c.a.f)) {
                a(null, eVar, "", "Failed to show mixed banner splash ad: create splash bridge with unknow error.");
                return;
            }
            Object objB = ((com.anythink.core.common.l.c.a.f) aVarA2).b();
            if (!(objB instanceof View)) {
                a(null, eVar, "", "Failed to show mixed banner splash ad: failed to get banner view.");
                return;
            }
            View view = (View) objB;
            ak.a(view);
            viewGroup.addView(view, new ViewGroup.LayoutParams(-1, -1));
            IATBaseAdAdapter iATBaseAdAdapterF = aVarA.f();
            if (iATBaseAdAdapterF == null || iATBaseAdAdapterF.supportImpressionCallback()) {
                return;
            }
            view.post(new AnonymousClass4(eVar));
        } catch (Throwable th) {
            a(null, eVar, "", "Failed to show mixed banner splash ad: ".concat(String.valueOf(th)));
        }
    }

    private static void a(f fVar, e eVar, String str, String str2) {
        if (fVar != null) {
            fVar.a(99);
            fVar.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, str, str2));
            fVar.onSplashAdDismiss();
        }
        if (eVar != null) {
            eVar.a(99);
            eVar.onAdShowFail(str, str2);
            eVar.onAdDismiss();
        }
    }

    public final void a(int i2) {
        com.anythink.core.common.f fVar = this.f10796d;
        if (fVar != null) {
            fVar.a(i2);
        }
    }

    public final void a(List<ATAdInfo> list) {
        com.anythink.core.common.f fVar = this.f10796d;
        if (fVar != null) {
            fVar.a(list);
        }
    }

    public static /* synthetic */ void a(c cVar, CustomSplashAdapter customSplashAdapter, Activity activity, ViewGroup viewGroup, f fVar, boolean z2, com.anythink.core.common.h.c cVar2, n nVar, ATNativeAdCustomRender aTNativeAdCustomRender) {
        BaseAd baseAdF = cVar2.f();
        if (baseAdF == null) {
            fVar.a(99);
            fVar.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", "showThirdPartyNativeSplash fail, no ad cache."));
            fVar.onSplashAdDismiss();
            return;
        }
        try {
            com.anythink.core.common.l.c.a.a aVarA = com.anythink.core.common.inner.mixad.b.b.a(customSplashAdapter, new a.C0063a().a(activity).a(nVar).a(baseAdF).a(z2).a(aTNativeAdCustomRender).a(cVar.new AnonymousClass2(cVar2, fVar, new boolean[]{false})).a());
            if (!(aVarA instanceof com.anythink.core.common.l.c.a.f)) {
                a(fVar, null, "", "Failed to show mixed native splash ad：create splash bridge with an unknown error.");
                return;
            }
            Object objA = ((com.anythink.core.common.l.c.a.f) aVarA).a();
            if (!(objA instanceof View)) {
                a(fVar, null, "", "Failed to show mixed native splash ad: failed to create splash view.");
                return;
            }
            View view = (View) objA;
            ak.a(view);
            ViewGroup customAdContainer = baseAdF.getCustomAdContainer();
            if (customAdContainer != null) {
                ak.a((View) customAdContainer);
                customAdContainer.addView(view);
                view = customAdContainer;
            }
            viewGroup.addView(view);
            if (objA instanceof com.anythink.core.common.l.e.a.f) {
                ((com.anythink.core.common.l.e.a.f) objA).registerNativeAdContainer(viewGroup);
                ((com.anythink.core.common.l.e.a.f) objA).handleFullScreenClick(customAdContainer);
            }
        } catch (Throwable th) {
            a(fVar, null, "", "Failed to show mixed native splash ad： ".concat(String.valueOf(th)));
        }
    }

    public static /* synthetic */ void a(c cVar, CustomSplashAdapter customSplashAdapter, Activity activity, ViewGroup viewGroup, f fVar, boolean z2, n nVar) {
        e eVar = new e(fVar);
        try {
            customSplashAdapter.internalShow(activity, viewGroup, eVar);
            com.anythink.core.common.l.d.a aVarA = new a.C0063a().a(activity.getApplicationContext()).a(nVar).a(z2).a(cVar.new AnonymousClass3(eVar)).a();
            com.anythink.core.common.l.c.a.a aVarA2 = com.anythink.core.common.inner.mixad.b.b.a(customSplashAdapter, aVarA);
            if (!(aVarA2 instanceof com.anythink.core.common.l.c.a.f)) {
                a(null, eVar, "", "Failed to show mixed banner splash ad: create splash bridge with unknow error.");
                return;
            }
            Object objB = ((com.anythink.core.common.l.c.a.f) aVarA2).b();
            if (!(objB instanceof View)) {
                a(null, eVar, "", "Failed to show mixed banner splash ad: failed to get banner view.");
                return;
            }
            View view = (View) objB;
            ak.a(view);
            viewGroup.addView(view, new ViewGroup.LayoutParams(-1, -1));
            IATBaseAdAdapter iATBaseAdAdapterF = aVarA.f();
            if (iATBaseAdAdapterF == null || iATBaseAdAdapterF.supportImpressionCallback()) {
                return;
            }
            view.post(cVar.new AnonymousClass4(eVar));
        } catch (Throwable th) {
            a(null, eVar, "", "Failed to show mixed banner splash ad: ".concat(String.valueOf(th)));
        }
    }
}

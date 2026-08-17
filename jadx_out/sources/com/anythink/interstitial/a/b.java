package com.anythink.interstitial.a;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.anythink.core.api.ATAdCreateConfig;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdMultipleLoadedListener;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.ATNativeAdCustomRender;
import com.anythink.core.api.ATShowConfig;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.d.r;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.ae;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.n;
import com.anythink.core.common.l.d.a;
import com.anythink.core.common.l.e.a.a;
import com.anythink.core.common.l.f.a.a;
import com.anythink.core.common.res.b;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.l;
import com.anythink.core.common.v.o;
import com.anythink.core.common.v.p;
import com.anythink.core.common.v.q;
import com.anythink.interstitial.api.ATInterstitialListener;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final String f9064a = "b";

    /* renamed from: h, reason: collision with root package name */
    private static Map<String, b> f9065h = new ConcurrentHashMap(3);

    /* renamed from: b, reason: collision with root package name */
    ATAdCreateConfig f9066b;

    /* renamed from: c, reason: collision with root package name */
    private View f9067c;

    /* renamed from: d, reason: collision with root package name */
    private AtomicBoolean f9068d;

    /* renamed from: e, reason: collision with root package name */
    private Context f9069e;

    /* renamed from: f, reason: collision with root package name */
    private String f9070f;

    /* renamed from: g, reason: collision with root package name */
    private final com.anythink.core.common.f f9071g;

    /* renamed from: i, reason: collision with root package name */
    private a f9072i;

    /* renamed from: com.anythink.interstitial.a.b$1, reason: invalid class name */
    public class AnonymousClass1 implements View.OnTouchListener {
        public AnonymousClass1() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* renamed from: com.anythink.interstitial.a.b$2, reason: invalid class name */
    public class AnonymousClass2 implements b.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ WeakReference f9074a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f9075b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f9076c;

        public AnonymousClass2(WeakReference weakReference, String str, int i2) {
            this.f9074a = weakReference;
            this.f9075b = str;
            this.f9076c = i2;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
            Log.e(b.f9064a, "load: image load fail:".concat(String.valueOf(str2)));
            ImageView imageView = (ImageView) this.f9074a.get();
            if (!TextUtils.equals(this.f9075b, str) || imageView == null) {
                return;
            }
            imageView.setImageResource(this.f9076c);
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            ImageView imageView = (ImageView) this.f9074a.get();
            if (!TextUtils.equals(this.f9075b, str) || imageView == null) {
                return;
            }
            imageView.setImageBitmap(bitmap);
        }
    }

    /* renamed from: com.anythink.interstitial.a.b$4, reason: invalid class name */
    public class AnonymousClass4 extends com.anythink.core.common.l.e.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f9093a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(com.anythink.core.common.h.c cVar, f fVar) {
            super(cVar);
            this.f9093a = fVar;
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onAdClicked(View view) {
            super.onAdClicked(view);
            f fVar = this.f9093a;
            if (fVar != null) {
                fVar.onInterstitialAdClicked();
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onAdImpressed() {
            f fVar = this.f9093a;
            if (fVar != null) {
                fVar.onInterstitialAdShow();
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onAdVideoEnd() {
            f fVar = this.f9093a;
            if (fVar != null) {
                fVar.onInterstitialAdVideoEnd();
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onAdVideoStart() {
            f fVar = this.f9093a;
            if (fVar != null) {
                fVar.onInterstitialAdVideoStart();
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onClose() {
            f fVar = this.f9093a;
            if (fVar != null) {
                fVar.onInterstitialAdClose();
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onDeeplinkCallback(boolean z2) {
            f fVar = this.f9093a;
            if (fVar != null) {
                fVar.onDeeplinkCallback(z2);
            }
        }

        @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
        public final void onVideoError(String str, String str2) {
            f fVar = this.f9093a;
            if (fVar != null) {
                fVar.onInterstitialAdVideoError(str, str2);
            }
        }
    }

    /* renamed from: com.anythink.interstitial.a.b$5, reason: invalid class name */
    public class AnonymousClass5 implements a.InterfaceC0064a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ CustomInterstitialAdapter f9095a;

        public AnonymousClass5(CustomInterstitialAdapter customInterstitialAdapter) {
            this.f9095a = customInterstitialAdapter;
        }

        @Override // com.anythink.core.common.l.e.a.a.InterfaceC0064a
        public final void a(Activity activity) {
            if (b.this.f9072i != null) {
                b.this.f9072i.a(this.f9095a, activity);
            }
        }
    }

    /* renamed from: com.anythink.interstitial.a.b$6, reason: invalid class name */
    public class AnonymousClass6 implements a.InterfaceC0065a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ CustomInterstitialAdapter f9097a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ f f9098b;

        public AnonymousClass6(CustomInterstitialAdapter customInterstitialAdapter, f fVar) {
            this.f9097a = customInterstitialAdapter;
            this.f9098b = fVar;
        }

        @Override // com.anythink.core.common.l.f.a.a.InterfaceC0065a
        public final void a(final Activity activity, ViewGroup viewGroup) {
            if (b.this.f9072i != null) {
                b.this.f9072i.a(this.f9097a, activity);
            }
            this.f9097a.internalShow(activity, viewGroup, new c(this.f9098b) { // from class: com.anythink.interstitial.a.b.6.1
                @Override // com.anythink.interstitial.a.c, com.anythink.core.api.ATCommonImpressionListener
                public final void onAdDismiss() {
                    s.b();
                    s.b(new Runnable() { // from class: com.anythink.interstitial.a.b.6.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (activity.isFinishing()) {
                                return;
                            }
                            activity.finish();
                            activity.overridePendingTransition(0, 0);
                        }
                    });
                    super.onAdDismiss();
                }
            });
        }
    }

    private b(Context context, String str) {
        this(context, str, null);
    }

    private static void d() {
    }

    private static void e() {
    }

    private static void f() {
    }

    public b(Context context, String str, ATAdCreateConfig aTAdCreateConfig) {
        this.f9068d = new AtomicBoolean(false);
        this.f9069e = context.getApplicationContext();
        this.f9070f = str;
        this.f9066b = aTAdCreateConfig;
        if (aTAdCreateConfig == null) {
            this.f9071g = com.anythink.core.common.f.a(context, str, "3");
        } else {
            if (!aTAdCreateConfig.isMultiton()) {
                this.f9071g = com.anythink.core.common.f.a(context, str, "3");
                return;
            }
            com.anythink.core.common.f fVar = new com.anythink.core.common.f(context, str, "3");
            this.f9071g = fVar;
            fVar.u();
        }
    }

    public static b a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        b bVar = f9065h.get(str);
        if (bVar != null) {
            return bVar;
        }
        synchronized (b.class) {
            if (bVar == null) {
                try {
                    bVar = new b(context, str);
                    f9065h.put(str, bVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return bVar;
    }

    public final com.anythink.core.common.f b() {
        return this.f9071g;
    }

    public final void c() {
        com.anythink.core.common.f fVar;
        ATAdCreateConfig aTAdCreateConfig = this.f9066b;
        if (aTAdCreateConfig == null || !aTAdCreateConfig.isMultiton() || (fVar = this.f9071g) == null) {
            return;
        }
        fVar.p();
    }

    public final void b(Map<String, Object> map) {
        com.anythink.core.common.f fVar = this.f9071g;
        if (fVar != null) {
            fVar.a(map);
        }
    }

    public final void c(Map<String, Object> map) {
        com.anythink.core.common.f fVar = this.f9071g;
        if (fVar != null) {
            fVar.b(map);
        }
    }

    private void a(Activity activity) {
        if (activity == null) {
            return;
        }
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(this.f9069e).b(s.b().p());
        String strQ = bVarB.q();
        String strP = bVarB.p();
        if (this.f9067c == null) {
            this.f9067c = LayoutInflater.from(activity.getApplicationContext()).inflate(p.a(activity, "interstitial_loading_layout", "layout"), (ViewGroup) null);
        }
        this.f9067c.setOnTouchListener(new AnonymousClass1());
        ImageView imageView = (ImageView) this.f9067c.findViewById(p.a(activity, "interstitial_iv_loading", "id"));
        TextView textView = (TextView) this.f9067c.findViewById(p.a(activity, "interstitial_tv_loading", "id"));
        int iA = p.a((Context) activity, 30.0f);
        imageView.setMinimumWidth(iA);
        imageView.setMinimumHeight(iA);
        int iA2 = p.a((Context) activity, 90.0f);
        imageView.setMaxWidth(iA2);
        imageView.setMaxHeight(iA2);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int iA3 = p.a(activity, "interstitial_loading_default", "drawable");
        if (TextUtils.isEmpty(strQ)) {
            imageView.setImageResource(iA3);
        } else {
            com.anythink.core.common.res.b.a(activity.getApplicationContext()).a(new com.anythink.core.common.res.e(3, strQ), new AnonymousClass2(new WeakReference(imageView), strQ, iA3));
        }
        if (!TextUtils.isEmpty(strP)) {
            textView.setText(strP);
        } else {
            textView.setText(p.a(activity, "interstitial_text_loading_default", "string"));
        }
        View view = this.f9067c;
        if (view != null && view.getParent() != null) {
            ((ViewGroup) this.f9067c.getParent()).removeView(this.f9067c);
        }
        ((ViewGroup) activity.getWindow().getDecorView()).addView(this.f9067c, new FrameLayout.LayoutParams(-1, -1));
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
        this.f9071g.b(this.f9069e, "3", this.f9070f, asVar, aVar);
    }

    public final List<ATAdInfo> a(Context context) {
        return this.f9071g.a(context);
    }

    public final ATAdStatusInfo a(Context context, Map<String, Object> map) {
        return this.f9071g.a(context, map);
    }

    private com.anythink.core.common.h.c a(Context context, ae aeVar) {
        return this.f9071g.b(context, false, true, aeVar);
    }

    public final com.anythink.core.common.h.c a(Map<String, Object> map) {
        ae aeVarA = a((ATShowConfig) null, map);
        aeVarA.f();
        com.anythink.core.common.f fVar = this.f9071g;
        if (fVar != null) {
            return fVar.b(this.f9069e, false, false, aeVarA);
        }
        return null;
    }

    public final synchronized void a(Activity activity, ATShowConfig aTShowConfig, ATInterstitialListener aTInterstitialListener, ATEventInterface aTEventInterface, Map<String, Object> map, ATNativeAdCustomRender aTNativeAdCustomRender) {
        try {
            if (this.f9068d.get()) {
                return;
            }
            a aVar = this.f9072i;
            if (aVar != null) {
                aVar.a();
                this.f9072i = null;
            }
            this.f9072i = new a(activity, aTShowConfig, aTInterstitialListener, aTEventInterface, map, aTNativeAdCustomRender, this.f9070f, this);
            a(activity, this.f9071g.b((Context) activity, false, true, a(aTShowConfig, map)), aTShowConfig, aTInterstitialListener, aTEventInterface, map, aTNativeAdCustomRender);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean a() {
        ATAdCreateConfig aTAdCreateConfig = this.f9066b;
        return aTAdCreateConfig != null && aTAdCreateConfig.isMultiton();
    }

    public final void a(final Activity activity, final com.anythink.core.common.h.c cVar, final ATShowConfig aTShowConfig, final ATInterstitialListener aTInterstitialListener, final ATEventInterface aTEventInterface, final Map<String, Object> map, final ATNativeAdCustomRender aTNativeAdCustomRender) {
        if (cVar != null && (cVar.e() instanceof CustomInterstitialAdapter)) {
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.f9071g.a(cVar);
            cVar.a(cVar.c() + 1);
            final int iAy = cVar.e().getUnitGroupInfo().ay();
            if (iAy > 0) {
                this.f9068d.set(true);
            }
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8134q, new Runnable() { // from class: com.anythink.interstitial.a.b.3
                @Override // java.lang.Runnable
                public final void run() throws NumberFormatException {
                    final String scenarioId;
                    String showCustomExt;
                    final CustomInterstitialAdapter customInterstitialAdapter = (CustomInterstitialAdapter) cVar.e();
                    Activity activity2 = activity;
                    if (activity2 != null) {
                        customInterstitialAdapter.refreshActivityContext(activity2);
                    }
                    final n trackingInfo = cVar.e().getTrackingInfo();
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
                        com.anythink.core.common.f fVarA = trackingInfo.a();
                        if (fVarA != null) {
                            trackingInfo.f4348z = fVarA.m();
                        }
                        ah.a(b.this.f9071g.n(), trackingInfo);
                        trackingInfo.f4324H = scenarioId;
                        trackingInfo.y(showCustomExt);
                        trackingInfo.n(o.a(trackingInfo.aR(), trackingInfo.N(), jCurrentTimeMillis));
                        ah.a(b.this.f9069e, trackingInfo);
                        ah.a((Map<String, Object>) map, trackingInfo);
                        ah.a(b.this.f9070f, trackingInfo);
                        if (fVarA != null && fVarA.e() != null) {
                            fVarA.e().a(b.this.f9069e, cVar);
                        }
                    }
                    com.anythink.core.common.u.e.a(b.this.f9069e);
                    com.anythink.core.common.u.e.a(13, trackingInfo, cVar.e().getUnitGroupInfo(), jCurrentTimeMillis);
                    com.anythink.core.common.v.d.a().a(trackingInfo, cVar.e().getUnitGroupInfo(), com.anythink.core.common.v.d.f8152b);
                    if (iAy > 0) {
                        s.b();
                        s.b(new Runnable() { // from class: com.anythink.interstitial.a.b.3.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                b.a(b.this, activity);
                            }
                        });
                    }
                    s.b();
                    s.a(new Runnable() { // from class: com.anythink.interstitial.a.b.3.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            customInterstitialAdapter.setScenario(scenarioId);
                            r rVarC = s.b().c();
                            if (rVarC != null) {
                                CustomInterstitialAdapter customInterstitialAdapter2 = customInterstitialAdapter;
                                customInterstitialAdapter2.setAdDownloadListener(rVarC.createDataFetchListener(customInterstitialAdapter2, null, aTEventInterface));
                            }
                            CustomInterstitialAdapter customInterstitialAdapter3 = customInterstitialAdapter;
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            f fVar = new f(customInterstitialAdapter3, aTInterstitialListener, b.this.f9072i, b.this.f9071g);
                            if (customInterstitialAdapter.isMixNative()) {
                                AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                                b.a(b.this, customInterstitialAdapter, activity, fVar, cVar, trackingInfo, scenarioId, aTNativeAdCustomRender);
                            } else if (customInterstitialAdapter.isMixSplash()) {
                                AnonymousClass3 anonymousClass33 = AnonymousClass3.this;
                                b.a(b.this, activity, customInterstitialAdapter, fVar);
                            } else {
                                customInterstitialAdapter.internalShow(activity, null, new c(fVar));
                            }
                            n trackingInfo2 = customInterstitialAdapter.getTrackingInfo();
                            com.anythink.core.common.u.f.a("4", trackingInfo2, trackingInfo2.aR(), trackingInfo2.aQ(), trackingInfo2.N(), trackingInfo2.Z(), 4, SystemClock.elapsedRealtime() - jElapsedRealtime);
                            AnonymousClass3 anonymousClass34 = AnonymousClass3.this;
                            if (iAy <= 0 || !b.this.f9068d.get()) {
                                return;
                            }
                            if (b.this.f9067c != null) {
                                ((ViewGroup) b.this.f9067c.getParent()).removeView(b.this.f9067c);
                            }
                            b.this.f9068d.set(false);
                        }
                    }, iAy);
                }
            }));
            return;
        }
        if (this.f9071g.a((ATAdStatusInfo) null, 7)) {
            a(s.b().M(), 7, (com.anythink.core.common.d.a) null, (com.anythink.core.common.d.c) null, (ATAdMultipleLoadedListener) null, map, (ATAdRequest) null);
        }
    }

    private ae a(ATShowConfig aTShowConfig, Map<String, Object> map) {
        ae aeVar = new ae();
        aeVar.a(map);
        com.anythink.core.common.f fVar = this.f9071g;
        if (fVar != null) {
            aeVar.a(fVar.n());
        }
        if (aTShowConfig != null) {
            aeVar.a(aTShowConfig.getATAdInfo());
        }
        return aeVar;
    }

    private void a(CustomInterstitialAdapter customInterstitialAdapter, Activity activity, f fVar, com.anythink.core.common.h.c cVar, n nVar, String str, ATNativeAdCustomRender aTNativeAdCustomRender) {
        String strA;
        BaseAd baseAdF = cVar.f();
        if (baseAdF == null) {
            if (fVar != null) {
                fVar.onInterstitialAdVideoError("", "showThirdPartyNativeInterstitial fail, no ad cache.");
                return;
            }
            return;
        }
        com.anythink.core.common.l.c.a.a aVarA = com.anythink.core.common.inner.mixad.b.b.a(customInterstitialAdapter, new a.C0063a().a(activity).a(baseAdF).a(nVar).a(aTNativeAdCustomRender).a(new AnonymousClass4(cVar, fVar)).a());
        if (!(aVarA instanceof com.anythink.core.common.l.c.a.c)) {
            if (fVar != null) {
                fVar.onInterstitialAdVideoError("", "create interstitial bridge with unknow error.");
                return;
            }
            return;
        }
        com.anythink.core.basead.b.c cVar2 = new com.anythink.core.basead.b.c();
        if (nVar == null || this.f9071g == null) {
            strA = "";
        } else {
            strA = com.anythink.core.common.f.a(nVar.aQ(), nVar.N(), String.valueOf(nVar.Z()));
        }
        if (TextUtils.isEmpty(strA)) {
            if (fVar != null) {
                fVar.onInterstitialAdVideoError("", "create interstitial bridge with error: eventId is empty.");
            }
        } else {
            cVar2.f1636d = strA;
            cVar2.f1637e = l.f(activity);
            cVar2.f1634b = str;
            cVar2.f1633a = Integer.parseInt("3");
            ((com.anythink.core.common.l.c.a.c) aVarA).a(activity, cVar2, new AnonymousClass5(customInterstitialAdapter));
        }
    }

    private void a(Activity activity, CustomInterstitialAdapter customInterstitialAdapter, f fVar) {
        com.anythink.core.basead.b.c cVar = new com.anythink.core.basead.b.c();
        by unitGroupInfo = customInterstitialAdapter.getUnitGroupInfo();
        if (unitGroupInfo == null) {
            return;
        }
        com.anythink.core.common.l.c.a.a aVarA = com.anythink.core.common.inner.mixad.b.b.a(customInterstitialAdapter, null);
        if (aVarA instanceof com.anythink.core.common.l.c.a.c) {
            cVar.f1636d = com.anythink.core.common.f.a(this.f9070f, unitGroupInfo.G(), String.valueOf(unitGroupInfo.n()));
            ((com.anythink.core.common.l.c.a.c) aVarA).a(activity, cVar, new AnonymousClass6(customInterstitialAdapter, fVar));
        } else if (fVar != null) {
            fVar.onInterstitialAdVideoError("", "create interstitial bridge with unknow error.");
        }
    }

    public final void a(int i2) {
        com.anythink.core.common.f fVar = this.f9071g;
        if (fVar != null) {
            fVar.a(i2);
        }
    }

    public final void a(List<ATAdInfo> list) {
        com.anythink.core.common.f fVar = this.f9071g;
        if (fVar != null) {
            fVar.a(list);
        }
    }

    public static /* synthetic */ void a(b bVar, Activity activity) {
        if (activity != null) {
            com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(bVar.f9069e).b(s.b().p());
            String strQ = bVarB.q();
            String strP = bVarB.p();
            if (bVar.f9067c == null) {
                bVar.f9067c = LayoutInflater.from(activity.getApplicationContext()).inflate(p.a(activity, "interstitial_loading_layout", "layout"), (ViewGroup) null);
            }
            bVar.f9067c.setOnTouchListener(bVar.new AnonymousClass1());
            ImageView imageView = (ImageView) bVar.f9067c.findViewById(p.a(activity, "interstitial_iv_loading", "id"));
            TextView textView = (TextView) bVar.f9067c.findViewById(p.a(activity, "interstitial_tv_loading", "id"));
            int iA = p.a((Context) activity, 30.0f);
            imageView.setMinimumWidth(iA);
            imageView.setMinimumHeight(iA);
            int iA2 = p.a((Context) activity, 90.0f);
            imageView.setMaxWidth(iA2);
            imageView.setMaxHeight(iA2);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int iA3 = p.a(activity, "interstitial_loading_default", "drawable");
            if (TextUtils.isEmpty(strQ)) {
                imageView.setImageResource(iA3);
            } else {
                com.anythink.core.common.res.b.a(activity.getApplicationContext()).a(new com.anythink.core.common.res.e(3, strQ), bVar.new AnonymousClass2(new WeakReference(imageView), strQ, iA3));
            }
            if (!TextUtils.isEmpty(strP)) {
                textView.setText(strP);
            } else {
                textView.setText(p.a(activity, "interstitial_text_loading_default", "string"));
            }
            View view = bVar.f9067c;
            if (view != null && view.getParent() != null) {
                ((ViewGroup) bVar.f9067c.getParent()).removeView(bVar.f9067c);
            }
            ((ViewGroup) activity.getWindow().getDecorView()).addView(bVar.f9067c, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public static /* synthetic */ void a(b bVar, CustomInterstitialAdapter customInterstitialAdapter, Activity activity, f fVar, com.anythink.core.common.h.c cVar, n nVar, String str, ATNativeAdCustomRender aTNativeAdCustomRender) {
        String strA;
        BaseAd baseAdF = cVar.f();
        if (baseAdF == null) {
            fVar.onInterstitialAdVideoError("", "showThirdPartyNativeInterstitial fail, no ad cache.");
            return;
        }
        com.anythink.core.common.l.c.a.a aVarA = com.anythink.core.common.inner.mixad.b.b.a(customInterstitialAdapter, new a.C0063a().a(activity).a(baseAdF).a(nVar).a(aTNativeAdCustomRender).a(bVar.new AnonymousClass4(cVar, fVar)).a());
        if (!(aVarA instanceof com.anythink.core.common.l.c.a.c)) {
            fVar.onInterstitialAdVideoError("", "create interstitial bridge with unknow error.");
            return;
        }
        com.anythink.core.basead.b.c cVar2 = new com.anythink.core.basead.b.c();
        if (nVar == null || bVar.f9071g == null) {
            strA = "";
        } else {
            strA = com.anythink.core.common.f.a(nVar.aQ(), nVar.N(), String.valueOf(nVar.Z()));
        }
        if (TextUtils.isEmpty(strA)) {
            fVar.onInterstitialAdVideoError("", "create interstitial bridge with error: eventId is empty.");
            return;
        }
        cVar2.f1636d = strA;
        cVar2.f1637e = l.f(activity);
        cVar2.f1634b = str;
        cVar2.f1633a = Integer.parseInt("3");
        ((com.anythink.core.common.l.c.a.c) aVarA).a(activity, cVar2, bVar.new AnonymousClass5(customInterstitialAdapter));
    }

    public static /* synthetic */ void a(b bVar, Activity activity, CustomInterstitialAdapter customInterstitialAdapter, f fVar) {
        com.anythink.core.basead.b.c cVar = new com.anythink.core.basead.b.c();
        by unitGroupInfo = customInterstitialAdapter.getUnitGroupInfo();
        if (unitGroupInfo != null) {
            com.anythink.core.common.l.c.a.a aVarA = com.anythink.core.common.inner.mixad.b.b.a(customInterstitialAdapter, null);
            if (!(aVarA instanceof com.anythink.core.common.l.c.a.c)) {
                fVar.onInterstitialAdVideoError("", "create interstitial bridge with unknow error.");
            } else {
                cVar.f1636d = com.anythink.core.common.f.a(bVar.f9070f, unitGroupInfo.G(), String.valueOf(unitGroupInfo.n()));
                ((com.anythink.core.common.l.c.a.c) aVarA).a(activity, cVar, bVar.new AnonymousClass6(customInterstitialAdapter, fVar));
            }
        }
    }
}

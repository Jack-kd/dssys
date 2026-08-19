package com.sigmob.sdk.splash;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.network.f;
import com.sigmob.sdk.splash.i;
import com.sigmob.windad.Splash.WindSplashADListener;
import com.sigmob.windad.Splash.WindSplashAdRequest;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import com.sigmob.windad.WindAds;
import java.io.File;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public final class f extends com.sigmob.sdk.manager.b implements C1258h.b, f.a, e {

    /* renamed from: h, reason: collision with root package name */
    private static final int f38651h = 131073;

    /* renamed from: i, reason: collision with root package name */
    private final LoadAdRequest f38652i;

    /* renamed from: k, reason: collision with root package name */
    private List<BaseAdUnit> f38654k;

    /* renamed from: l, reason: collision with root package name */
    private BaseAdUnit f38655l;

    /* renamed from: m, reason: collision with root package name */
    private BaseAdUnit f38656m;

    /* renamed from: o, reason: collision with root package name */
    private WindSplashADListener f38658o;

    /* renamed from: p, reason: collision with root package name */
    private i f38659p;

    /* renamed from: r, reason: collision with root package name */
    private int f38661r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f38662s;

    /* renamed from: u, reason: collision with root package name */
    private long f38664u;

    /* renamed from: q, reason: collision with root package name */
    private int f38660q = 0;

    /* renamed from: t, reason: collision with root package name */
    private final Handler f38663t = new Handler(Looper.getMainLooper()) { // from class: com.sigmob.sdk.splash.f.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == f.f38651h && ((com.sigmob.sdk.manager.b) f.this).f37774b == AdStatus.AdStatusLoading) {
                f.this.f38663t.removeMessages(f.f38651h);
                WindAdError windAdError = WindAdError.ERROR_SIGMOB_AD_TIME_OUT;
                f.this.a(windAdError.getErrorCode(), windAdError.getMessage(), f.this.f38652i);
                f.this.a(windAdError, true);
            }
        }
    };

    /* renamed from: j, reason: collision with root package name */
    private final Runnable f38653j = new Runnable() { // from class: com.sigmob.sdk.splash.f.2
        @Override // java.lang.Runnable
        public void run() {
            f.this.p();
            if (f.this.f38659p == null) {
                return;
            }
            if (f.this.f38661r <= 0) {
                f.this.f38659p.setDuration(0);
                return;
            }
            f.this.f38659p.setDuration(f.this.f38661r);
            f.f(f.this);
            f.this.f38663t.postDelayed(f.this.f38653j, 1000L);
        }
    };

    /* renamed from: n, reason: collision with root package name */
    private final d f38657n = new d(this);

    public f(WindSplashAdRequest windSplashAdRequest, WindSplashADListener windSplashADListener) {
        this.f38652i = new LoadAdRequest(windSplashAdRequest);
        this.f38658o = windSplashADListener;
    }

    public static /* synthetic */ int f(f fVar) {
        int i2 = fVar.f38661r;
        fVar.f38661r = i2 - 1;
        return i2;
    }

    private Activity t() {
        Activity activityC = com.sigmob.sdk.base.utils.w.c(this.f38659p);
        SigmobLogger.d(this.f37773a, "getActivity: activityFromView = " + activityC, new Object[0]);
        return activityC;
    }

    private boolean u() {
        boolean z2 = c() && com.sigmob.sdk.base.utils.v.b(this.f38657n);
        SigmobLog.d("isExistCache: cached = " + z2);
        if (z2) {
            this.f38657n.a((Map<String, Object>) null, this.f38656m);
            C1258h.g().a(this.f38656m, this);
            SigmobLog.d("isExistCache: ready");
            l(this.f38656m);
        }
        return z2;
    }

    private synchronized void v() {
        LoadAdRequest loadAdRequest;
        if (this.f38659p != null && (loadAdRequest = this.f38652i) != null && !loadAdRequest.isDisableAutoHideAd()) {
            com.sigmob.sdk.base.utils.w.a(this.f38659p);
            this.f38659p = null;
        }
    }

    private void w() {
        if (this.f37774b == AdStatus.AdStatusPlaying) {
            this.f37774b = AdStatus.AdStatusClose;
            WindSplashADListener windSplashADListener = this.f38658o;
            if (windSplashADListener == null) {
                return;
            }
            windSplashADListener.onSplashAdClose(this.f38652i.getPlacementId());
        }
    }

    @Override // com.sigmob.sdk.splash.e
    public void a_() {
        p();
    }

    @Override // com.sigmob.sdk.splash.e
    public void b_() {
        WindAdError windAdError = WindAdError.ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE;
        ad.a(PointCategory.PLAY, windAdError, this.f38656m, (LoadAdRequest) null);
        a(windAdError, false);
        n();
    }

    @Override // com.sigmob.sdk.splash.e
    public void c_() {
        if (com.sigmob.sdk.base.utils.v.b(this.f38659p)) {
            this.f38659p.setDuration(0);
        }
        if (com.sigmob.sdk.base.utils.v.b(this.f38658o)) {
            this.f38658o.onSplashAdSkip(this.f38652i.getPlacementId());
        }
    }

    @Override // com.sigmob.sdk.splash.e
    public void d_() {
    }

    @Override // com.sigmob.sdk.manager.b
    public BaseAdUnit i() {
        return this.f38655l;
    }

    public void m() {
        if (com.sigmob.sdk.base.utils.v.b(this.f38656m) && this.f38656m.getSessionManager() == null) {
            new k().a(this.f38656m);
        }
    }

    public void n() {
        if (com.sigmob.sdk.base.utils.v.b(this.f38657n)) {
            this.f38657n.b(this.f38656m);
        }
        w();
        v();
        g();
        this.f38658o = null;
        this.f38655l = null;
        p();
        b((com.sigmob.sdk.manager.b) this);
    }

    public String r() {
        return i(this.f38656m);
    }

    public Map<String, BiddingResponse> s() {
        return j(this.f38656m);
    }

    private BaseAdUnit b(LoadAdRequest loadAdRequest) {
        if (loadAdRequest == null) {
            com.sigmob.sdk.base.utils.k.e(this.f37773a, "getAdUnitCache: request is null.", new Object[0]);
            return null;
        }
        String strC = com.sigmob.sdk.base.utils.n.c(loadAdRequest.getPlacementId());
        Object fromCache = FileUtil.readFromCache(strC);
        if (!(fromCache instanceof BaseAdUnit)) {
            return null;
        }
        FileUtil.deleteFile(strC);
        BaseAdUnit baseAdUnit = (BaseAdUnit) fromCache;
        if (baseAdUnit.getAd() == null) {
            com.sigmob.sdk.base.utils.k.e(this.f37773a, "getAdUnitCache: ad is null.", new Object[0]);
            return null;
        }
        if (com.sigmob.sdk.base.utils.v.b(baseAdUnit.bidding_response) && com.sigmob.sdk.base.utils.s.b(baseAdUnit.bidding_response.currency, l())) {
            com.sigmob.sdk.base.utils.k.e(this.f37773a, "getAdUnitCache: Inconsistent currency.", new Object[0]);
            return null;
        }
        baseAdUnit.setTraceId(loadAdRequest.getTraceId());
        baseAdUnit.setRequestSceneType(loadAdRequest.getRequest_scene_type());
        com.sigmob.sdk.base.utils.k.c(this.f37773a, "getAdUnitCache: vid = " + baseAdUnit.getVid(), new Object[0]);
        return baseAdUnit;
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1284x
    public void a() {
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void c(BaseAdUnit baseAdUnit) {
        this.f38662s = true;
        a("click", baseAdUnit);
        if (com.sigmob.sdk.base.utils.d.a(com.sigmob.sdk.base.utils.d.b(this.f37773a, baseAdUnit)) && com.sigmob.sdk.base.utils.v.b(this.f38658o)) {
            this.f38658o.onSplashAdClick(this.f38652i.getPlacementId());
        }
        if (com.sigmob.sdk.base.utils.v.b(this.f38659p) && this.f38659p.f()) {
            d(baseAdUnit);
        }
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void d(BaseAdUnit baseAdUnit) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f38664u <= 500) {
            SigmobLogger.d(this.f37773a, "onInterstitialDismissed: unavailable callback.", new Object[0]);
            return;
        }
        this.f38664u = jCurrentTimeMillis;
        this.f37774b = AdStatus.AdStatusClose;
        if (com.sigmob.sdk.base.utils.v.b(this.f38658o)) {
            this.f38658o.onSplashAdClose(this.f38652i.getPlacementId());
        }
        this.f38663t.post(new Runnable() { // from class: com.sigmob.sdk.splash.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f38714b.n();
            }
        });
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) baseAdUnit.getBid_token())) {
            a(null, k(), l(), 45, Boolean.TRUE, com.sigmob.sdk.base.j.SplashCloseRequest, null);
        }
    }

    @Override // com.sigmob.sdk.manager.b
    public BaseAdUnit e() {
        return (this.f38656m == null && com.sigmob.sdk.base.utils.f.b(this.f38654k)) ? this.f38654k.get(0) : this.f38656m;
    }

    @Override // com.sigmob.sdk.manager.b
    public LoadAdRequest f() {
        return this.f38652i;
    }

    @Override // com.sigmob.sdk.manager.b
    public void g() {
        C1258h.b(this.f38656m);
        this.f38656m = null;
        this.f38654k = null;
    }

    public void o() {
        WindAdError windAdError = WindAdError.ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION;
        ad.a(PointCategory.PLAY, windAdError, this.f38656m, (LoadAdRequest) null);
        a(windAdError, false);
        n();
    }

    public void p() {
        this.f38663t.removeCallbacksAndMessages(null);
    }

    public String q() {
        return h(this.f38656m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, String str, LoadAdRequest loadAdRequest) {
        ad.a("request", (String) null, i2, str, (WindAdRequest) null, loadAdRequest, (BaseAdUnit) null, new ad.a() { // from class: com.sigmob.sdk.splash.s
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                f.a(obj);
            }
        });
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1284x
    public void b() {
        BaseBroadcastReceiver.a(com.sigmob.sdk.b.e(), this.f38656m.getUuid(), IntentActions.ACTION_INTERSTITIAL_DISMISS);
    }

    @Override // com.sigmob.sdk.manager.b
    public boolean c() {
        try {
            if (this.f38656m == null) {
                this.f38656m = b(this.f38652i);
            }
            if (this.f38656m == null) {
                return false;
            }
            SigmobLog.d("isReady: vid = " + this.f38656m.getVid());
            boolean zCanRead = new File(this.f38656m.getSplashFilePath()).canRead();
            boolean zIsExpiredAd = this.f38656m.isExpiredAd();
            boolean zA = this.f38657n.a(this.f38656m);
            boolean z2 = zCanRead && !zIsExpiredAd && zA;
            SigmobLog.d("isReady: ready = " + z2 + ", isExist = " + zCanRead + ", isExpired = " + zIsExpiredAd + ", isValid = " + zA);
            return z2;
        } catch (Exception e2) {
            SigmobLog.e("isReady: error = " + e2.getMessage());
            return false;
        }
    }

    @Override // com.sigmob.sdk.manager.b
    public boolean d() {
        return f(this.f38656m);
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void e(BaseAdUnit baseAdUnit) {
    }

    @Override // com.sigmob.sdk.base.network.f.a
    public void a(int i2, String str, String str2, LoadAdRequest loadAdRequest) {
        WindAdError windAdError = WindAdError.getWindAdError(i2);
        if (windAdError == null) {
            windAdError = WindAdError.ERROR_SIGMOB_REQUEST;
            windAdError.setErrorMessage(i2, str);
        }
        ad.a(PointCategory.RESPOND, "0", loadAdRequest);
        a(i2, str, loadAdRequest);
        a(windAdError, true);
    }

    public void b(Activity activity) {
        if (this.f38659p == null || activity != t()) {
            return;
        }
        this.f38659p.e();
        this.f38663t.post(this.f38653j);
    }

    public void a(Activity activity) {
        if (this.f38659p == null || activity != t()) {
            return;
        }
        this.f38659p.d();
        p();
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void b(BaseAdUnit baseAdUnit) {
        a("start", baseAdUnit);
        this.f37774b = AdStatus.AdStatusPlaying;
        m();
        C1258h.a(baseAdUnit);
        if (com.sigmob.sdk.base.utils.v.b(this.f38659p)) {
            int duration = this.f38659p.getDuration();
            if (duration > 0 && duration < this.f38661r) {
                this.f38661r = duration;
            }
            this.f38659p.setDuration(this.f38661r);
            this.f38659p.setVisibility(0);
        }
        b((com.sigmob.sdk.manager.b) this);
        if (com.sigmob.sdk.base.utils.v.b(this.f38658o)) {
            this.f38658o.onSplashAdShow(this.f38652i.getPlacementId());
        }
        this.f38660q = this.f38661r;
        this.f38663t.post(this.f38653j);
    }

    public synchronized void a(ViewGroup viewGroup) {
        try {
            if (1 != ClientMetadata.getInstance().getOrientationInt().intValue()) {
                o();
                return;
            }
            if (com.sigmob.sdk.base.utils.v.b(viewGroup) && com.sigmob.sdk.base.utils.v.b(this.f38656m) && a(viewGroup, this.f38656m)) {
                BaseAdUnit baseAdUnit = this.f38656m;
                this.f38655l = baseAdUnit;
                this.f38657n.a(baseAdUnit, (Bundle) null);
                if (com.sigmob.sdk.base.utils.v.b(this.f38657n.f38649c)) {
                    this.f38661r = this.f38657n.f38649c.l();
                }
                if (com.sigmob.sdk.base.utils.v.b(this.f38659p)) {
                    this.f38659p.setDuration(this.f38661r);
                    if (this.f38659p.c()) {
                        viewGroup.addView(this.f38659p, new ViewGroup.LayoutParams(-1, -1));
                        return;
                    }
                }
            }
            b_();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void b(BaseAdUnit baseAdUnit, String str) {
        com.sigmob.sdk.base.utils.k.f(this.f37773a, "onInterstitialFailed: error = " + str, new Object[0]);
        WindAdError windAdError = WindAdError.ERROR_SIGMOB_FILE_DOWNLOAD;
        windAdError.setMessage(str);
        a(windAdError, true);
        ad.a("load", windAdError, this.f38656m, (LoadAdRequest) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        SigmobLog.d("loadEnd: placementId = " + str);
        WindSplashADListener windSplashADListener = this.f38658o;
        if (windSplashADListener == null) {
            return;
        }
        windSplashADListener.onSplashAdLoadSuccess(str);
    }

    @Override // com.sigmob.sdk.base.common.C1258h.b
    public void a(BaseAdUnit baseAdUnit) {
        SigmobLog.d("loadStart: placementId = " + h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BaseAdUnit baseAdUnit, int i2) {
        if (i2 == 0 && this.f38662s) {
            d(baseAdUnit);
        }
    }

    @Override // com.sigmob.sdk.base.common.C1258h.b
    public void a(BaseAdUnit baseAdUnit, String str) {
        final String strH = h();
        if (com.sigmob.sdk.base.utils.s.b(str)) {
            SigmobLog.e("loadEnd: placementId = " + strH + ", adStatus = " + this.f37774b + ", error = " + str);
            b(this.f38656m, str);
            return;
        }
        if (this.f37774b == AdStatus.AdStatusClose) {
            FileUtil.writeToCache(baseAdUnit, com.sigmob.sdk.base.utils.n.c(this.f38652i.getPlacementId()));
        }
        int request_scene_type = this.f38652i.getRequest_scene_type();
        SigmobLogger.d(this.f37773a, "loadEnd: sceneType = " + request_scene_type, new Object[0]);
        a(baseAdUnit, this.f38652i);
        if (this.f37774b == AdStatus.AdStatusLoading && request_scene_type == com.sigmob.sdk.base.j.NormalRequest.a()) {
            if (1 != ClientMetadata.getInstance().getOrientationInt().intValue()) {
                o();
                return;
            }
            p();
            this.f37774b = AdStatus.AdStatusReady;
            a((com.sigmob.sdk.manager.b) this);
            WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.splash.q
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38715b.b(strH);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(WindAdError windAdError, boolean z2) {
        SigmobLogger.e(this.f37773a, "handleError: error = " + windAdError + ", isLoadError = " + z2, new Object[0]);
        this.f37774b = AdStatus.AdStatusNone;
        p();
        int request_scene_type = this.f38652i.getRequest_scene_type();
        String placementId = this.f38652i.getPlacementId();
        if (com.sigmob.sdk.manager.b.c(Integer.valueOf(request_scene_type)) && com.sigmob.sdk.base.utils.v.b(this.f38658o)) {
            if (z2) {
                this.f38658o.onSplashAdLoadFail(windAdError, placementId);
            } else {
                this.f38658o.onSplashAdShowError(windAdError, placementId);
            }
        }
        if (com.sigmob.sdk.base.utils.v.b(this.f38657n)) {
            this.f38657n.b(this.f38656m);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setAdx_id(null);
        }
    }

    public void a(String str, Integer num, String str2, Integer num2, Boolean bool, com.sigmob.sdk.base.j jVar, String str3) {
        boolean zA = com.sigmob.sdk.manager.b.a(jVar);
        this.f38652i.setOriginVid(zA ? this.f37776d : "");
        this.f38652i.setOriginPrice(zA ? this.f37777e : "");
        this.f38652i.setRequest_scene_type(jVar.a());
        this.f38652i.setBidToken(str);
        this.f38652i.setBidFloor(num);
        this.f38652i.setCurrency(str2);
        if (!com.sigmob.sdk.base.utils.s.b(str3)) {
            str3 = com.sigmob.sdk.manager.b.j();
        }
        this.f38652i.setTraceId(str3);
        SigmobLog.d("loadAd: preload = " + bool + ", sceneType = " + jVar.a());
        if (com.sigmob.sdk.base.utils.v.b(bool)) {
            this.f37774b = AdStatus.AdStatusLoading;
            if (u()) {
                return;
            }
        }
        a(this.f38652i);
        com.sigmob.sdk.base.network.f.a(this.f38652i, this);
        this.f38663t.sendEmptyMessageDelayed(f38651h, num2.intValue() * 1000);
    }

    public void a(String str, String str2) {
        a(this.f38656m, str, str2);
    }

    @Override // com.sigmob.sdk.manager.b
    public void a(String str, String str2, com.sigmob.sdk.base.j jVar) {
        super.a(str, str2, jVar);
        if (com.sigmob.sdk.base.utils.s.b(this.f38652i.getBidToken())) {
            return;
        }
        g();
        a(null, k(), l(), 45, Boolean.TRUE, jVar, null);
    }

    @Override // com.sigmob.sdk.base.network.f.a
    public void a(List<BaseAdUnit> list, LoadAdRequest loadAdRequest) {
        if (com.sigmob.sdk.base.utils.f.a(list)) {
            return;
        }
        this.f38654k = list;
        BaseAdUnit baseAdUnit = list.get(0);
        SigmobLog.d("onSuccess(real): vid = " + baseAdUnit.getVid());
        a(list, loadAdRequest, baseAdUnit);
        a(loadAdRequest.getRequest_scene_type());
        if (com.sigmob.sdk.base.utils.v.b(this.f38657n) && !this.f38657n.a(baseAdUnit)) {
            a(WindAdError.ERROR_SIGMOB_INFORMATION_LOSE, true);
            return;
        }
        this.f38656m = baseAdUnit;
        if (com.sigmob.sdk.base.utils.v.b(this.f38657n)) {
            this.f38657n.a((Map<String, Object>) null, baseAdUnit);
        }
        C1258h.g().a(this.f38656m, this);
    }

    private boolean a(ViewGroup viewGroup, final BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            return false;
        }
        this.f38659p = new i(viewGroup.getContext().getApplicationContext());
        int width = viewGroup.getWidth();
        int height = viewGroup.getHeight();
        if (width <= 0 || height <= 0) {
            ViewGroup.LayoutParams layoutParams = this.f38659p.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(-1, -2);
                this.f38659p.setLayoutParams(layoutParams);
            }
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(0, 0, layoutParams.width);
            if (childMeasureSpec == 0) {
                childMeasureSpec = View.MeasureSpec.makeMeasureSpec(ClientMetadata.getInstance().getDisplayMetrics().widthPixels, com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_32BIT);
            }
            int i2 = layoutParams.height;
            this.f38659p.measure(childMeasureSpec, i2 > 0 ? View.MeasureSpec.makeMeasureSpec(i2, com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_32BIT) : View.MeasureSpec.makeMeasureSpec(0, 0));
            width = this.f38659p.getMeasuredWidth();
            height = this.f38659p.getMeasuredHeight();
        }
        if (width > 0 && height > 0) {
            this.f38659p.setAspectRatio((width * 1.0f) / height);
        }
        this.f38659p.b();
        this.f38659p.setViewStatusListener(new i.a() { // from class: com.sigmob.sdk.splash.r
            @Override // com.sigmob.sdk.splash.i.a
            public final void onWindowVisibilityChanged(int i3) {
                this.f38717a.a(baseAdUnit, i3);
            }
        });
        return this.f38659p.a(baseAdUnit, com.sigmob.sdk.base.utils.w.d(viewGroup));
    }
}

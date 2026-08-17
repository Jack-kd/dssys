package com.sigmob.windad.Splash;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.common.utils.AdLifecycleManager;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1286z;
import com.sigmob.sdk.base.j;
import com.sigmob.sdk.base.m;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.utils.v;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import com.umeng.analytics.pro.l;
import java.util.Map;

/* loaded from: classes5.dex */
public final class WindSplashAD extends m implements AdLifecycleManager.LifecycleListener {

    /* renamed from: a, reason: collision with root package name */
    private WindSplashADListener f39125a;

    /* renamed from: b, reason: collision with root package name */
    private ViewGroup f39126b;

    /* renamed from: c, reason: collision with root package name */
    private final int f39127c;

    /* renamed from: d, reason: collision with root package name */
    private RelativeLayout f39128d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f39129e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f39130f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f39131g;

    /* renamed from: m, reason: collision with root package name */
    private final com.sigmob.sdk.splash.f f39132m;

    /* renamed from: n, reason: collision with root package name */
    private final Handler f39133n;

    /* renamed from: com.sigmob.windad.Splash.WindSplashAD$1, reason: invalid class name */
    public class AnonymousClass1 implements WindSplashADListener {
        public AnonymousClass1() {
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdClick(String str) {
            if (WindSplashAD.this.f39125a == null) {
                return;
            }
            WindSplashAD.this.f39125a.onSplashAdClick(str);
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdClose(final String str) {
            ((m) WindSplashAD.this).f36311h = AdStatus.AdStatusClose;
            WindSplashAD.this.f39133n.post(new Runnable() { // from class: com.sigmob.windad.Splash.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f39149b.b(str);
                }
            });
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdLoadFail(final WindAdError windAdError, final String str) {
            ((m) WindSplashAD.this).f36311h = AdStatus.AdStatusNone;
            WindSplashAD.this.f39133n.post(new Runnable() { // from class: com.sigmob.windad.Splash.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f39146b.a(windAdError, str);
                }
            });
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdLoadSuccess(String str) {
            ((m) WindSplashAD.this).f36311h = AdStatus.AdStatusReady;
            if (WindSplashAD.this.f39125a != null) {
                WindSplashAD.this.f39125a.onSplashAdLoadSuccess(str);
            }
            if (WindSplashAD.this.f39131g) {
                WindSplashAD.this.i();
            }
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdShow(String str) {
            if (WindSplashAD.this.f39125a == null) {
                return;
            }
            WindSplashAD.this.f39125a.onSplashAdShow(str);
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdShowError(WindAdError windAdError, String str) {
            WindSplashAD.this.b(windAdError, str);
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdSkip(final String str) {
            WindSplashAD.this.f39133n.post(new Runnable() { // from class: com.sigmob.windad.Splash.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f39151b.a(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(WindAdError windAdError, String str) {
            if (WindSplashAD.this.f39125a == null) {
                return;
            }
            WindSplashAD.this.f39125a.onSplashAdLoadFail(windAdError, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            if (WindSplashAD.this.f39125a == null) {
                return;
            }
            WindSplashAD.this.f39125a.onSplashAdClose(str);
            WindSplashAD.this.l();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str) {
            if (WindSplashAD.this.f39125a == null) {
                return;
            }
            WindSplashAD.this.f39125a.onSplashAdSkip(str);
        }
    }

    public WindSplashAD(WindSplashAdRequest windSplashAdRequest, WindSplashADListener windSplashADListener) {
        super(windSplashAdRequest, false);
        this.f39130f = false;
        this.f39133n = new Handler(Looper.getMainLooper());
        this.f39125a = windSplashADListener;
        this.f39132m = new com.sigmob.sdk.splash.f(windSplashAdRequest, new AnonymousClass1());
        this.f39127c = windSplashAdRequest.getFetchDelay();
        this.f39129e = windSplashAdRequest.isDisableAutoHideAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        this.f39132m.a((ViewGroup) this.f39128d);
    }

    public void destroy() {
        WindAdRequest windAdRequest = this.f36315l;
        SigmobLog.i(String.format("splash ad %s is Destroy", windAdRequest != null ? windAdRequest.getPlacementId() : "null"));
        com.sigmob.sdk.splash.f fVar = this.f39132m;
        if (fVar != null) {
            fVar.n();
            this.f39133n.removeCallbacksAndMessages(null);
            this.f39125a = null;
            this.f39126b = null;
        }
        RelativeLayout relativeLayout = this.f39128d;
        if (relativeLayout != null && !this.f39129e) {
            relativeLayout.setVisibility(8);
            this.f39128d.removeAllViews();
        }
        this.f39128d = null;
    }

    @Override // com.sigmob.sdk.base.m
    public String getCurrency() {
        com.sigmob.sdk.splash.f fVar = this.f39132m;
        if (fVar == null) {
            return null;
        }
        return fVar.r();
    }

    @Override // com.sigmob.sdk.base.m
    public String getEcpm() {
        com.sigmob.sdk.splash.f fVar = this.f39132m;
        if (fVar == null) {
            return null;
        }
        return fVar.q();
    }

    public boolean isReady() {
        return f();
    }

    @Override // com.sigmob.sdk.base.m
    public boolean loadAd() {
        this.f39131g = false;
        super.loadAd();
        return j();
    }

    public void loadAndShow(ViewGroup viewGroup) {
        if (viewGroup == null) {
            a(WindAdError.ERROR_SIGMOB_ADCONTAINER_IS_NULL);
            return;
        }
        super.loadAd();
        this.f39126b = viewGroup;
        this.f39131g = true;
        j();
    }

    @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
    public void onCreate(Activity activity) {
    }

    @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
    public void onDestroy(Activity activity) {
    }

    @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
    public void onPause(Activity activity) {
        com.sigmob.sdk.splash.f fVar = this.f39132m;
        if (fVar == null) {
            return;
        }
        fVar.a(activity);
    }

    @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
    public void onResume(Activity activity) {
        com.sigmob.sdk.splash.f fVar = this.f39132m;
        if (fVar == null) {
            return;
        }
        fVar.b(activity);
    }

    @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
    public void onStart(Activity activity) {
    }

    @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
    public void onStop(Activity activity) {
    }

    public void show(ViewGroup viewGroup) {
        com.sigmob.sdk.splash.f fVar;
        if (this.f39131g || (fVar = this.f39132m) == null) {
            if (v.b(this.f39132m)) {
                com.sigmob.sdk.manager.b bVar = this.f39132m;
                bVar.b(bVar);
            }
            a(WindAdError.ERROR_SIGMOB_SPLASH_NOT_READY, d());
            return;
        }
        if (fVar.d()) {
            b(WindAdError.ERROR_SIGMOB_EXPIRED, d());
            return;
        }
        if (!isReady()) {
            com.sigmob.sdk.manager.b bVar2 = this.f39132m;
            bVar2.b(bVar2);
            a(WindAdError.ERROR_SIGMOB_SPLASH_NOT_READY, d());
        } else if (viewGroup == null) {
            b(WindAdError.ERROR_SIGMOB_ADCONTAINER_IS_NULL, d());
        } else {
            this.f39126b = viewGroup;
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(WindAdError windAdError, String str) {
        WindSplashADListener windSplashADListener = this.f39125a;
        if (windSplashADListener == null) {
            return;
        }
        this.f39130f = true;
        windSplashADListener.onSplashAdLoadFail(windAdError, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.f39132m == null) {
            a(WindAdError.ERROR_SIGMOB_SPLASH_NOT_READY, d());
            return;
        }
        a();
        RelativeLayout relativeLayout = this.f39128d;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(0);
        }
        this.f39133n.post(new Runnable() { // from class: com.sigmob.windad.Splash.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f39139b.m();
            }
        });
        this.f36311h = AdStatus.AdStatusPlaying;
    }

    private boolean j() {
        int bidFloor = getBidFloor();
        String strH = h();
        if (this.f39132m.c() && this.f36311h == AdStatus.AdStatusReady) {
            SigmobLog.i("load: ready");
            return true;
        }
        if (!g()) {
            return false;
        }
        AdLifecycleManager.getInstance().addLifecycleListener(this);
        this.f36311h = AdStatus.AdStatusLoading;
        String strJ = com.sigmob.sdk.manager.b.j();
        a((C1286z) null, strJ);
        this.f39132m.a(getBid_token(), Integer.valueOf(bidFloor), strH, Integer.valueOf(this.f39127c), Boolean.FALSE, j.NormalRequest, strJ);
        return true;
    }

    private void k() {
        Activity activityC;
        ViewGroup viewGroup = this.f39126b;
        if (viewGroup == null || (activityC = w.c(viewGroup)) == null) {
            return;
        }
        Window window = activityC.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.systemUiVisibility = l.f49442b;
        window.setAttributes(attributes);
        window.addFlags(1024);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (this.f39129e) {
            return;
        }
        RelativeLayout relativeLayout = this.f39128d;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
            this.f39128d.removeAllViews();
            this.f39128d = null;
        }
        this.f39126b = null;
    }

    @Override // com.sigmob.sdk.base.m
    public Map<String, BiddingResponse> b() {
        com.sigmob.sdk.splash.f fVar = this.f39132m;
        if (fVar == null) {
            return null;
        }
        return fVar.s();
    }

    @Override // com.sigmob.sdk.base.m
    public com.sigmob.sdk.manager.b c() {
        return this.f39132m;
    }

    @Override // com.sigmob.sdk.base.m
    public boolean loadAd(String str) {
        super.loadAd(str);
        return j();
    }

    public void loadAndShow(String str, ViewGroup viewGroup) {
        if (viewGroup == null) {
            a(WindAdError.ERROR_SIGMOB_ADCONTAINER_IS_NULL);
            return;
        }
        super.loadAd(str);
        this.f39126b = viewGroup;
        this.f39131g = true;
        j();
    }

    private void a() {
        if (this.f39126b == null) {
            return;
        }
        RelativeLayout relativeLayout = new RelativeLayout(this.f39126b.getContext());
        this.f39128d = relativeLayout;
        relativeLayout.setVisibility(4);
        this.f39128d.setId(ClientMetadata.generateViewId());
        this.f39126b.addView(this.f39128d, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(WindAdError windAdError) {
        WindSplashADListener windSplashADListener = this.f39125a;
        if (windSplashADListener == null) {
            return;
        }
        windSplashADListener.onSplashAdLoadFail(windAdError, d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final WindAdError windAdError, final String str) {
        this.f36311h = AdStatus.AdStatusNone;
        com.sigmob.sdk.manager.b bVar = this.f39132m;
        bVar.b(bVar);
        this.f39133n.post(new Runnable() { // from class: com.sigmob.windad.Splash.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f39140b.c(windAdError, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(WindAdError windAdError, String str) {
        WindSplashADListener windSplashADListener = this.f39125a;
        if (windSplashADListener == null) {
            return;
        }
        windSplashADListener.onSplashAdShowError(windAdError, str);
    }

    @Override // com.sigmob.sdk.base.m
    public void a(final WindAdError windAdError) {
        this.f36311h = AdStatus.AdStatusNone;
        this.f39133n.post(new Runnable() { // from class: com.sigmob.windad.Splash.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f39137b.b(windAdError);
            }
        });
    }

    private void a(final WindAdError windAdError, final String str) {
        SigmobLog.e("onSplashError: error = " + windAdError + ", placementId = " + str);
        if (this.f39130f) {
            return;
        }
        this.f39133n.removeMessages(1);
        this.f39133n.post(new Runnable() { // from class: com.sigmob.windad.Splash.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f39143b.d(windAdError, str);
            }
        });
        l();
    }

    @Override // com.sigmob.sdk.base.m
    public void a(String str, String str2) {
        com.sigmob.sdk.splash.f fVar = this.f39132m;
        if (fVar == null) {
            return;
        }
        fVar.a(str, str2);
    }
}

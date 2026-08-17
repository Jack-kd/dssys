package com.sigmob.sdk;

import android.os.Handler;
import android.os.Looper;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.C1286z;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.sdk.base.utils.d;
import com.sigmob.sdk.base.utils.v;
import com.sigmob.sdk.c;
import com.sigmob.sdk.manager.f;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class c<T extends com.sigmob.sdk.manager.f> extends com.sigmob.sdk.base.m {

    /* renamed from: a, reason: collision with root package name */
    protected final Handler f37238a;

    /* renamed from: b, reason: collision with root package name */
    protected int f37239b;

    /* renamed from: c, reason: collision with root package name */
    protected T f37240c;

    /* renamed from: d, reason: collision with root package name */
    protected T f37241d;

    /* renamed from: e, reason: collision with root package name */
    protected LoadAdRequest f37242e;

    /* renamed from: f, reason: collision with root package name */
    protected com.sigmob.sdk.videoAd.k f37243f;

    /* renamed from: g, reason: collision with root package name */
    protected c<T>.a f37244g;

    /* renamed from: m, reason: collision with root package name */
    private final String f37245m;

    /* renamed from: com.sigmob.sdk.c$1, reason: invalid class name */
    public class AnonymousClass1 implements com.sigmob.sdk.videoAd.m {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.sigmob.sdk.videoAd.m f37246a;

        public AnonymousClass1(com.sigmob.sdk.videoAd.m mVar) {
            this.f37246a = mVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(d.a aVar, String str, com.sigmob.sdk.videoAd.m mVar) {
            if (v.b(c.this.f37240c)) {
                HashMap map = new HashMap();
                Integer numValueOf = Integer.valueOf(aVar == null ? 0 : aVar.f36582a.intValue());
                Integer numValueOf2 = Integer.valueOf(aVar == null ? com.sigmob.sdk.base.utils.d.f36580b : aVar.f36583b.intValue());
                map.put(ClickCommon.CLICK_LOSE_RATE, String.valueOf(numValueOf));
                map.put(ClickCommon.CLICK_CB_STATE, String.valueOf(numValueOf2));
                c.this.f37240c.a("click_callback", map);
            }
            if (com.sigmob.sdk.base.utils.d.a(aVar)) {
                SigmobLog.i("onAdClicked: placementId = " + str);
                if (v.b(mVar)) {
                    mVar.onAdClicked(str);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(com.sigmob.sdk.videoAd.m mVar, String str) {
            if (v.b(mVar)) {
                mVar.onVideoAdPlayEnd(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void c(com.sigmob.sdk.videoAd.m mVar, String str) {
            if (v.b(mVar)) {
                mVar.onVideoAdPlayComplete(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(com.sigmob.sdk.videoAd.m mVar, String str) {
            if (v.b(c.this.f37240c)) {
                c.this.f37240c.a("show_callback", null);
            }
            if (v.b(mVar)) {
                mVar.onAdShow(str);
            }
        }

        @Override // com.sigmob.sdk.videoAd.m
        public void onAdClicked(final String str) {
            String str2 = c.this.f37245m;
            T t2 = c.this.f37240c;
            final d.a aVarB = com.sigmob.sdk.base.utils.d.b(str2, t2 == null ? null : t2.i());
            Handler handler = c.this.f37238a;
            final com.sigmob.sdk.videoAd.m mVar = this.f37246a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.n
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38263b.a(aVarB, str, mVar);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.m
        public void onAdClosed(final String str) {
            SigmobLog.i("onAdClosed: placementId = " + str);
            ((com.sigmob.sdk.base.m) c.this).f36311h = AdStatus.AdStatusClose;
            Handler handler = c.this.f37238a;
            final com.sigmob.sdk.videoAd.m mVar = this.f37246a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.p
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38627b.a(mVar, str);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.m
        public void onAdShow(final String str) {
            SigmobLog.i("onAdShow: placementId = " + str);
            ((com.sigmob.sdk.base.m) c.this).f36311h = AdStatus.AdStatusPlaying;
            Handler handler = c.this.f37238a;
            final com.sigmob.sdk.videoAd.m mVar = this.f37246a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.m
                @Override // java.lang.Runnable
                public final void run() {
                    this.f37760b.d(mVar, str);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.m
        public void onAdShowError(final WindAdError windAdError, final String str) {
            SigmobLog.e("onAdShowError: error = " + windAdError.toString() + ", placementId = " + str);
            ((com.sigmob.sdk.base.m) c.this).f36311h = AdStatus.AdStatusClose;
            Handler handler = c.this.f37238a;
            final com.sigmob.sdk.videoAd.m mVar = this.f37246a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.l
                @Override // java.lang.Runnable
                public final void run() {
                    this.f37756b.a(mVar, windAdError, str);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.m
        public void onVideoAdPlayComplete(final String str) {
            SigmobLog.i("onVideoAdPlayComplete: placementId = " + str);
            Handler handler = c.this.f37238a;
            final com.sigmob.sdk.videoAd.m mVar = this.f37246a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.o
                @Override // java.lang.Runnable
                public final void run() {
                    c.AnonymousClass1.c(mVar, str);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.m
        public void onVideoAdPlayEnd(final String str) {
            SigmobLog.i("onVideoAdPlayEnd: placementId = " + str);
            Handler handler = c.this.f37238a;
            final com.sigmob.sdk.videoAd.m mVar = this.f37246a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.q
                @Override // java.lang.Runnable
                public final void run() {
                    c.AnonymousClass1.b(mVar, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(com.sigmob.sdk.videoAd.m mVar, WindAdError windAdError, String str) {
            if (v.b(mVar)) {
                mVar.onAdShowError(windAdError, str);
            }
            if (v.b(c.this.f37241d)) {
                if (v.b(c.this.f37240c)) {
                    c.this.f37240c.s();
                }
                c cVar = c.this;
                cVar.f37240c = cVar.f37241d;
                ((com.sigmob.sdk.base.m) cVar).f36311h = AdStatus.AdStatusReady;
                c.this.f37241d = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(com.sigmob.sdk.videoAd.m mVar, String str) {
            if (v.b(c.this.f37240c)) {
                c.this.f37240c.a("close_callback", null);
            }
            if (v.b(mVar)) {
                mVar.onAdClosed(str);
            }
            if (v.b(c.this.f37241d)) {
                if (v.b(c.this.f37240c)) {
                    c.this.f37240c.s();
                }
                c cVar = c.this;
                cVar.f37240c = cVar.f37241d;
                ((com.sigmob.sdk.base.m) cVar).f36311h = AdStatus.AdStatusReady;
                c.this.f37241d = null;
            }
        }
    }

    public class a implements com.sigmob.sdk.videoAd.k {

        /* renamed from: b, reason: collision with root package name */
        private com.sigmob.sdk.videoAd.k f37249b;

        public a(com.sigmob.sdk.videoAd.k kVar) {
            this.f37249b = kVar;
        }

        @Override // com.sigmob.sdk.videoAd.k
        public void onAdLoadError(final WindAdError windAdError, final String str) {
            SigmobLog.e("onAdLoadError: error = " + windAdError.toString() + ", placementId = " + str + ", adStatus = " + ((com.sigmob.sdk.base.m) c.this).f36311h);
            if (((com.sigmob.sdk.base.m) c.this).f36311h != AdStatus.AdStatusPlaying) {
                ((com.sigmob.sdk.base.m) c.this).f36311h = AdStatus.AdStatusNone;
            }
            c.this.f37238a.post(new Runnable() { // from class: com.sigmob.sdk.u
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38729b.a(windAdError, str);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.k
        public void onAdLoadSuccess(final String str) {
            SigmobLog.i("onAdLoadSuccess: placementId = " + str + ", adStatus = " + ((com.sigmob.sdk.base.m) c.this).f36311h);
            if (((com.sigmob.sdk.base.m) c.this).f36311h != AdStatus.AdStatusPlaying) {
                ((com.sigmob.sdk.base.m) c.this).f36311h = AdStatus.AdStatusReady;
            }
            c.this.f37238a.post(new Runnable() { // from class: com.sigmob.sdk.r
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38632b.b(str);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.k
        public void onAdPreLoadFail(final WindAdError windAdError, final String str) {
            SigmobLog.e("onAdPreLoadFail: error = " + windAdError.toString() + ", placementId = " + str + ", adStatus = " + ((com.sigmob.sdk.base.m) c.this).f36311h);
            if (((com.sigmob.sdk.base.m) c.this).f36311h != AdStatus.AdStatusPlaying) {
                ((com.sigmob.sdk.base.m) c.this).f36311h = AdStatus.AdStatusNone;
            }
            c.this.f37238a.post(new Runnable() { // from class: com.sigmob.sdk.s
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38634b.b(windAdError, str);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.k
        public void onAdPreLoadSuccess(final String str) {
            SigmobLog.i("onAdPreLoadSuccess: placementId = " + str);
            c.this.f37238a.post(new Runnable() { // from class: com.sigmob.sdk.t
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38727b.a(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(WindAdError windAdError, String str) {
            if (v.b(this.f37249b)) {
                this.f37249b.onAdPreLoadFail(windAdError, str);
            }
        }

        public void a() {
            this.f37249b = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(WindAdError windAdError, String str) {
            if (v.b(this.f37249b)) {
                this.f37249b.onAdLoadError(windAdError, str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            if (v.b(this.f37249b)) {
                this.f37249b.onAdLoadSuccess(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str) {
            if (v.b(this.f37249b)) {
                this.f37249b.onAdPreLoadSuccess(str);
            }
        }
    }

    public c(WindAdRequest windAdRequest, boolean z2, int i2) {
        super(windAdRequest, z2);
        this.f37245m = getClass().getSimpleName();
        this.f37238a = new Handler(Looper.getMainLooper());
        this.f37239b = i2;
        C1258h.g().a(d(), windAdRequest.getAdType());
        this.f37240c = (T) createAdManager();
    }

    public abstract T createAdManager();

    public void destroy() {
        this.f37238a.removeCallbacksAndMessages(null);
        if (v.b(this.f37244g)) {
            this.f37244g.a();
            this.f37244g = null;
        }
        this.f37243f = null;
        if (v.b(this.f37240c)) {
            this.f37240c.s();
            this.f37240c = null;
        }
        if (v.b(this.f37241d)) {
            this.f37241d.s();
            this.f37241d = null;
        }
    }

    @Override // com.sigmob.sdk.base.m
    public String getCurrency() {
        T t2 = this.f37240c;
        if (t2 == null) {
            return null;
        }
        return t2.b();
    }

    @Override // com.sigmob.sdk.base.m
    public String getEcpm() {
        T t2 = this.f37240c;
        if (t2 == null) {
            return null;
        }
        return t2.a();
    }

    public boolean isReady() {
        return f();
    }

    @Override // com.sigmob.sdk.base.m
    public boolean loadAd() {
        super.loadAd();
        return a();
    }

    public void setAdLoadListener(com.sigmob.sdk.videoAd.k kVar) {
        this.f37243f = kVar;
    }

    public boolean show(HashMap<String, String> map, com.sigmob.sdk.videoAd.m mVar) {
        return show(map, mVar, null);
    }

    @Override // com.sigmob.sdk.base.m
    public boolean loadAd(String str) {
        super.loadAd(str);
        return a();
    }

    public boolean show(HashMap<String, String> map, com.sigmob.sdk.videoAd.m mVar, com.sigmob.sdk.videoAd.l lVar) {
        try {
        } catch (Throwable th) {
            a(WindAdError.ERROR_SIGMOB_REQUEST, th.getMessage());
            SigmobLog.e("show: error = " + th.getMessage());
        }
        if (this.f37242e == null) {
            WindAdError windAdError = WindAdError.ERROR_SIGMOB_PLACEMENTID_EMPTY;
            a(windAdError, "loadAdRequest is null.");
            if (!v.b(mVar)) {
                return false;
            }
            mVar.onAdShowError(windAdError, d());
            return false;
        }
        if (v.b(map)) {
            if (map.containsKey("scene_id")) {
                this.f37242e.setAd_scene_id(map.get("scene_id"));
            }
            if (map.containsKey("scene_desc")) {
                this.f37242e.setAd_scene_desc(map.get("scene_desc"));
            }
        }
        if (this.f37239b == 1) {
            a(lVar);
        }
        this.f37240c.a(this.f37242e, new AnonymousClass1(mVar));
        return true;
    }

    private void a(T t2) {
        String strJ = com.sigmob.sdk.manager.b.j();
        a((C1286z) null, strJ);
        t2.a(this.f37242e, strJ);
    }

    @Override // com.sigmob.sdk.base.m
    public Map<String, BiddingResponse> b() {
        T t2 = this.f37240c;
        if (t2 == null) {
            return null;
        }
        return t2.m();
    }

    @Override // com.sigmob.sdk.base.m
    public com.sigmob.sdk.manager.b c() {
        return this.f37240c;
    }

    public void a(com.sigmob.sdk.videoAd.l lVar) {
    }

    @Override // com.sigmob.sdk.base.m
    public void a(WindAdError windAdError) {
        if (this.f36311h != AdStatus.AdStatusLoading) {
            this.f36311h = AdStatus.AdStatusNone;
        }
        if (v.b(this.f37243f)) {
            String strD = d();
            this.f37243f.onAdPreLoadFail(windAdError, strD);
            this.f37243f.onAdLoadError(windAdError, strD);
        }
    }

    public void a(WindAdError windAdError, String str) {
        PointEntitySigmobError pointEntitySigmobErrorSigmobError = PointEntitySigmobError.SigmobError("error", windAdError.getErrorCode(), str);
        pointEntitySigmobErrorSigmobError.setAdtype(String.valueOf(this.f37239b));
        pointEntitySigmobErrorSigmobError.setPlacement_id(d());
        pointEntitySigmobErrorSigmobError.commit();
    }

    @Override // com.sigmob.sdk.base.m
    public void a(String str, String str2) {
        T t2 = this.f37240c;
        if (t2 == null) {
            return;
        }
        t2.a(str, str2);
    }

    public boolean a() {
        T t2;
        String strD = d();
        try {
            if (!g()) {
                return false;
            }
            if (v.b(this.f37244g)) {
                this.f37244g.a();
                this.f37244g = null;
            }
            this.f37244g = new a(this.f37243f);
            T t3 = this.f37240c;
            if (t3 == null) {
                this.f37240c = (T) createAdManager();
            } else if (t3.c() && this.f36311h == AdStatus.AdStatusReady) {
                this.f37244g.onAdPreLoadSuccess(strD);
                this.f37244g.onAdLoadSuccess(strD);
                return true;
            }
            LoadAdRequest loadAdRequest = new LoadAdRequest(this.f36315l);
            this.f37242e = loadAdRequest;
            loadAdRequest.setBidToken(getBid_token());
            this.f37242e.setBidFloor(Integer.valueOf(getBidFloor()));
            this.f37242e.setCurrency(h());
            this.f37240c.a(this.f37244g);
            if (this.f36311h != AdStatus.AdStatusPlaying) {
                this.f36311h = AdStatus.AdStatusLoading;
                t2 = this.f37240c;
            } else {
                if (this.f37241d != null) {
                    if (v.b(this.f37243f)) {
                        SigmobLog.i("onVideoAdLoadSuccess: placementId = " + strD);
                        this.f37243f.onAdLoadSuccess(strD);
                    }
                    return true;
                }
                T t4 = (T) createAdManager();
                this.f37241d = t4;
                t4.a(this.f37244g);
                t2 = this.f37241d;
            }
            a((c<T>) t2);
            return true;
        } catch (Throwable th) {
            WindAdError windAdError = WindAdError.ERROR_SIGMOB_REQUEST;
            PointEntitySigmobError pointEntitySigmobErrorSigmobError = PointEntitySigmobError.SigmobError("error", windAdError.getErrorCode(), th.getMessage());
            pointEntitySigmobErrorSigmobError.setAdtype(String.valueOf(this.f37239b));
            pointEntitySigmobErrorSigmobError.setPlacement_id(strD);
            pointEntitySigmobErrorSigmobError.commit();
            SigmobLog.e("onVideoAdLoadError: error = " + th.getMessage() + ", placementId = " + strD + ", adStatus = " + this.f36311h);
            if (v.b(this.f37243f)) {
                this.f37243f.onAdLoadError(windAdError, strD);
            }
            return false;
        }
    }
}

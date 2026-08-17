package com.sigmob.windad.natives;

import android.os.Handler;
import android.os.Looper;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1286z;
import com.sigmob.sdk.base.m;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.sdk.nativead.C1368y;
import com.sigmob.sdk.nativead.aa;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public class WindNativeUnifiedAd extends m {

    /* renamed from: a, reason: collision with root package name */
    private WindNativeAdLoadListener f39185a;

    /* renamed from: b, reason: collision with root package name */
    private final Handler f39186b;

    /* renamed from: c, reason: collision with root package name */
    private final C1368y f39187c;

    /* renamed from: com.sigmob.windad.natives.WindNativeUnifiedAd$1, reason: invalid class name */
    public class AnonymousClass1 implements aa {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ WindNativeAdRequest f39188a;

        public AnonymousClass1(WindNativeAdRequest windNativeAdRequest) {
            this.f39188a = windNativeAdRequest;
        }

        @Override // com.sigmob.sdk.nativead.aa
        public void onNativeAdLoadFail(final int i2, final String str) {
            ((m) WindNativeUnifiedAd.this).f36311h = AdStatus.AdStatusNone;
            Handler handler = WindNativeUnifiedAd.this.f39186b;
            final WindNativeAdRequest windNativeAdRequest = this.f39188a;
            handler.post(new Runnable() { // from class: com.sigmob.windad.natives.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f39194b.a(i2, str, windNativeAdRequest);
                }
            });
        }

        @Override // com.sigmob.sdk.nativead.aa
        public void onNativeAdLoaded(final List<WindNativeAdData> list) {
            ((m) WindNativeUnifiedAd.this).f36311h = AdStatus.AdStatusNone;
            WindNativeUnifiedAd.this.f39186b.post(new Runnable() { // from class: com.sigmob.windad.natives.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f39192b.a(list);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i2, String str, WindNativeAdRequest windNativeAdRequest) {
            if (WindNativeUnifiedAd.this.f39185a == null) {
                return;
            }
            WindAdError windAdError = WindAdError.getWindAdError(i2);
            if (windAdError == null) {
                windAdError = WindAdError.ERROR_SIGMOB_REQUEST;
                windAdError.setErrorMessage(i2, str);
                windAdError.setMessage(str);
            }
            WindNativeUnifiedAd.this.f39185a.onAdError(windAdError, windNativeAdRequest.getPlacementId());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(List list) {
            if (WindNativeUnifiedAd.this.f39185a == null) {
                return;
            }
            WindNativeUnifiedAd.this.f39185a.onAdLoad(list, WindNativeUnifiedAd.this.d());
        }
    }

    public interface WindNativeAdLoadListener {
        void onAdError(WindAdError windAdError, String str);

        void onAdLoad(List<WindNativeAdData> list, String str);
    }

    public WindNativeUnifiedAd(WindNativeAdRequest windNativeAdRequest) {
        super(windNativeAdRequest, false);
        this.f39186b = new Handler(Looper.getMainLooper());
        this.f39187c = new C1368y(windNativeAdRequest, new AnonymousClass1(windNativeAdRequest));
    }

    @Override // com.sigmob.sdk.base.m
    public com.sigmob.sdk.manager.b c() {
        return null;
    }

    public void destroy() {
        WindAdRequest windAdRequest = this.f36315l;
        SigmobLog.i(String.format("native ad %s is Destroy", windAdRequest != null ? windAdRequest.getPlacementId() : "null"));
        this.f39185a = null;
    }

    @Override // com.sigmob.sdk.base.m
    public String getCurrency() {
        C1368y c1368y = this.f39187c;
        if (c1368y == null) {
            return null;
        }
        return c1368y.b();
    }

    @Override // com.sigmob.sdk.base.m
    public String getEcpm() {
        C1368y c1368y = this.f39187c;
        if (c1368y == null) {
            return null;
        }
        return c1368y.a();
    }

    @Override // com.sigmob.sdk.base.m
    @Deprecated
    public boolean loadAd() {
        try {
            super.loadAd();
            return a(this.f36315l.getAdCount());
        } catch (Throwable th) {
            a(th);
            return false;
        }
    }

    public void setNativeAdLoadListener(WindNativeAdLoadListener windNativeAdLoadListener) {
        this.f39185a = windNativeAdLoadListener;
    }

    public boolean loadAd(int i2) {
        try {
            super.loadAd();
            int iMax = Math.max(this.f36315l.getAdCount(), i2);
            this.f36315l.setAdCount(iMax);
            return a(iMax);
        } catch (Throwable th) {
            a(th);
            return false;
        }
    }

    @Override // com.sigmob.sdk.base.m
    public void a(final WindAdError windAdError) {
        this.f39186b.post(new Runnable() { // from class: com.sigmob.windad.natives.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f39190b.b(windAdError);
            }
        });
    }

    @Override // com.sigmob.sdk.base.m
    public Map<String, BiddingResponse> b() {
        C1368y c1368y = this.f39187c;
        if (c1368y == null) {
            return null;
        }
        return c1368y.c();
    }

    @Override // com.sigmob.sdk.base.m
    public boolean loadAd(String str) {
        try {
            super.loadAd(str);
            return a(this.f36315l.getAdCount() > 0 ? this.f36315l.getAdCount() : 1);
        } catch (Throwable th) {
            a(th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(WindAdError windAdError) {
        this.f36311h = AdStatus.AdStatusNone;
        if (this.f39185a == null) {
            return;
        }
        SigmobLog.i("onVideoAdLoadFail " + windAdError.toString() + "|" + d());
        this.f39185a.onAdError(windAdError, d());
    }

    @Override // com.sigmob.sdk.base.m
    public void a(String str, String str2) {
        C1368y c1368y = this.f39187c;
        if (c1368y == null) {
            return;
        }
        c1368y.a(str, str2);
    }

    public boolean loadAd(String str, int i2) {
        try {
            super.loadAd(str);
            return a(i2);
        } catch (Throwable th) {
            a(th);
            return false;
        }
    }

    private void a(Throwable th) {
        WindAdError windAdError = WindAdError.ERROR_SIGMOB_REQUEST;
        PointEntitySigmobError pointEntitySigmobErrorSigmobError = PointEntitySigmobError.SigmobError("error", windAdError.getErrorCode(), th.getMessage());
        pointEntitySigmobErrorSigmobError.setAdtype(String.valueOf(5));
        pointEntitySigmobErrorSigmobError.setPlacement_id(d());
        pointEntitySigmobErrorSigmobError.commit();
        a(windAdError);
    }

    private boolean a(int i2) {
        try {
            if (!g()) {
                return false;
            }
            String strJ = com.sigmob.sdk.manager.b.j();
            this.f36311h = AdStatus.AdStatusLoading;
            if (this.f39187c.a(i2, getBid_token(), getBidFloor(), h(), strJ) == 1) {
                a(C1286z.a(d()), strJ);
            }
            return true;
        } catch (Throwable th) {
            SigmobLog.i(getClass().getSimpleName() + " catch throwable " + th);
            if (this.f39185a == null) {
                return false;
            }
            WindAdError windAdError = WindAdError.ERROR_SIGMOB_REQUEST;
            windAdError.setMessage(th.getMessage());
            this.f39185a.onAdError(windAdError, d());
            return false;
        }
    }
}

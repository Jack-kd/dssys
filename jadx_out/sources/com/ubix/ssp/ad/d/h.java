package com.ubix.ssp.ad.d;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.qq.e.comm.constants.ErrorCode;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.UBiXAdLossInfo;
import com.ubix.ssp.open.UBiXDownloadConfirmCallback;
import com.ubix.ssp.open.UBiXDownloadConfirmListener;
import com.ubix.ssp.open.nativee.NativeAd;
import com.ubix.ssp.open.nativee.UBiXImage;
import com.ubix.ssp.open.nativee.UBiXNativeAdDownloadListener;
import com.ubix.ssp.open.nativee.UBiXNativeInteractionListener;
import com.ubix.ssp.open.nativee.UBiXNativeVideoListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes5.dex */
public class h implements NativeAd, NativeAd.CustomizeVideo, NativeAd.CustomReporter {

    /* renamed from: A, reason: collision with root package name */
    private String f45909A;

    /* renamed from: B, reason: collision with root package name */
    private boolean f45910B;

    /* renamed from: E, reason: collision with root package name */
    private String f45913E;

    /* renamed from: F, reason: collision with root package name */
    private String f45914F;

    /* renamed from: G, reason: collision with root package name */
    private String f45915G;

    /* renamed from: H, reason: collision with root package name */
    private int f45916H;

    /* renamed from: I, reason: collision with root package name */
    private int f45917I;

    /* renamed from: J, reason: collision with root package name */
    private String f45918J;

    /* renamed from: K, reason: collision with root package name */
    private boolean f45919K;

    /* renamed from: a, reason: collision with root package name */
    private com.ubix.ssp.ad.i.c f45924a;

    /* renamed from: b, reason: collision with root package name */
    private com.ubix.ssp.ad.d.a f45925b;

    /* renamed from: c, reason: collision with root package name */
    private String f45926c;

    /* renamed from: d, reason: collision with root package name */
    private String f45927d;

    /* renamed from: e, reason: collision with root package name */
    private String f45928e;

    /* renamed from: f, reason: collision with root package name */
    private ArrayList<UBiXImage> f45929f;

    /* renamed from: g, reason: collision with root package name */
    private String f45930g;

    /* renamed from: h, reason: collision with root package name */
    private String f45931h;

    /* renamed from: i, reason: collision with root package name */
    private int f45932i;

    /* renamed from: j, reason: collision with root package name */
    private String f45933j;

    /* renamed from: k, reason: collision with root package name */
    private String f45934k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f45935l;

    /* renamed from: m, reason: collision with root package name */
    private String f45936m;

    /* renamed from: n, reason: collision with root package name */
    private String f45937n;

    /* renamed from: o, reason: collision with root package name */
    private String f45938o;

    /* renamed from: p, reason: collision with root package name */
    private String f45939p;

    /* renamed from: q, reason: collision with root package name */
    private String f45940q;

    /* renamed from: r, reason: collision with root package name */
    private String f45941r;

    /* renamed from: s, reason: collision with root package name */
    private String f45942s;

    /* renamed from: t, reason: collision with root package name */
    private long f45943t;

    /* renamed from: u, reason: collision with root package name */
    private String f45944u;

    /* renamed from: v, reason: collision with root package name */
    private String f45945v;

    /* renamed from: w, reason: collision with root package name */
    private Drawable f45946w;

    /* renamed from: x, reason: collision with root package name */
    private long f45947x;

    /* renamed from: y, reason: collision with root package name */
    private String f45948y;

    /* renamed from: z, reason: collision with root package name */
    private f f45949z;

    /* renamed from: C, reason: collision with root package name */
    private long f45911C = 0;

    /* renamed from: D, reason: collision with root package name */
    private int f45912D = 0;

    /* renamed from: L, reason: collision with root package name */
    private String f45920L = "";

    /* renamed from: M, reason: collision with root package name */
    private HashMap<String, Object> f45921M = new HashMap<>();

    /* renamed from: N, reason: collision with root package name */
    int f45922N = 0;

    /* renamed from: O, reason: collision with root package name */
    private boolean f45923O = false;

    public class a implements com.ubix.ssp.ad.e.s.e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXNativeAdDownloadListener f45950a;

        public a(UBiXNativeAdDownloadListener uBiXNativeAdDownloadListener) {
            this.f45950a = uBiXNativeAdDownloadListener;
        }

        @Override // com.ubix.ssp.ad.e.s.e
        public int a() {
            return 0;
        }

        @Override // com.ubix.ssp.ad.e.s.e
        public void b(int i2, int i3) {
            UBiXNativeAdDownloadListener uBiXNativeAdDownloadListener = this.f45950a;
            if (uBiXNativeAdDownloadListener != null) {
                uBiXNativeAdDownloadListener.onDownloadResume(i3);
            }
        }

        @Override // com.ubix.ssp.ad.e.s.e
        public void c(int i2, int i3) {
            UBiXNativeAdDownloadListener uBiXNativeAdDownloadListener = this.f45950a;
            if (uBiXNativeAdDownloadListener != null) {
                uBiXNativeAdDownloadListener.onDownloading(i3);
            }
        }

        @Override // com.ubix.ssp.ad.e.s.e
        public void a(int i2) {
            UBiXNativeAdDownloadListener uBiXNativeAdDownloadListener = this.f45950a;
            if (uBiXNativeAdDownloadListener != null) {
                uBiXNativeAdDownloadListener.onDownloadStarted();
            }
        }

        @Override // com.ubix.ssp.ad.e.s.e
        public void a(int i2, int i3) {
            UBiXNativeAdDownloadListener uBiXNativeAdDownloadListener = this.f45950a;
            if (uBiXNativeAdDownloadListener != null) {
                uBiXNativeAdDownloadListener.onDownloadPaused(i3);
            }
        }

        @Override // com.ubix.ssp.ad.e.s.e
        public void a(int i2, AdError adError, String str) {
            UBiXNativeAdDownloadListener uBiXNativeAdDownloadListener = this.f45950a;
            if (uBiXNativeAdDownloadListener != null) {
                uBiXNativeAdDownloadListener.onDownloadFailed(adError);
            }
        }

        @Override // com.ubix.ssp.ad.e.s.e
        public void a(int i2, String str) {
            UBiXNativeAdDownloadListener uBiXNativeAdDownloadListener = this.f45950a;
            if (uBiXNativeAdDownloadListener != null) {
                uBiXNativeAdDownloadListener.onDownloadFinished(str);
            }
        }
    }

    public class b implements com.ubix.ssp.ad.g.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXDownloadConfirmListener f45952a;

        public class a implements UBiXDownloadConfirmCallback {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.ubix.ssp.ad.g.b f45954a;

            public a(com.ubix.ssp.ad.g.b bVar) {
                this.f45954a = bVar;
            }

            @Override // com.ubix.ssp.open.UBiXDownloadConfirmCallback
            public void onCancel() {
                u.e("custom download: onCancel");
                com.ubix.ssp.ad.g.b bVar = this.f45954a;
                if (bVar != null) {
                    bVar.onCancel();
                }
            }

            @Override // com.ubix.ssp.open.UBiXDownloadConfirmCallback
            public void onClose() {
                u.e("custom download: onClose");
                com.ubix.ssp.ad.g.b bVar = this.f45954a;
                if (bVar != null) {
                    bVar.onClose();
                }
            }

            @Override // com.ubix.ssp.open.UBiXDownloadConfirmCallback
            public void onConfirm() {
                u.e("custom download: onConfirm");
                com.ubix.ssp.ad.g.b bVar = this.f45954a;
                if (bVar != null) {
                    bVar.onConfirm();
                }
            }
        }

        public b(UBiXDownloadConfirmListener uBiXDownloadConfirmListener) {
            this.f45952a = uBiXDownloadConfirmListener;
        }

        @Override // com.ubix.ssp.ad.g.c
        public void a(Context context, Bundle bundle, com.ubix.ssp.ad.g.b bVar) {
            this.f45952a.onDownloadConfirm(context, bundle, new a(bVar));
        }
    }

    private String getPR() {
        return this.f45920L;
    }

    public void a(int i2) {
        this.f45932i = i2;
    }

    public void b(int i2) {
        this.f45912D = i2;
    }

    public void c(int i2) {
        this.f45917I = i2;
    }

    public void d(int i2) {
        this.f45916H = i2;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void destroy() {
        com.ubix.ssp.ad.i.c cVar = this.f45924a;
        if (cVar != null) {
            cVar.m(this.f45925b);
        }
        this.f45949z = null;
    }

    public void e(String str) {
        this.f45948y = str;
    }

    public void f(String str) {
        this.f45913E = str;
    }

    public void g(String str) {
        this.f45927d = str;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getActionButtonText() {
        return this.f45934k;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public Drawable getAdLogo() {
        return this.f45946w;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getAdSource() {
        return this.f45933j;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public long getAppDownloadSize() {
        return this.f45943t;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getAppICPNumber() {
        return this.f45944u;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getAppIcon() {
        return this.f45936m;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getAppIntroduceLink() {
        return this.f45942s;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getAppLCPNumber() {
        return this.f45944u;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getAppName() {
        return this.f45937n;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getAppPackageName() {
        return this.f45909A;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getAppPermissionLink() {
        return this.f45940q;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getAppPrivacyLink() {
        return this.f45941r;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getAppPublisher() {
        return this.f45939p;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getAppSuitableAge() {
        return this.f45945v;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getAppVersion() {
        return this.f45938o;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd.CustomizeVideo
    public String getCoverUrl() {
        return this.f45931h;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getCreativeId() {
        return this.f45948y;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public int getCreativeType() {
        return this.f45932i;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public NativeAd.CustomReporter getCustomReporter() {
        if (this.f45919K) {
            return this;
        }
        return null;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public NativeAd.CustomizeVideo getCustomizeVideo() {
        return this;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getDeeplinkUrl() {
        return this.f45913E;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getDesc() {
        return this.f45927d;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public int getDownloadAppStatus() {
        return this.f45924a.n(this.f45925b);
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public int getDownloadProgress() {
        return this.f45924a.e(this.f45925b);
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getDownloadUrl() {
        return this.f45914F;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public HashMap<String, Object> getExtraInfo() {
        return this.f45921M;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public List<UBiXImage> getImageList() {
        return this.f45929f;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getImageUrl() {
        return this.f45928e;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getLandingPageUrl() {
        return this.f45915G;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd.CustomizeVideo
    public String getMaterialId() {
        return this.f45918J;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public View getMediaView() {
        com.ubix.ssp.ad.i.c cVar = this.f45924a;
        if (cVar != null) {
            cVar.t(this.f45925b);
        }
        return this.f45949z;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public long getPrice() {
        return this.f45947x;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public String getTitle() {
        return this.f45926c;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public long getVideoDuration() {
        return this.f45911C;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd.CustomizeVideo
    public int getVideoHeight() {
        return this.f45917I;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd.CustomizeVideo
    public String getVideoUrl() {
        return this.f45930g;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd.CustomizeVideo
    public int getVideoWidth() {
        return this.f45916H;
    }

    public void h(String str) {
        this.f45914F = str;
    }

    public void i(String str) {
        this.f45936m = str;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public boolean isDownloadAd() {
        return this.f45935l;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public boolean isShakeAd() {
        int i2 = this.f45912D;
        return i2 == 514 || i2 == 2;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public boolean isSupportCustomShake() {
        return this.f45912D == 514;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public boolean isValid() {
        com.ubix.ssp.ad.i.c cVar = this.f45924a;
        if (cVar != null) {
            return cVar.s(this.f45925b);
        }
        return false;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public boolean isVideoAd() {
        return this.f45910B;
    }

    public void j(String str) {
        this.f45928e = str;
    }

    public void k(String str) {
        this.f45920L = str;
    }

    public void l(String str) {
        this.f45915G = str;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void lossNotice(UBiXAdLossInfo uBiXAdLossInfo) {
        com.ubix.ssp.ad.i.c cVar;
        if (uBiXAdLossInfo == null || (cVar = this.f45924a) == null) {
            return;
        }
        cVar.c(this.f45925b, uBiXAdLossInfo.getInfo());
    }

    public void m(String str) {
        this.f45926c = str;
    }

    public void n(String str) {
        this.f45918J = str;
    }

    public void o(String str) {
        this.f45930g = str;
    }

    public void p(String str) {
        this.f45944u = str;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void pauseVideo() {
    }

    public void q(String str) {
        this.f45942s = str;
    }

    public void r(String str) {
        this.f45937n = str;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void registerViews(ViewGroup viewGroup, List<View> list, View view, UBiXNativeInteractionListener uBiXNativeInteractionListener) throws Throwable {
        com.ubix.ssp.ad.i.c cVar = this.f45924a;
        if (cVar != null) {
            cVar.b(this.f45925b, viewGroup, list, view, uBiXNativeInteractionListener);
        }
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd.CustomReporter
    public void reportAdClick(NativeAd.InteractionType interactionType, View view, HashMap<String, String> map) {
        com.ubix.ssp.ad.i.c cVar = this.f45924a;
        if (cVar != null) {
            cVar.a(interactionType.getValue() + "", view, this.f45925b, map);
        }
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd.CustomizeVideo
    public void reportVideoComplete() {
        try {
            this.f45924a.a(this.f45925b, 5100);
            this.f45924a.a(this.f45925b, 5200);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd.CustomizeVideo
    public void reportVideoError() {
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd.CustomizeVideo
    public void reportVideoPause() {
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd.CustomizeVideo
    public void reportVideoProgress(long j2, long j3) {
        if (j3 > 0) {
            try {
                int i2 = (int) ((j2 * 100) / j3);
                int i3 = this.f45922N;
                if (i2 >= i3 * 25) {
                    if (i3 == 0) {
                        this.f45924a.a(this.f45925b, 5000);
                    } else if (i3 == 1) {
                        this.f45924a.a(this.f45925b, ErrorCode.NO_AD_FILL_FOR_LIST_EMPTY);
                    } else if (i3 == 2) {
                        this.f45924a.a(this.f45925b, 5050);
                    } else if (i3 == 3) {
                        this.f45924a.a(this.f45925b, 5075);
                    } else if (i3 == 4) {
                        this.f45924a.a(this.f45925b, 5100);
                    }
                    this.f45922N++;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd.CustomizeVideo
    public void reportVideoResume() {
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd.CustomizeVideo
    public void reportVideoStart() {
        try {
            int i2 = this.f45922N;
            if (i2 == 0) {
                this.f45922N = i2 + 1;
                this.f45924a.a(this.f45925b, 5000);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void s(String str) {
        this.f45940q = str;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void setAutoPlay(boolean z2) {
        f fVar = this.f45949z;
        if (fVar != null) {
            fVar.setAutoPlay(z2);
        }
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void setCustomDownloadConfirmListener(UBiXDownloadConfirmListener uBiXDownloadConfirmListener) {
        u.e("setCustomDownloadConfirmListener nativeAd=" + this.f45924a + ";UBiXDownloadConfirmListener=" + uBiXDownloadConfirmListener);
        com.ubix.ssp.ad.i.c cVar = this.f45924a;
        if (cVar == null || uBiXDownloadConfirmListener == null) {
            return;
        }
        cVar.a(this.f45925b, new b(uBiXDownloadConfirmListener));
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void setDownloadListener(UBiXNativeAdDownloadListener uBiXNativeAdDownloadListener) {
        if (uBiXNativeAdDownloadListener != null) {
            try {
                this.f45924a.a(this.f45925b, new a(uBiXNativeAdDownloadListener));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void setVideoListener(UBiXNativeVideoListener uBiXNativeVideoListener) {
        this.f45924a.a(this.f45925b, uBiXNativeVideoListener);
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void setVideoMute(boolean z2) {
        f fVar = this.f45949z;
        if (fVar != null) {
            fVar.setVideoMute(z2);
        }
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void shakeOff() {
        if (isSupportCustomShake()) {
            com.ubix.ssp.ad.i.c cVar = this.f45924a;
            com.ubix.ssp.ad.d.a aVar = this.f45925b;
            this.f45923O = false;
            cVar.a(aVar, false);
        }
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void shakeOn() {
        if (isSupportCustomShake()) {
            com.ubix.ssp.ad.i.c cVar = this.f45924a;
            com.ubix.ssp.ad.d.a aVar = this.f45925b;
            this.f45923O = true;
            cVar.a(aVar, true);
        }
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void startVideo() {
    }

    public void t(String str) {
        this.f45941r = str;
    }

    public void u(String str) {
        this.f45939p = str;
    }

    public void v(String str) {
        this.f45945v = str;
    }

    public void w(String str) {
        this.f45938o = str;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void winNotice(long j2) {
        com.ubix.ssp.ad.i.c cVar = this.f45924a;
        if (cVar != null) {
            cVar.a(this.f45925b, j2);
        }
    }

    public void a(long j2) {
        this.f45943t = j2;
    }

    public void b(long j2) {
        this.f45947x = j2;
    }

    public void c(long j2) {
        this.f45911C = j2;
    }

    public void d(String str) {
        this.f45931h = str;
    }

    @Override // com.ubix.ssp.open.nativee.NativeAd
    public void registerViews(ViewGroup viewGroup, List<View> list, List<View> list2, View view, UBiXNativeInteractionListener uBiXNativeInteractionListener) throws Throwable {
        com.ubix.ssp.ad.i.c cVar = this.f45924a;
        if (cVar != null) {
            cVar.a(this.f45925b, viewGroup, list, list2, view, uBiXNativeInteractionListener);
        }
    }

    public void a(Drawable drawable) {
        this.f45946w = drawable;
    }

    public void b(String str) {
        this.f45933j = str;
    }

    public void c(String str) {
        this.f45909A = str;
    }

    public void a(com.ubix.ssp.ad.d.a aVar) {
        this.f45925b = aVar;
    }

    public void b(boolean z2) {
        this.f45910B = z2;
    }

    public void c(boolean z2) {
        this.f45919K = z2;
    }

    public void a(f fVar) {
        this.f45949z = fVar;
    }

    public void a(com.ubix.ssp.ad.i.c cVar) {
        this.f45924a = cVar;
    }

    public void a(String str) {
        this.f45934k = str;
    }

    public void a(ArrayList<UBiXImage> arrayList) {
        this.f45929f = arrayList;
    }

    public void a(boolean z2) {
        this.f45935l = z2;
    }
}

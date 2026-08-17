package com.fl.saas;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.fl.saas.C1188j;
import com.fl.saas.adx.api.mixNative.NativeCustomizeVideo;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import com.fl.saas.adx.api.mixNative.NativePrepareInfo;
import com.fl.saas.adx.base.activity.h5.FLH5Activity;
import com.fl.saas.adx.base.activity.h5.QuickAppHelper;
import com.fl.saas.adx.base.bidding.BiddingResult;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.innterNative.ActionView;
import com.fl.saas.adx.base.innterNative.BaseNativeAd;
import com.fl.saas.adx.base.interfaces.AdChangeCacheData;
import com.fl.saas.adx.base.interfaces.DeepLinkOpenListener;
import com.fl.saas.adx.base.interfaces.S2SVideoPlayListener;
import com.fl.saas.adx.base.widget.FingerSlidingAndTwistingView;
import com.fl.saas.adx.base.widget.FingerSlidingView;
import com.fl.saas.adx.base.widget.InclineView;
import com.fl.saas.adx.base.widget.NativeSlidingView;
import com.fl.saas.adx.base.widget.S2SVideoView;
import com.fl.saas.adx.base.widget.ShakeView;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class K0 extends BaseNativeAd implements BiddingResult, ActionView, AdChangeCacheData, DeepLinkOpenListener {

    /* renamed from: l, reason: collision with root package name */
    private static final String f29964l = CommConstant.getClassTag("S2S", K0.class);

    /* renamed from: a, reason: collision with root package name */
    private S2SVideoView f29965a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f29966b;

    /* renamed from: c, reason: collision with root package name */
    private final G0 f29967c;

    /* renamed from: d, reason: collision with root package name */
    private ActionView.Type f29968d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f29969e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f29970f;

    /* renamed from: g, reason: collision with root package name */
    private NativeSlidingView f29971g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f29972h;

    /* renamed from: i, reason: collision with root package name */
    private List f29973i;

    /* renamed from: j, reason: collision with root package name */
    private View f29974j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f29975k;

    public class a implements NativeSlidingView.SlidingListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ C1188j f29976a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ NativeSlidingView f29977b;

        public a(C1188j c1188j, NativeSlidingView nativeSlidingView) {
            this.f29976a = c1188j;
            this.f29977b = nativeSlidingView;
        }

        @Override // com.fl.saas.adx.base.widget.NativeSlidingView.SlidingListener
        public void onDown(int i2, int i3) {
            C1188j c1188j = this.f29976a;
            if (c1188j == null) {
                return;
            }
            c1188j.f30421E1 = i2;
            c1188j.f30424F1 = i3;
            int[] iArr = new int[2];
            this.f29977b.getLocationOnScreen(iArr);
            C1188j c1188j2 = this.f29976a;
            c1188j2.f30433I1 = c1188j2.f30421E1 + iArr[0];
            c1188j2.f30436J1 = c1188j2.f30424F1 + iArr[1];
            c1188j2.f30460R1 = System.currentTimeMillis();
        }

        @Override // com.fl.saas.adx.base.widget.NativeSlidingView.SlidingListener
        public void onSliding() {
            if (this.f29976a == null) {
                return;
            }
            if (K0.this.f29973i != null && !K0.this.f29973i.isEmpty()) {
                Iterator it = K0.this.f29973i.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    View view = (View) it.next();
                    if (view != null) {
                        this.f29976a.k2 = C1188j.b.SLIDE;
                        view.performClick();
                        break;
                    }
                }
            }
            ViewHelper.removeParent(this.f29977b);
            K0.this.f29970f = true;
        }

        @Override // com.fl.saas.adx.base.widget.NativeSlidingView.SlidingListener
        public void onUp(int i2, int i3) {
            C1188j c1188j = this.f29976a;
            if (c1188j == null) {
                return;
            }
            c1188j.f30427G1 = i2;
            c1188j.f30430H1 = i3;
            int[] iArr = new int[2];
            this.f29977b.getLocationOnScreen(iArr);
            C1188j c1188j2 = this.f29976a;
            c1188j2.f30439K1 = c1188j2.f30427G1 + iArr[0];
            c1188j2.f30442L1 = c1188j2.f30430H1 + iArr[1];
            c1188j2.f30463S1 = System.currentTimeMillis();
        }
    }

    public class b implements S2SVideoPlayListener {
        public b() {
        }

        @Override // com.fl.saas.adx.base.interfaces.S2SVideoPlayListener
        public void onVideoPlayComplete() {
            K0.this.onAdVideoEndEvent();
        }

        @Override // com.fl.saas.adx.base.interfaces.S2SVideoPlayListener
        public void onVideoPlayError(int i2, int i3) {
        }

        @Override // com.fl.saas.adx.base.interfaces.S2SVideoPlayListener
        public void onVideoPlayStart() {
            K0.this.onAdVideoStartEvent();
        }

        @Override // com.fl.saas.adx.base.interfaces.S2SVideoPlayListener
        public void onVideoPrepare() {
            if (DeviceUtil.filling_timing != 1 || K0.this.f29967c == null) {
                return;
            }
            K0.this.f29967c.a();
        }
    }

    public class c implements FingerSlidingView.SlidingListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ C1188j f29980a;

        public c(C1188j c1188j) {
            this.f29980a = c1188j;
        }

        @Override // com.fl.saas.adx.base.widget.FingerSlidingView.SlidingListener
        public void onDown(int i2, int i3, View view) {
            C1188j c1188j = (C1188j) K0.this.getNativeAd();
            if (c1188j == null) {
                return;
            }
            c1188j.f30421E1 = i2;
            c1188j.f30424F1 = i3;
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            c1188j.f30433I1 = c1188j.f30421E1 + iArr[0];
            c1188j.f30436J1 = c1188j.f30424F1 + iArr[1];
            c1188j.f30460R1 = System.currentTimeMillis();
        }

        @Override // com.fl.saas.adx.base.widget.FingerSlidingView.SlidingListener
        public void onSliding() {
            if (K0.this.f29973i == null || K0.this.f29973i.isEmpty()) {
                return;
            }
            for (View view : K0.this.f29973i) {
                if (view != null) {
                    this.f29980a.k2 = C1188j.b.SLIDE;
                    view.performClick();
                    return;
                }
            }
        }

        @Override // com.fl.saas.adx.base.widget.FingerSlidingView.SlidingListener
        public void onUp(int i2, int i3, View view) {
            C1188j c1188j = (C1188j) K0.this.getNativeAd();
            if (c1188j == null) {
                return;
            }
            c1188j.f30427G1 = i2;
            c1188j.f30430H1 = i3;
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            c1188j.f30439K1 = c1188j.f30427G1 + iArr[0];
            c1188j.f30442L1 = c1188j.f30430H1 + iArr[1];
            c1188j.f30463S1 = System.currentTimeMillis();
        }
    }

    public class d implements FingerSlidingAndTwistingView.SlidingListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ C1188j f29982a;

        public d(C1188j c1188j) {
            this.f29982a = c1188j;
        }

        @Override // com.fl.saas.adx.base.widget.FingerSlidingAndTwistingView.SlidingListener
        public void onDown(int i2, int i3, View view) {
            C1188j c1188j = (C1188j) K0.this.getNativeAd();
            if (c1188j == null) {
                return;
            }
            c1188j.f30421E1 = i2;
            c1188j.f30424F1 = i3;
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            c1188j.f30433I1 = c1188j.f30421E1 + iArr[0];
            c1188j.f30436J1 = c1188j.f30424F1 + iArr[1];
            c1188j.f30460R1 = System.currentTimeMillis();
        }

        @Override // com.fl.saas.adx.base.widget.FingerSlidingAndTwistingView.SlidingListener
        public void onShake(int i2, int i3, int i4) {
            C1188j c1188j = this.f29982a;
            c1188j.f30445M1 = i2;
            c1188j.f30448N1 = i3;
            c1188j.f30451O1 = i4;
            if (K0.this.f29973i == null || K0.this.f29973i.isEmpty()) {
                return;
            }
            for (View view : K0.this.f29973i) {
                if (view != null) {
                    this.f29982a.k2 = C1188j.b.SHAKE;
                    view.performClick();
                    return;
                }
            }
        }

        @Override // com.fl.saas.adx.base.widget.FingerSlidingAndTwistingView.SlidingListener
        public void onSliding() {
            if (K0.this.f29973i == null || K0.this.f29973i.isEmpty()) {
                return;
            }
            for (View view : K0.this.f29973i) {
                if (view != null) {
                    this.f29982a.k2 = C1188j.b.SLIDE;
                    view.performClick();
                    return;
                }
            }
        }

        @Override // com.fl.saas.adx.base.widget.FingerSlidingAndTwistingView.SlidingListener
        public void onUp(int i2, int i3, View view) {
            C1188j c1188j = (C1188j) K0.this.getNativeAd();
            if (c1188j == null) {
                return;
            }
            c1188j.f30427G1 = i2;
            c1188j.f30430H1 = i3;
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            c1188j.f30439K1 = c1188j.f30427G1 + iArr[0];
            c1188j.f30442L1 = c1188j.f30430H1 + iArr[1];
            c1188j.f30463S1 = System.currentTimeMillis();
        }
    }

    public class e implements NativeCustomizeVideo {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ C1188j f29984a;

        public e(C1188j c1188j) {
            this.f29984a = c1188j;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeCustomizeVideo, com.fl.saas.adx.base.interfaces.CustomizeVideo
        public String getVideoUrl() {
            return this.f29984a.f30546t1;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeCustomizeVideo, com.fl.saas.adx.base.interfaces.CustomizeVideo
        public void reportVideoAutoStart() {
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeCustomizeVideo, com.fl.saas.adx.base.interfaces.CustomizeVideo
        public void reportVideoBreak(long j2) {
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeCustomizeVideo, com.fl.saas.adx.base.interfaces.CustomizeVideo
        public void reportVideoContinue(long j2) {
            C1230x.a().h(this.f29984a);
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeCustomizeVideo, com.fl.saas.adx.base.interfaces.CustomizeVideo
        public void reportVideoError(long j2, int i2, int i3) {
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeCustomizeVideo, com.fl.saas.adx.base.interfaces.CustomizeVideo
        public void reportVideoFinish() {
            C1230x.a().b(this.f29984a, 0);
            K0.this.onAdVideoEndEvent();
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeCustomizeVideo
        public void reportVideoFirst() {
            C1230x.a().i(this.f29984a);
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeCustomizeVideo, com.fl.saas.adx.base.interfaces.CustomizeVideo
        public void reportVideoPause(long j2) {
            C1230x.a().l(this.f29984a);
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeCustomizeVideo, com.fl.saas.adx.base.interfaces.CustomizeVideo
        public void reportVideoStart() {
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeCustomizeVideo, com.fl.saas.adx.base.interfaces.CustomizeVideo
        public void reportVideoStartError(int i2, int i3) {
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeCustomizeVideo
        public void reportVideoThird() {
            C1230x.a().m(this.f29984a);
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeCustomizeVideo
        public void reportVideomMidpoint() {
            C1230x.a().n(this.f29984a);
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeCustomizeVideo
        public void reportVideoStart(long j2) {
            long j3 = j2 / 1000;
            this.f29984a.f30478X1 = Math.toIntExact(j3);
            C1230x.a().d(this.f29984a, (int) j3);
            K0.this.onAdVideoStartEvent();
        }
    }

    public K0(Context context, C1188j c1188j, G0 g02) {
        super(context, c1188j);
        this.f29966b = false;
        this.f29969e = true;
        this.f29970f = false;
        this.f29972h = false;
        this.f29975k = false;
        this.f29967c = g02;
    }

    @Override // com.fl.saas.adx.base.bidding.BiddingResult
    public void biddingResult(final boolean z2, final int i2, final int i3, int i4) {
        getNativeAdOpt().a(new B() { // from class: com.fl.saas.q1
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                K0.a(i3, z2, i2, (C1188j) obj);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x01af, code lost:
    
        if (r2.r() != false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0134, code lost:
    
        if (r2.f30556x <= 0) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0136, code lost:
    
        r0 = c(r2);
     */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0132 A[Catch: all -> 0x0051, TryCatch #0 {all -> 0x0051, blocks: (B:3:0x0004, B:5:0x000e, B:8:0x0016, B:10:0x0020, B:12:0x0024, B:14:0x0028, B:16:0x0034, B:18:0x0044, B:21:0x0054, B:38:0x009d, B:91:0x017e, B:22:0x006c, B:24:0x0070, B:26:0x007c, B:37:0x0099, B:29:0x0081, B:31:0x0085, B:33:0x0089, B:35:0x0095, B:41:0x00a3, B:43:0x00aa, B:45:0x00ae, B:99:0x01a0, B:46:0x00b6, B:48:0x00ca, B:50:0x00ce, B:52:0x00d2, B:54:0x00de, B:55:0x00e2, B:57:0x00ee, B:58:0x00ef, B:61:0x00f6, B:60:0x00f3, B:62:0x0109, B:64:0x0115, B:66:0x0119, B:67:0x012a, B:69:0x012e, B:71:0x0132, B:73:0x0136, B:74:0x013b, B:76:0x0142, B:78:0x0146, B:80:0x014a, B:82:0x0156, B:83:0x015a, B:85:0x0161, B:86:0x0162, B:89:0x0169, B:88:0x0166, B:92:0x0182, B:94:0x0189, B:96:0x018d, B:98:0x0191, B:100:0x01a3, B:102:0x01ab), top: B:110:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x017e A[Catch: all -> 0x0051, PHI: r3
      0x017e: PHI (r3v38 android.view.View) = (r3v18 android.view.View), (r3v51 android.view.View) binds: [B:90:0x017c, B:40:0x00a1] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0051, blocks: (B:3:0x0004, B:5:0x000e, B:8:0x0016, B:10:0x0020, B:12:0x0024, B:14:0x0028, B:16:0x0034, B:18:0x0044, B:21:0x0054, B:38:0x009d, B:91:0x017e, B:22:0x006c, B:24:0x0070, B:26:0x007c, B:37:0x0099, B:29:0x0081, B:31:0x0085, B:33:0x0089, B:35:0x0095, B:41:0x00a3, B:43:0x00aa, B:45:0x00ae, B:99:0x01a0, B:46:0x00b6, B:48:0x00ca, B:50:0x00ce, B:52:0x00d2, B:54:0x00de, B:55:0x00e2, B:57:0x00ee, B:58:0x00ef, B:61:0x00f6, B:60:0x00f3, B:62:0x0109, B:64:0x0115, B:66:0x0119, B:67:0x012a, B:69:0x012e, B:71:0x0132, B:73:0x0136, B:74:0x013b, B:76:0x0142, B:78:0x0146, B:80:0x014a, B:82:0x0156, B:83:0x015a, B:85:0x0161, B:86:0x0162, B:89:0x0169, B:88:0x0166, B:92:0x0182, B:94:0x0189, B:96:0x018d, B:98:0x0191, B:100:0x01a3, B:102:0x01ab), top: B:110:0x0004 }] */
    @Override // com.fl.saas.adx.base.innterNative.ActionView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View bindActionView(com.fl.saas.adx.base.innterNative.ActionView.Type r20) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.K0.bindActionView(com.fl.saas.adx.base.innterNative.ActionView$Type):android.view.View");
    }

    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd
    public NativeMaterial createNativeMaterial(C1188j c1188j) {
        return J0.a(c1188j, this.f29965a);
    }

    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd, com.fl.saas.adx.api.mixNative.NativeAd
    public void destroy() {
        if (this.f29975k) {
            return;
        }
        this.f29975k = true;
        if (getNativeAdView() != null) {
            getNativeAdView().unOnVisibilityChanged();
            getNativeAdView().unOnVisibilityRatioChanged();
        }
        View view = this.f29974j;
        if (view != null) {
            ViewHelper.removeParent(view);
            this.f29974j = null;
        }
        S2SVideoView s2SVideoView = this.f29965a;
        if (s2SVideoView != null) {
            s2SVideoView.onDestroy();
            this.f29965a = null;
        }
        C1224v.b().a();
        super.destroy();
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public NativeCustomizeVideo getCustomizeVideo() {
        C1188j c1188j = (C1188j) getNativeAd();
        if (c1188j == null || TextUtils.isEmpty(c1188j.f30546t1) || c1188j.f30453P0.f30574b != 2) {
            return null;
        }
        return new e(c1188j);
    }

    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd
    public void init(C1188j c1188j) {
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public boolean isNativeExpress() {
        return false;
    }

    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd, com.fl.saas.adx.api.mixNative.NativeAd
    public boolean isReady() {
        try {
            C1188j c1188j = (C1188j) getNativeAd();
            if (c1188j != null) {
                return this.isNativeReady && ((((System.currentTimeMillis() - this.responseTime) / 1000) > ((long) c1188j.f30418D1) ? 1 : (((System.currentTimeMillis() - this.responseTime) / 1000) == ((long) c1188j.f30418D1) ? 0 : -1)) < 0);
            }
            return false;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return false;
        }
    }

    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd, com.fl.saas.adx.api.mixNative.NativeAd
    public boolean isShakeType() {
        return getNativeAd() != null && ((C1188j) getNativeAd()).t() && this.f29968d == null && DeviceUtil.deviceHasAccelerometerSensor;
    }

    @Override // com.fl.saas.adx.base.interfaces.DeepLinkOpenListener
    public void onDeepLinkOpenFailed(Activity activity) {
        try {
            C1188j c1188j = (C1188j) getNativeAd();
            if (c1188j == null || TextUtils.isEmpty(c1188j.f30557x0)) {
                return;
            }
            c1188j.h2 = 1;
            c1188j.i2 = 1;
            C1230x.a().f(c1188j);
            FLH5Activity.launchWithEnableQuickApp(activity, C1230x.a().a(c1188j.f30557x0, c1188j), QuickAppHelper.getInstance().enableQuickApp(c1188j.f30511i));
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd
    public void pJ0() {
        a(gVx(), gVy(), gVz());
    }

    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd, com.fl.saas.adx.api.mixNative.NativeAd
    public void release() {
        super.release();
    }

    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd
    public void render(C1188j c1188j, NativePrepareInfo nativePrepareInfo) {
        try {
            final C1188j c1188j2 = (C1188j) getNativeAd();
            if (c1188j2 == null) {
                onAdFailedEvent(FLError.create(ErrorCodeConstant.AD_DATA_ERROR, "S2SMixNative render but AdSource is null"));
                return;
            }
            this.f29973i = nativePrepareInfo.getAllClickViews();
            if (this.f29969e && getNativeAd() != null && ((C1188j) getNativeAd()).t() && this.f29968d == null && DeviceUtil.deviceHasAccelerometerSensor) {
                View shakeTipsView = getShakeTipsView();
                this.f29974j = shakeTipsView;
                if (shakeTipsView != null) {
                    if (this.f29973i == null) {
                        this.f29973i = new ArrayList();
                    }
                    this.f29973i.add(this.f29974j);
                    ShakeView shakeView = (ShakeView) this.f29974j.findViewById(R.id.yd_shake_view);
                    shakeView.setCallback(false);
                    shakeView.setShakeListener(c1188j2.k(), new ShakeView.ShakeListener() { // from class: com.fl.saas.r1
                        @Override // com.fl.saas.adx.base.widget.ShakeView.ShakeListener
                        public final void onShake(int i2, int i3, int i4) {
                            this.f30640a.a(c1188j2, i2, i3, i4);
                        }
                    });
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 17;
                    if (nativePrepareInfo.isSelfRenderShake() || !c1188j.v()) {
                        layoutParams.gravity = 80;
                        this.f29974j.setAlpha(0.0f);
                    }
                    getNativeAdView().addView(this.f29974j, layoutParams);
                }
            }
            if (getNativeAd() != null && ((C1188j) getNativeAd()).r() && this.f29968d == null && !this.f29970f) {
                ViewHelper.removeParent(this.f29971g);
                this.f29971g = c(c1188j2);
                getNativeAdView().addView(this.f29971g, new FrameLayout.LayoutParams(-1, -1));
            }
            a();
            if (nativePrepareInfo.getCloseView() != null) {
                nativePrepareInfo.getCloseView().bringToFront();
                nativePrepareInfo.getCloseView().setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.s1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f30648b.a(view);
                    }
                });
            }
            a(c1188j2);
            a(nativePrepareInfo.getCtaViewList());
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    @Override // com.fl.saas.adx.base.interfaces.AdChangeCacheData
    public void setCacheData(String str, C1188j c1188j) {
        if (getNativeAd() != null) {
            ((C1188j) getNativeAd()).f30538r = str;
            ((C1188j) getNativeAd()).f30511i = c1188j.f30511i;
            ((C1188j) getNativeAd()).f30490b0 = c1188j.f30508h;
            ((C1188j) getNativeAd()).f30486a0 = c1188j.f30511i;
            ((C1188j) getNativeAd()).f30494c0 = c1188j.f30514j;
        }
    }

    private void b() {
        try {
            if (this.f29972h) {
                return;
            }
            getNativeAdView().unOnVisibilityChanged();
            C1188j c1188j = (C1188j) getNativeAd();
            if (c1188j != null) {
                c1188j.f30497d0 = isReady() ? 1 : 0;
                c1188j.m2 = System.currentTimeMillis();
                c1188j.f30454P1 = getNativeAdView().getWidth();
                c1188j.f30457Q1 = getNativeAdView().getHeight();
                C1230x.a().a(c1188j, false);
                C1188j.c cVar = c1188j.f30453P0;
                if (cVar != null && !TextUtils.isEmpty(cVar.f30573a)) {
                    ((C1188j) getNativeAd()).f30562z = c1188j.f30453P0.f30573a;
                }
            }
            onAdImpressedEvent();
            this.f29972h = true;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private NativeSlidingView c(C1188j c1188j) {
        NativeSlidingView nativeSlidingView = new NativeSlidingView(getContext());
        nativeSlidingView.setSlidingListener(c1188j.f30556x, new a(c1188j, nativeSlidingView));
        nativeSlidingView.createView(c1188j.f30479Y == 1);
        return nativeSlidingView;
    }

    private void a(Context context, C1188j c1188j) {
        if (c1188j == null || context == null) {
            return;
        }
        try {
            View view = this.f29974j;
            if (view != null) {
                ViewHelper.removeParent(view);
                this.f29969e = false;
                this.f29974j = null;
            }
            c1188j.p2 = "2";
            b();
            int iA = AbstractC1162b.a(c1188j);
            c1188j.f30537q1 = iA;
            C1230x.a().c(c1188j);
            C1188j.c cVar = c1188j.f30453P0;
            if (cVar != null && !TextUtils.isEmpty(cVar.f30573a)) {
                c1188j.f30562z = c1188j.f30453P0.f30573a;
            }
            if (TextUtils.isEmpty(c1188j.f30557x0) || !c1188j.f30557x0.startsWith("ECHARGINGCUSTOM")) {
                C1224v.b().b(context, c1188j);
                onAdClickedEvent(iA);
            } else {
                onAdClickedCallBackEvent(c1188j.f30557x0.replace("ECHARGINGCUSTOM", ""));
            }
            c1188j.k2 = C1188j.b.NORMAL;
            c1188j.f30421E1 = -999;
            c1188j.f30424F1 = -999;
            c1188j.f30433I1 = -999;
            c1188j.f30436J1 = -999;
            c1188j.f30427G1 = -999;
            c1188j.f30430H1 = -999;
            c1188j.f30439K1 = -999;
            c1188j.f30442L1 = -999;
            c1188j.f30445M1 = -999;
            c1188j.f30448N1 = -999;
            c1188j.f30451O1 = -999;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void b(C1188j c1188j) {
        G0 g02;
        if (c1188j == null || this.f29965a != null || TextUtils.isEmpty(c1188j.f30546t1) || c1188j.f30453P0.f30574b != 2) {
            G0 g03 = this.f29967c;
            if (g03 != null) {
                g03.a();
                return;
            }
            return;
        }
        this.f29965a = new S2SVideoView(getContext());
        if (DeviceUtil.filling_timing == 0 && (g02 = this.f29967c) != null) {
            g02.a();
        }
        this.f29965a.setVideo(c1188j);
        this.f29965a.setVideoPlayListener(new b());
    }

    public void c() {
        try {
            b((C1188j) getNativeAd());
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void a(final List list) {
        if (this.f29973i == null) {
            this.f29973i = new ArrayList();
        }
        LogcatUtil.d(f29964l, "bindClickViews" + this.f29973i.size());
        for (View view : this.f29973i) {
            view.setClickable(true);
            view.setEnabled(true);
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.fl.saas.x1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return this.f30704b.a(view2, motionEvent);
                }
            });
            ViewHelper.onSingleClickListener(view, new View.OnClickListener() { // from class: com.fl.saas.o1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f30616b.a(list, view2);
                }
            });
        }
    }

    private void b(final View view, final ActionView.Type type, final C1188j c1188j) {
        listenShakeView(view, false, type, c1188j.k(), new ShakeView.ShakeListener() { // from class: com.fl.saas.t1
            @Override // com.fl.saas.adx.base.widget.ShakeView.ShakeListener
            public final void onShake(int i2, int i3, int i4) {
                this.f30656a.b(c1188j, type, view, i2, i3, i4);
            }
        });
    }

    private void a(final C1188j c1188j) {
        S2SVideoView s2SVideoView = this.f29965a;
        if (s2SVideoView == null || c1188j.f30428H == 0) {
            return;
        }
        s2SVideoView.setOnTouchListener(new View.OnTouchListener() { // from class: com.fl.saas.u1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f30664b.b(view, motionEvent);
            }
        });
        this.f29965a.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.v1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30680b.a(c1188j, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            LogcatUtil.d(f29964l, "ACTION_DOWN");
            C1188j c1188j = (C1188j) getNativeAd();
            if (c1188j != null) {
                c1188j.f30421E1 = (int) motionEvent.getX();
                c1188j.f30424F1 = (int) motionEvent.getY();
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                c1188j.f30433I1 = c1188j.f30421E1 + iArr[0];
                c1188j.f30436J1 = c1188j.f30424F1 + iArr[1];
                c1188j.f30460R1 = System.currentTimeMillis();
            }
        }
        if (motionEvent.getAction() == 1) {
            LogcatUtil.d(f29964l, "ACTION_UP");
            C1188j c1188j2 = (C1188j) getNativeAd();
            if (c1188j2 != null) {
                c1188j2.f30427G1 = (int) motionEvent.getX();
                c1188j2.f30430H1 = (int) motionEvent.getY();
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                c1188j2.f30439K1 = c1188j2.f30427G1 + iArr2[0];
                c1188j2.f30442L1 = c1188j2.f30430H1 + iArr2[1];
                c1188j2.f30463S1 = System.currentTimeMillis();
            }
        }
        return false;
    }

    private void a() {
        try {
            LogcatUtil.d(f29964l, "bindNativeView" + this.f29972h);
            if (this.f29972h) {
                return;
            }
            getNativeAdView().setOnVisibilityChanged(new B() { // from class: com.fl.saas.n1
                @Override // com.fl.saas.B
                public final void a(Object obj) {
                    this.f30614a.a((Boolean) obj);
                }
            });
            getNativeAdView().setVisibilityRatioChanged(new B() { // from class: com.fl.saas.p1
                @Override // com.fl.saas.B
                public final void a(Object obj) {
                    this.f30622a.a((Integer) obj);
                }
            });
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(C1188j c1188j, ActionView.Type type, View view, int i2, int i3, int i4) {
        c1188j.f30445M1 = i2;
        c1188j.f30448N1 = i3;
        c1188j.f30451O1 = i4;
        List list = this.f29973i;
        if (list != null && !list.isEmpty()) {
            Iterator it = this.f29973i.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                View view2 = (View) it.next();
                if (view2 != null) {
                    c1188j.k2 = C1188j.b.SHAKE;
                    view2.performClick();
                    break;
                }
            }
        }
        if (type != ActionView.Type.Spread) {
            ViewHelper.removeParent(view);
        }
    }

    private void a(final View view, final ActionView.Type type, final C1188j c1188j) {
        listenInclineView(view, false, type, c1188j.k(), new InclineView.InclineListener() { // from class: com.fl.saas.w1
            @Override // com.fl.saas.adx.base.widget.InclineView.InclineListener
            public final void onIncline(int i2, int i3, int i4) {
                this.f30692a.a(c1188j, type, view, i2, i3, i4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(int i2, boolean z2, int i3, C1188j c1188j) {
        c1188j.f30499e = i2;
        if (!z2) {
            if (i3 > 0) {
                c1188j.f30496d = i3;
            }
            C1230x.a().a(c1188j);
        } else {
            if (i3 > 0 && i3 <= c1188j.f30496d) {
                c1188j.f30496d = i3;
            }
            C1230x.a().b(c1188j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            LogcatUtil.d(f29964l, "ACTION_DOWN");
            C1188j c1188j = (C1188j) getNativeAd();
            if (c1188j != null) {
                c1188j.f30421E1 = (int) motionEvent.getX();
                c1188j.f30424F1 = (int) motionEvent.getY();
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                c1188j.f30433I1 = c1188j.f30421E1 + iArr[0];
                c1188j.f30436J1 = c1188j.f30424F1 + iArr[1];
                c1188j.f30460R1 = System.currentTimeMillis();
            }
        }
        if (motionEvent.getAction() == 1) {
            LogcatUtil.d(f29964l, "ACTION_UP");
            C1188j c1188j2 = (C1188j) getNativeAd();
            if (c1188j2 != null) {
                c1188j2.f30427G1 = (int) motionEvent.getX();
                c1188j2.f30430H1 = (int) motionEvent.getY();
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                c1188j2.f30439K1 = c1188j2.f30427G1 + iArr2[0];
                c1188j2.f30442L1 = c1188j2.f30430H1 + iArr2[1];
                c1188j2.f30463S1 = System.currentTimeMillis();
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, View view) {
        LogcatUtil.d(f29964l, "viewClick");
        C1188j c1188j = (C1188j) getNativeAd();
        if (c1188j != null) {
            c1188j.o2 = "1";
            if (list != null && !list.isEmpty()) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (((View) it.next()) == view) {
                        c1188j.o2 = "2";
                        break;
                    }
                }
            }
        }
        a(getContext(), c1188j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(C1188j c1188j, View view) {
        c1188j.o2 = "1";
        c1188j.f30469U1 = this.f29965a.getProgress();
        c1188j.f30472V1 = this.f29965a.getProgress() / 1000;
        a(getContext(), c1188j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Boolean bool) {
        if (bool.booleanValue()) {
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Integer num) {
        C1188j c1188j = (C1188j) getNativeAd();
        if (c1188j == null || num == null) {
            return;
        }
        c1188j.n2 = num.intValue();
        if (num.intValue() >= 100) {
            getNativeAdView().unOnVisibilityRatioChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(C1188j c1188j, ActionView.Type type, View view, int i2, int i3, int i4) {
        c1188j.f30445M1 = i2;
        c1188j.f30448N1 = i3;
        c1188j.f30451O1 = i4;
        List list = this.f29973i;
        if (list != null && !list.isEmpty()) {
            Iterator it = this.f29973i.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                View view2 = (View) it.next();
                if (view2 != null) {
                    c1188j.k2 = C1188j.b.SHAKE;
                    view2.performClick();
                    break;
                }
            }
        }
        if (type != ActionView.Type.Spread) {
            ViewHelper.removeParent(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(C1188j c1188j, int i2, int i3, int i4) {
        c1188j.f30445M1 = i2;
        c1188j.f30448N1 = i3;
        c1188j.f30451O1 = i4;
        List list = this.f29973i;
        if (list != null && !list.isEmpty()) {
            Iterator it = this.f29973i.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                View view = (View) it.next();
                if (view != null) {
                    c1188j.k2 = C1188j.b.SHAKE;
                    view.performClick();
                    break;
                }
            }
        }
        ViewHelper.removeParent(this.f29974j);
        this.f29969e = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        LogcatUtil.d(f29964l, "onAdClose");
        onAdCloseEvent();
        ViewHelper.removeParent(getNativeAdView());
    }

    public void a(float f2, float f3, float f4) {
        C1188j c1188j = (C1188j) getNativeAd();
        if (c1188j == null) {
            return;
        }
        if (f2 == 0.0f || f3 == 0.0f || f4 == 0.0f) {
            c1188j.f30445M1 = -999;
            c1188j.f30448N1 = -999;
            c1188j.f30451O1 = -999;
            c1188j.f30421E1 = c1188j.C2;
            c1188j.f30424F1 = c1188j.D2;
            c1188j.f30427G1 = c1188j.E2;
            c1188j.f30430H1 = c1188j.F2;
            c1188j.f30433I1 = c1188j.G2;
            c1188j.f30436J1 = c1188j.H2;
            c1188j.f30439K1 = c1188j.I2;
            c1188j.f30442L1 = c1188j.J2;
            long jCurrentTimeMillis = System.currentTimeMillis();
            c1188j.f30463S1 = jCurrentTimeMillis;
            c1188j.f30460R1 = jCurrentTimeMillis - c1188j.K2;
        } else {
            c1188j.f30421E1 = -999;
            c1188j.f30424F1 = -999;
            c1188j.f30433I1 = -999;
            c1188j.f30436J1 = -999;
            c1188j.f30427G1 = -999;
            c1188j.f30430H1 = -999;
            c1188j.f30439K1 = -999;
            c1188j.f30442L1 = -999;
            c1188j.f30445M1 = Math.round(f2 * 100.0f);
            c1188j.f30448N1 = Math.round(f3 * 100.0f);
            c1188j.f30451O1 = Math.round(f4 * 100.0f);
            c1188j.k2 = C1188j.b.SHAKE;
        }
        c1188j.L2 = 1;
        a(getContext(), c1188j);
        c1188j.L2 = 0;
    }
}

package com.fl.saas;

import android.content.Context;
import com.fl.saas.Q0;
import com.fl.saas.adx.api.mixNative.NativeAdView;
import com.fl.saas.adx.api.mixNative.NativeEventListener;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import com.fl.saas.adx.base.bidding.BiddingResult;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.innterNative.BaseNativeAd;
import com.fl.saas.adx.base.interfaces.AdChangeCacheData;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;

/* loaded from: classes3.dex */
public class L0 extends BaseNativeAd implements BiddingResult, AdChangeCacheData {

    /* renamed from: a, reason: collision with root package name */
    private NativeAdView f29991a;

    /* renamed from: b, reason: collision with root package name */
    private C1188j f29992b;

    /* renamed from: c, reason: collision with root package name */
    private Q0 f29993c;

    /* renamed from: d, reason: collision with root package name */
    private int f29994d;

    /* renamed from: e, reason: collision with root package name */
    private Q0.b f29995e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f29996f;

    public class a implements Q0.b {
        public a() {
        }

        @Override // com.fl.saas.Q0.b
        public void a() {
        }

        @Override // com.fl.saas.Q0.b
        public void onClose() {
            L0.this.onAdCloseEvent();
        }
    }

    public class b implements NativeEventListener {
        public b() {
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdClicked(NativeAdView nativeAdView) {
            L0.this.onAdClickedEvent();
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdClose(NativeAdView nativeAdView) {
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdFailed(NativeAdView nativeAdView, FLError fLError) {
            L0.this.onAdFailedEvent(fLError);
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdImpressed(NativeAdView nativeAdView) {
            L0.this.onAdImpressedEvent();
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdVideoEnd(NativeAdView nativeAdView) {
            L0.this.onAdVideoEndEvent();
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdVideoProgress(NativeAdView nativeAdView, long j2) {
            L0.this.onAdVideoProgress(j2);
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdVideoStart(NativeAdView nativeAdView) {
            L0.this.onAdVideoStartEvent();
        }
    }

    public L0(Context context, K0 k02, int i2, int i3) {
        super(context, k02);
        this.f29996f = false;
        try {
            this.f29992b = (C1188j) k02.getNativeAdOpt().b();
            int iDip2px = DeviceUtil.dip2px(r0.f30548u0);
            int iDip2px2 = DeviceUtil.dip2px(this.f29992b.f30551v0);
            NativeAdView nativeAdView = new NativeAdView(getContext());
            this.f29991a = nativeAdView;
            nativeAdView.setLayoutParams(ViewHelper.getWrapParent());
            this.f29993c = new Q0(context, Q0.c.a(this.f29992b.f30545t0));
            NativeMaterial adMaterial = k02.getAdMaterial();
            if (this.f29995e == null) {
                this.f29995e = new a();
            }
            this.f29993c.e(adMaterial.getTitle()).c(adMaterial.getDescription()).b(adMaterial.getCallToAction()).b(i2, i3).b(this.f29992b).a(iDip2px, iDip2px2).a(adMaterial.getAdLogo()).d(adMaterial.getIconUrl()).a().a(this.f29995e);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            onAdFailedEvent(new FLError(ErrorCodeConstant.RENDER_ERROR, "ad render error"));
        }
    }

    @Override // com.fl.saas.adx.base.bidding.BiddingResult
    public void biddingResult(final boolean z2, final int i2, final int i3, final int i4) {
        getNativeAdOpt().a(new B() { // from class: com.fl.saas.y1
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((K0) obj).biddingResult(z2, i2, i3, i4);
            }
        });
    }

    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd
    public NativeMaterial createNativeMaterial(K0 k02) {
        return J0.a(this.f29992b, this.f29991a);
    }

    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd, com.fl.saas.adx.api.mixNative.NativeAd
    public void destroy() {
        super.destroy();
        if (this.f29996f) {
            return;
        }
        this.f29996f = true;
        if (getNativeAd() != null) {
            ((K0) getNativeAd()).destroy();
        }
        Q0 q02 = this.f29993c;
        if (q02 != null) {
            q02.b();
        }
    }

    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd
    public void init(K0 k02) {
        k02.setNativeEventListener(new b());
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd
    public void pJ0() {
        if (getNativeAd() != null) {
            ((K0) getNativeAd()).a(gVx(), gVy(), gVz());
        }
    }

    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd, com.fl.saas.adx.api.mixNative.NativeAd
    public void release() {
        super.release();
        try {
            if (this.f29996f) {
                return;
            }
            this.f29996f = true;
            if (getNativeAd() != null) {
                ((K0) getNativeAd()).destroy();
            }
            Q0 q02 = this.f29993c;
            if (q02 != null) {
                q02.b();
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001b A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:2:0x0000, B:5:0x0005, B:7:0x000b, B:9:0x0013, B:16:0x003c, B:18:0x0060, B:20:0x0066, B:23:0x0077, B:22:0x0070, B:12:0x001b, B:14:0x0025, B:15:0x0031), top: B:27:0x0000 }] */
    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void render(com.fl.saas.K0 r4, com.fl.saas.adx.api.mixNative.NativePrepareInfo r5) {
        /*
            r3 = this;
            com.fl.saas.Q0 r0 = r3.f29993c     // Catch: java.lang.Throwable -> L19
            if (r0 != 0) goto L5
            return
        L5:
            android.view.View r0 = r0.c()     // Catch: java.lang.Throwable -> L19
            if (r0 == 0) goto L1b
            android.view.ViewParent r1 = r0.getParent()     // Catch: java.lang.Throwable -> L19
            boolean r2 = r1 instanceof android.view.ViewGroup     // Catch: java.lang.Throwable -> L19
            if (r2 == 0) goto L1b
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1     // Catch: java.lang.Throwable -> L19
            r1.removeView(r0)     // Catch: java.lang.Throwable -> L19
            goto L3c
        L19:
            r4 = move-exception
            goto L8b
        L1b:
            com.fl.saas.j r1 = r3.f29992b     // Catch: java.lang.Throwable -> L19
            int r1 = r1.h()     // Catch: java.lang.Throwable -> L19
            r2 = 8
            if (r1 != r2) goto L31
            com.fl.saas.Q0 r1 = r3.f29993c     // Catch: java.lang.Throwable -> L19
            com.fl.saas.adx.base.innterNative.ActionView$Type r2 = com.fl.saas.adx.base.innterNative.ActionView.Type.Template     // Catch: java.lang.Throwable -> L19
            android.view.View r2 = r4.bindActionView(r2)     // Catch: java.lang.Throwable -> L19
            r1.b(r2)     // Catch: java.lang.Throwable -> L19
            goto L3c
        L31:
            com.fl.saas.Q0 r1 = r3.f29993c     // Catch: java.lang.Throwable -> L19
            com.fl.saas.adx.base.innterNative.ActionView$Type r2 = com.fl.saas.adx.base.innterNative.ActionView.Type.Template     // Catch: java.lang.Throwable -> L19
            android.view.View r2 = r4.bindActionView(r2)     // Catch: java.lang.Throwable -> L19
            r1.a(r2)     // Catch: java.lang.Throwable -> L19
        L3c:
            android.widget.FrameLayout$LayoutParams r1 = new android.widget.FrameLayout$LayoutParams     // Catch: java.lang.Throwable -> L19
            r2 = -2
            r1.<init>(r2, r2)     // Catch: java.lang.Throwable -> L19
            r2 = 17
            r1.gravity = r2     // Catch: java.lang.Throwable -> L19
            com.fl.saas.adx.api.mixNative.NativeAdView r2 = r3.f29991a     // Catch: java.lang.Throwable -> L19
            r2.addView(r0, r1)     // Catch: java.lang.Throwable -> L19
            com.fl.saas.adx.api.mixNative.NativeAdView r1 = r3.f29991a     // Catch: java.lang.Throwable -> L19
            r4.renderAdContainer(r1, r0)     // Catch: java.lang.Throwable -> L19
            com.fl.saas.adx.api.mixNative.NativePrepareInfo r1 = new com.fl.saas.adx.api.mixNative.NativePrepareInfo     // Catch: java.lang.Throwable -> L19
            r1.<init>()     // Catch: java.lang.Throwable -> L19
            android.app.Activity r2 = r5.getActivity()     // Catch: java.lang.Throwable -> L19
            r1.setActivity(r2)     // Catch: java.lang.Throwable -> L19
            int r2 = r3.f29994d     // Catch: java.lang.Throwable -> L19
            if (r2 != 0) goto L70
            java.util.List r2 = r5.getCtaViewList()     // Catch: java.lang.Throwable -> L19
            if (r2 == 0) goto L70
            java.util.List r2 = r5.getCtaViewList()     // Catch: java.lang.Throwable -> L19
            boolean r2 = r2.isEmpty()     // Catch: java.lang.Throwable -> L19
            if (r2 == 0) goto L77
        L70:
            android.view.View[] r0 = new android.view.View[]{r0}     // Catch: java.lang.Throwable -> L19
            r1.setClickView(r0)     // Catch: java.lang.Throwable -> L19
        L77:
            java.util.List r5 = r5.getCtaViewList()     // Catch: java.lang.Throwable -> L19
            r0 = 0
            android.view.View[] r0 = new android.view.View[r0]     // Catch: java.lang.Throwable -> L19
            java.lang.Object[] r5 = r5.toArray(r0)     // Catch: java.lang.Throwable -> L19
            android.view.View[] r5 = (android.view.View[]) r5     // Catch: java.lang.Throwable -> L19
            r1.setCtaView(r5)     // Catch: java.lang.Throwable -> L19
            r4.prepare(r1)     // Catch: java.lang.Throwable -> L19
            return
        L8b:
            com.fl.saas.adx.util.LogcatUtil.debug(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.L0.render(com.fl.saas.K0, com.fl.saas.adx.api.mixNative.NativePrepareInfo):void");
    }

    @Override // com.fl.saas.adx.base.interfaces.AdChangeCacheData
    public void setCacheData(String str, C1188j c1188j) {
        C1188j c1188j2 = this.f29992b;
        if (c1188j2 != null) {
            c1188j2.f30538r = str;
            c1188j2.f30511i = c1188j.f30511i;
            c1188j2.f30490b0 = c1188j.f30508h;
            c1188j2.f30486a0 = c1188j.f30511i;
            c1188j2.f30494c0 = c1188j.f30514j;
        }
    }

    public L0 a(int i2) {
        this.f29994d = i2;
        return this;
    }
}

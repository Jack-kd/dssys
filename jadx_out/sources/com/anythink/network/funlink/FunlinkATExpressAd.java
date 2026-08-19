package com.anythink.network.funlink;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.fl.saas.adx.api.mixNative.NativeAd;
import com.fl.saas.adx.api.mixNative.NativeAdAppInfo;
import com.fl.saas.adx.api.mixNative.NativeAdView;
import com.fl.saas.adx.api.mixNative.NativeEventListener;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import com.fl.saas.adx.api.mixNative.NativePrepareInfo;
import com.fl.saas.adx.base.exception.FLError;

/* loaded from: classes2.dex */
public class FunlinkATExpressAd extends CustomNativeAd {

    /* renamed from: f, reason: collision with root package name */
    private static final String f9569f = "FunlinkATExpressAd";

    /* renamed from: a, reason: collision with root package name */
    private Context f9570a;

    /* renamed from: b, reason: collision with root package name */
    private NativeAd f9571b;

    /* renamed from: c, reason: collision with root package name */
    private NativeAdView f9572c;

    /* renamed from: d, reason: collision with root package name */
    private View f9573d;

    /* renamed from: e, reason: collision with root package name */
    private NativeMaterial f9574e;

    public class a implements NativeEventListener {
        public a() {
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdClicked(NativeAdView nativeAdView) {
            String unused = FunlinkATExpressAd.f9569f;
            FunlinkATExpressAd.this.notifyAdClicked();
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdClose(NativeAdView nativeAdView) {
            String unused = FunlinkATExpressAd.f9569f;
            FunlinkATExpressAd.this.notifyAdDislikeClick();
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdFailed(NativeAdView nativeAdView, FLError fLError) {
            String unused = FunlinkATExpressAd.f9569f;
            if (fLError != null) {
                fLError.getMsg();
            }
            if (fLError != null) {
                FunlinkATExpressAd.this.notifyAdVideoVideoPlayFail(String.valueOf(fLError.getCode()), fLError.getMsg());
            }
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdImpressed(NativeAdView nativeAdView) {
            String unused = FunlinkATExpressAd.f9569f;
            FunlinkATExpressAd.this.notifyAdImpression();
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdVideoEnd(NativeAdView nativeAdView) {
            String unused = FunlinkATExpressAd.f9569f;
            FunlinkATExpressAd.this.notifyAdVideoEnd();
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdVideoProgress(NativeAdView nativeAdView, long j2) {
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdVideoStart(NativeAdView nativeAdView) {
            String unused = FunlinkATExpressAd.f9569f;
            FunlinkATExpressAd.this.notifyAdVideoStart();
        }
    }

    public FunlinkATExpressAd(Context context, NativeAd nativeAd) {
        this.f9570a = context;
        this.f9571b = nativeAd;
        a(context);
        b();
    }

    private void b() {
        NativeAd nativeAd = this.f9571b;
        if (nativeAd == null) {
            return;
        }
        try {
            nativeAd.setNativeEventListener(new a());
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        NativeAd nativeAd = this.f9571b;
        if (nativeAd != null) {
            try {
                nativeAd.destroy();
            } catch (Throwable th) {
                th.getMessage();
            }
            this.f9571b = null;
        }
        this.f9572c = null;
        this.f9573d = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        try {
            NativeMaterial nativeMaterial = this.f9574e;
            if (nativeMaterial == null) {
                return null;
            }
            View adMediaView = nativeMaterial.getAdMediaView();
            this.f9573d = adMediaView;
            if (adMediaView != null) {
                return adMediaView;
            }
            return null;
        } catch (Exception e2) {
            e2.getMessage();
            return null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public ViewGroup getCustomAdContainer() {
        if (this.f9572c == null) {
            this.f9572c = new NativeAdView(this.f9570a);
        }
        return this.f9572c;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return true;
    }

    private void a(Context context) {
        try {
            NativeMaterial adMaterial = this.f9571b.getAdMaterial();
            this.f9574e = adMaterial;
            NativeAdAppInfo adAppInfo = adMaterial.getAdAppInfo();
            if (adAppInfo != null) {
                try {
                    FunlinkATAdAppInfo funlinkATAdAppInfo = new FunlinkATAdAppInfo(adAppInfo);
                    if (!TextUtils.isEmpty(funlinkATAdAppInfo.getAppName()) || !TextUtils.isEmpty(funlinkATAdAppInfo.getPublisher()) || !TextUtils.isEmpty(funlinkATAdAppInfo.getAppVersion()) || !TextUtils.isEmpty(funlinkATAdAppInfo.getAppPackageName())) {
                        setAdAppInfo(funlinkATAdAppInfo);
                        funlinkATAdAppInfo.getAppName();
                        funlinkATAdAppInfo.getAppVersion();
                    }
                } catch (Throwable th) {
                    th.getMessage();
                }
            }
            NativeAdView nativeAdView = (NativeAdView) getCustomAdContainer();
            this.f9572c = nativeAdView;
            View view = this.f9573d;
            if (view != null) {
                nativeAdView.addView(view, new FrameLayout.LayoutParams(-1, -1));
            }
            this.f9571b.renderAdContainer((NativeAdView) getCustomAdContainer(), null);
            NativePrepareInfo nativePrepareInfo = new NativePrepareInfo();
            nativePrepareInfo.setActivity((Activity) context);
            this.f9571b.prepare(nativePrepareInfo);
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }
}

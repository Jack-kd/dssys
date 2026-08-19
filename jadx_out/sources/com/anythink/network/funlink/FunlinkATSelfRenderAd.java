package com.anythink.network.funlink;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.fl.saas.adx.api.mixNative.NativeAd;
import com.fl.saas.adx.api.mixNative.NativeAdAppInfo;
import com.fl.saas.adx.api.mixNative.NativeAdView;
import com.fl.saas.adx.api.mixNative.NativeEventListener;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import com.fl.saas.adx.api.mixNative.NativePrepareInfo;
import com.fl.saas.adx.base.exception.FLError;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class FunlinkATSelfRenderAd extends CustomNativeAd {

    /* renamed from: e, reason: collision with root package name */
    private static final String f9604e = "FunlinkATSelfRenderAd";

    /* renamed from: a, reason: collision with root package name */
    private NativeAd f9605a;

    /* renamed from: b, reason: collision with root package name */
    private NativeAdView f9606b;

    /* renamed from: c, reason: collision with root package name */
    private View f9607c;

    /* renamed from: d, reason: collision with root package name */
    private final Context f9608d;

    public class a implements NativeEventListener {
        public a() {
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdClicked(NativeAdView nativeAdView) {
            String unused = FunlinkATSelfRenderAd.f9604e;
            FunlinkATSelfRenderAd.this.notifyAdClicked();
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdClose(NativeAdView nativeAdView) {
            String unused = FunlinkATSelfRenderAd.f9604e;
            FunlinkATSelfRenderAd.this.notifyAdDislikeClick();
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdFailed(NativeAdView nativeAdView, FLError fLError) {
            String unused = FunlinkATSelfRenderAd.f9604e;
            if (fLError != null) {
                fLError.getMsg();
            }
            if (fLError != null) {
                FunlinkATSelfRenderAd.this.notifyAdVideoVideoPlayFail(String.valueOf(fLError.getCode()), fLError.getMsg());
            }
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdImpressed(NativeAdView nativeAdView) {
            String unused = FunlinkATSelfRenderAd.f9604e;
            FunlinkATSelfRenderAd.this.notifyAdImpression();
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdVideoEnd(NativeAdView nativeAdView) {
            String unused = FunlinkATSelfRenderAd.f9604e;
            FunlinkATSelfRenderAd.this.notifyAdVideoEnd();
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdVideoProgress(NativeAdView nativeAdView, long j2) {
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
        public void onAdVideoStart(NativeAdView nativeAdView) {
            String unused = FunlinkATSelfRenderAd.f9604e;
            FunlinkATSelfRenderAd.this.notifyAdVideoStart();
        }
    }

    public FunlinkATSelfRenderAd(Context context, NativeAd nativeAd) {
        this.f9608d = context;
        this.f9605a = nativeAd;
        b();
        c();
    }

    private void b() {
        NativeAd nativeAd = this.f9605a;
        if (nativeAd == null) {
            return;
        }
        try {
            NativeMaterial adMaterial = nativeAd.getAdMaterial();
            if (adMaterial == null) {
                return;
            }
            setTitle(adMaterial.getTitle());
            setDescriptionText(adMaterial.getDescription());
            setIconImageUrl(adMaterial.getIconUrl());
            setCallToActionText(adMaterial.getCallToAction());
            setVideoUrl(adMaterial.getVideoUrl());
            if (!TextUtils.isEmpty(adMaterial.getMainImageUrl())) {
                setMainImageUrl(adMaterial.getMainImageUrl());
            } else if (adMaterial.getImageUrlList() != null && !adMaterial.getImageUrlList().isEmpty()) {
                setMainImageUrl(adMaterial.getImageUrlList().get(0));
            }
            if (adMaterial.getAdLogo() != null) {
                setAdChoiceIconUrl(adMaterial.getAdLogoUrl());
            }
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
            if (adMaterial.getAdType() != 3) {
                this.mAdSourceType = "2";
            } else {
                setVideoUrl(adMaterial.getVideoUrl());
                this.mAdSourceType = "1";
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    private void c() {
        NativeAd nativeAd = this.f9605a;
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
    public void clear(View view) {
        a(view);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        NativeAd nativeAd = this.f9605a;
        if (nativeAd != null) {
            try {
                nativeAd.destroy();
            } catch (Throwable th) {
                th.getMessage();
            }
            this.f9605a = null;
        }
        this.f9606b = null;
        this.f9607c = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        View adMediaView;
        NativeAd nativeAd = this.f9605a;
        if (nativeAd != null && this.f9607c == null) {
            try {
                NativeMaterial adMaterial = nativeAd.getAdMaterial();
                if (adMaterial != null && adMaterial.getAdType() == 3 && (adMediaView = adMaterial.getAdMediaView()) != null) {
                    this.f9607c = adMediaView;
                }
            } catch (Exception e2) {
                e2.getMessage();
            }
        }
        return this.f9607c;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public ViewGroup getCustomAdContainer() {
        if (this.f9606b == null) {
            this.f9606b = new NativeAdView(this.f9608d);
        }
        return this.f9606b;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        if (this.f9605a == null || view == null || !(view instanceof ViewGroup)) {
            return;
        }
        try {
            ViewGroup viewGroup = (ViewGroup) view;
            viewGroup.getChildCount();
            viewGroup.getChildAt(0).getClass();
            NativeAdView nativeAdView = (NativeAdView) getCustomAdContainer();
            this.f9606b = nativeAdView;
            View childAt = nativeAdView.getChildAt(0);
            Objects.toString(childAt);
            this.f9605a.renderAdContainer(this.f9606b, childAt);
            Objects.toString(this.f9606b.getParent());
            NativePrepareInfo nativePrepareInfo = new NativePrepareInfo();
            nativePrepareInfo.setActivity((Activity) view.getContext());
            if (aTNativePrepareInfo != null) {
                List<View> clickViewList = aTNativePrepareInfo.getClickViewList();
                if (clickViewList == null || clickViewList.isEmpty()) {
                    nativePrepareInfo.setClickView(view);
                } else {
                    nativePrepareInfo.setClickView((View[]) clickViewList.toArray(new View[0]));
                }
                if (aTNativePrepareInfo.getCtaView() != null) {
                    nativePrepareInfo.setCtaView(aTNativePrepareInfo.getCtaView());
                }
                if (aTNativePrepareInfo.getMainImageView() != null) {
                    nativePrepareInfo.setImageView(aTNativePrepareInfo.getMainImageView());
                }
                if (aTNativePrepareInfo.getCloseView() != null) {
                    nativePrepareInfo.setCloseView(aTNativePrepareInfo.getCloseView());
                }
            } else {
                nativePrepareInfo.setClickView(view);
            }
            this.f9605a.prepare(nativePrepareInfo);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private void a(View view) {
        if (view == null) {
            return;
        }
        try {
            if (!(view instanceof ViewGroup) || view == this.f9607c) {
                view.setOnClickListener(null);
                view.setClickable(false);
            } else {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    a(viewGroup.getChildAt(i2));
                }
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}

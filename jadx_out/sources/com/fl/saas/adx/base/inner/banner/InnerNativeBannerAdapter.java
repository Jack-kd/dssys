package com.fl.saas.adx.base.inner.banner;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.fl.saas.AbstractC1170d;
import com.fl.saas.AbstractC1192k0;
import com.fl.saas.C1188j;
import com.fl.saas.InterfaceC1164b1;
import com.fl.saas.adx.api.AdParams;
import com.fl.saas.adx.api.mixNative.NativeAd;
import com.fl.saas.adx.api.mixNative.NativeAdView;
import com.fl.saas.adx.api.mixNative.NativeEventListener;
import com.fl.saas.adx.api.mixNative.NativeLoadListener;
import com.fl.saas.adx.api.mixNative.NativePrepareInfo;
import com.fl.saas.adx.base.bean.AdInfo;
import com.fl.saas.adx.base.bidding.C2SBiddingECPM;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.inner.InnerNativeAdapter;
import com.fl.saas.adx.base.inner.InnerNativeView;
import com.fl.saas.adx.base.innterNative.ActionView;
import com.fl.saas.adx.base.innterNative.BaseNativeAd;
import com.fl.saas.adx.base.innterNative.NativeStyle;
import com.fl.saas.adx.base.interfaces.AdChangeCacheData;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public abstract class InnerNativeBannerAdapter extends AbstractC1170d implements InnerNativeAdapter, AdChangeCacheData {
    private BannerViewHelper bannerViewHelper;
    private AbstractC1192k0 handler;
    private int height;
    private NativeAd mNativeAd;
    private int width;

    /* renamed from: com.fl.saas.adx.base.inner.banner.InnerNativeBannerAdapter$1, reason: invalid class name */
    public class AnonymousClass1 implements NativeLoadListener {
        public AnonymousClass1() {
        }

        @Override // com.fl.saas.adx.base.interfaces.AdViewListener
        public void onAdFailed(FLError fLError) {
            InnerNativeBannerAdapter.this.disposeError(fLError);
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeLoadListener
        public void onNativeAdLoaded(final NativeAd nativeAd) {
            try {
                InnerNativeBannerAdapter innerNativeBannerAdapter = InnerNativeBannerAdapter.this;
                innerNativeBannerAdapter.setAdSource(innerNativeBannerAdapter.handler.getAdSource());
                InnerNativeBannerAdapter.this.bindC2SBidECPM(new InterfaceC1164b1() { // from class: com.fl.saas.adx.base.inner.banner.c
                    @Override // com.fl.saas.InterfaceC1164b1
                    public final Object a() {
                        return Integer.valueOf(C2SBiddingECPM.getC2SBiddingECPM(nativeAd, InnerNativeBannerAdapter.this.handler));
                    }
                });
                InnerNativeBannerAdapter.this.mNativeAd = nativeAd;
                InnerNativeBannerAdapter.this.render(nativeAd);
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }

    public static /* synthetic */ int h(InnerNativeBannerAdapter innerNativeBannerAdapter) {
        if (innerNativeBannerAdapter.canUseEcpm()) {
            return innerNativeBannerAdapter.getAdSource().g();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void render(NativeAd nativeAd) {
        if (nativeAd instanceof BaseNativeAd) {
            BaseNativeAd baseNativeAd = (BaseNativeAd) nativeAd;
            baseNativeAd.setEcpmMapper(new BaseNativeAd.EcpmMapper() { // from class: com.fl.saas.adx.base.inner.banner.b
                @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd.EcpmMapper
                public final int getECPM() {
                    return InnerNativeBannerAdapter.h(this.f30145a);
                }
            });
            baseNativeAd.setAdInfoMapper(new BaseNativeAd.AdInfoMapper() { // from class: com.fl.saas.adx.base.inner.banner.InnerNativeBannerAdapter.2
                @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd.AdInfoMapper
                public AdInfo getAdInfo() {
                    return AdInfo.create(InnerNativeBannerAdapter.this.getAdSource().f30532p, InnerNativeBannerAdapter.this.getAdSource().f30535q, InnerNativeBannerAdapter.this.getAdSource().f30514j, InnerNativeBannerAdapter.this.getAdSource().f30517k);
                }

                @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd.AdInfoMapper
                public C1188j getSource() {
                    return InnerNativeBannerAdapter.this.getAdSource();
                }
            });
        }
        this.bannerViewHelper = new BannerViewHelper(getContext(), nativeAd.getAdMaterial(), this.width, this.height, new BannerViewEvent() { // from class: com.fl.saas.adx.base.inner.banner.InnerNativeBannerAdapter.3
            @Override // com.fl.saas.adx.base.inner.InnerViewLoaderEvent
            public void onAdFailed(FLError fLError) {
                InnerNativeBannerAdapter.this.disposeError(fLError);
            }

            @Override // com.fl.saas.adx.base.inner.banner.BannerViewEvent
            public void onDismiss() {
                InnerNativeBannerAdapter.this.onClosedEvent();
            }

            @Override // com.fl.saas.adx.base.inner.InnerViewLoaderEvent
            public void onLoaded(InnerNativeView innerNativeView) {
                View viewBindActionView;
                try {
                    NativePrepareInfo nativePrepareInfo = new NativePrepareInfo();
                    nativePrepareInfo.setActivity(InnerNativeBannerAdapter.this.getActivityOrNull());
                    nativePrepareInfo.setClickView(innerNativeView.getClicks());
                    if ((InnerNativeBannerAdapter.this.mNativeAd instanceof ActionView) && (viewBindActionView = ((ActionView) InnerNativeBannerAdapter.this.mNativeAd).bindActionView(ActionView.Type.Banner)) != null && innerNativeView.getSelfView() != null) {
                        FrameLayout.LayoutParams layoutParams = InnerNativeBannerAdapter.this.getAdSource().h() == 5 ? new FrameLayout.LayoutParams(InnerNativeBannerAdapter.this.width, InnerNativeBannerAdapter.this.height) : new FrameLayout.LayoutParams(-2, -2);
                        layoutParams.gravity = 17;
                        innerNativeView.getSelfView().addView(viewBindActionView, layoutParams);
                    }
                    if (InnerNativeBannerAdapter.this.mNativeAd != null) {
                        InnerNativeBannerAdapter.this.mNativeAd.renderAdContainer(innerNativeView.getNativeAdView(), innerNativeView.getSelfView());
                        InnerNativeBannerAdapter.this.mNativeAd.prepare(nativePrepareInfo);
                    }
                    InnerNativeBannerAdapter.this.onLoadedEvent(innerNativeView.getNativeAdView());
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                }
            }
        });
        nativeAd.setNativeEventListener(new NativeEventListener() { // from class: com.fl.saas.adx.base.inner.banner.InnerNativeBannerAdapter.4
            private boolean isReportExposure = false;

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdClicked(NativeAdView nativeAdView) {
                InnerNativeBannerAdapter.this.onClickedEvent();
                if (InnerNativeBannerAdapter.this.bannerViewHelper != null) {
                    InnerNativeBannerAdapter.this.bannerViewHelper.onClicked();
                }
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdClose(NativeAdView nativeAdView) {
                InnerNativeBannerAdapter.this.onClosedEvent();
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdFailed(NativeAdView nativeAdView, FLError fLError) {
                InnerNativeBannerAdapter.this.onAdFailed(fLError);
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdImpressed(NativeAdView nativeAdView) {
                if (this.isReportExposure) {
                    return;
                }
                this.isReportExposure = true;
                InnerNativeBannerAdapter.this.onShowEvent();
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdVideoEnd(NativeAdView nativeAdView) {
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdVideoProgress(NativeAdView nativeAdView, long j2) {
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdVideoStart(NativeAdView nativeAdView) {
            }
        });
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.base.AdapterAPI
    public void destroy() {
        super.destroy();
        if (isCache()) {
            return;
        }
        innerDestroy(this.handler, this.mNativeAd);
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeAdapter
    @Nullable
    public NativeAd getNativeAd() {
        return this.mNativeAd;
    }

    @Override // com.fl.saas.AbstractC1200n
    public void handle(Context context) {
        this.handler = loadNativeHandler();
        this.width = DeviceUtil.dip2px(getWidth());
        this.height = DeviceUtil.dip2px(getHeight());
        this.handler.setContext(getContext()).a(getAppId(), getPosId()).setLinkId(getLinkId()).a(new AdParams.Builder(getKey()).setIsMixNative(false).build()).a(new AnonymousClass1());
        this.handler.a(isHot());
        this.handler.a(NativeStyle.NATIVE);
        this.handler.a(context);
    }

    @Override // com.fl.saas.adx.base.interfaces.AdChangeCacheData
    public void setCacheData(String str, C1188j c1188j) {
        NativeAd nativeAd = this.mNativeAd;
        if (nativeAd instanceof AdChangeCacheData) {
            ((AdChangeCacheData) nativeAd).setCacheData(str, c1188j);
        }
    }
}

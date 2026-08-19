package com.fl.saas.adx.base.inner.banner;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.fl.saas.AbstractC1156a0;
import com.fl.saas.R;
import com.fl.saas.adx.api.mixNative.NativeAdView;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.inner.InnerNativeCustomView;
import com.fl.saas.adx.base.inner.InnerNativeView;
import com.fl.saas.adx.base.inner.banner.customView.BannerSingleImgView;
import com.fl.saas.adx.util.Check;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.FLImageLoader;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;

/* loaded from: classes3.dex */
public class BannerViewHelper implements InnerNativeView {
    private final FrameLayout bannerContainer;
    private final int height;
    private final ImageView mAdLogo;
    private InnerNativeCustomView mBannerView;
    private final Context mContext;
    private final BannerViewEvent mEvent;
    private final NativeMaterial material;
    private NativeAdView nativeAdView;
    private final int width;

    public BannerViewHelper(Context context, NativeMaterial nativeMaterial, int i2, int i3, BannerViewEvent bannerViewEvent) {
        this.mContext = context;
        this.material = nativeMaterial;
        this.width = i2;
        this.height = i3;
        this.mEvent = bannerViewEvent;
        FrameLayout frameLayout = (FrameLayout) ViewHelper.inflate(context, R.layout.fl_adx_banner);
        this.bannerContainer = frameLayout;
        this.mAdLogo = (ImageView) frameLayout.findViewById(R.id.iv_ad_logo);
        frameLayout.findViewById(R.id.iv_close).setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.adx.base.inner.banner.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30144b.mEvent.onDismiss();
            }
        });
        loadView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindMediaView(InnerNativeCustomView innerNativeCustomView, Drawable drawable) {
        try {
            this.mBannerView.setTitle(this.material.getTitle()).setCAT(this.material.getCallToAction()).setDes(this.material.getDescription());
            innerNativeCustomView.setMediaView((this.material.getAdType() != 3 || this.material.getAdMediaView() == null) ? null : this.material.getAdMediaView(), drawable);
            this.bannerContainer.addView(this.mBannerView.getAdView(), 0, ViewHelper.getMatchParent());
            loadAdIcon();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void loadAdIcon() {
        if (this.material.getAdLogo() != null) {
            this.mAdLogo.setImageBitmap(this.material.getAdLogo());
        } else {
            if (TextUtils.isEmpty(this.material.getAdLogoUrl())) {
                return;
            }
            FLImageLoader.getInstance(this.mContext).setEnableDiskCache(true).setEnableMemoryCache(true).loadImage(this.mAdLogo, this.material.getAdLogoUrl());
        }
    }

    private void loadView() {
        View adMediaView = this.material.getAdMediaView();
        String mainImageUrl = !TextUtils.isEmpty(this.material.getMainImageUrl()) ? this.material.getMainImageUrl() : (String) Check.findFirstNonNull(this.material.getImageUrlList());
        if (!TextUtils.isEmpty(mainImageUrl)) {
            this.mBannerView = new BannerSingleImgView(this.mContext, this.width, this.height);
            if (DeviceUtil.filling_timing == 0) {
                this.mEvent.onLoaded(this);
            }
            FLImageLoader.getInstance(this.mContext).loadBitmap(mainImageUrl, new FLImageLoader.OnBitmapLoadListener() { // from class: com.fl.saas.adx.base.inner.banner.BannerViewHelper.1
                @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadListener
                public void onBitmapLoadFailed(String str, String str2) {
                    if (BannerViewHelper.this.mEvent != null) {
                        BannerViewHelper.this.mEvent.onAdFailed(new FLError("素材加载失败"));
                    }
                }

                @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadListener
                public void onBitmapLoaded(String str, Bitmap bitmap, boolean z2) {
                    Drawable drawableA = AbstractC1156a0.a(BannerViewHelper.this.mContext, bitmap);
                    if (drawableA == null || BannerViewHelper.this.mBannerView == null) {
                        if (BannerViewHelper.this.mEvent != null) {
                            BannerViewHelper.this.mEvent.onAdFailed(new FLError("素材加载失败"));
                        }
                    } else {
                        BannerViewHelper bannerViewHelper = BannerViewHelper.this;
                        bannerViewHelper.bindMediaView(bannerViewHelper.mBannerView, drawableA);
                        if (DeviceUtil.filling_timing == 0 || BannerViewHelper.this.mEvent == null) {
                            return;
                        }
                        BannerViewHelper.this.mEvent.onLoaded(BannerViewHelper.this);
                    }
                }
            });
            return;
        }
        if (adMediaView == null) {
            this.mEvent.onAdFailed(FLError.create(ErrorCodeConstant.RENDER_ERROR, "media and imgUrl is empty"));
            return;
        }
        BannerSingleImgView bannerSingleImgView = new BannerSingleImgView(this.mContext, this.width, this.height);
        this.mBannerView = bannerSingleImgView;
        bindMediaView(bannerSingleImgView, null);
        this.mEvent.onLoaded(this);
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public View getCATView() {
        return null;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public View[] getClicks() {
        try {
            return new View[]{this.mBannerView.getAdView()};
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return new View[0];
        }
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public NativeAdView getNativeAdView() {
        try {
            if (this.nativeAdView == null) {
                ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(this.width, this.height);
                NativeAdView nativeAdView = new NativeAdView(this.mContext);
                this.nativeAdView = nativeAdView;
                nativeAdView.setLayoutParams(layoutParams);
                this.nativeAdView.removeAllViews();
                this.nativeAdView.addView(getSelfView(), layoutParams);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        return this.nativeAdView;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public ViewGroup getSelfView() {
        return this.bannerContainer;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public void onClicked() {
    }
}

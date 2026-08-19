package com.fl.saas.adx.base.inner.spread;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.arch.core.util.Function;
import com.fl.saas.AbstractC1156a0;
import com.fl.saas.B;
import com.fl.saas.C1207p0;
import com.fl.saas.R;
import com.fl.saas.adx.api.mixNative.NativeAdView;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import com.fl.saas.adx.base.bean.Size;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.inner.InnerNativeCustomView;
import com.fl.saas.adx.base.inner.InnerNativeViewHelper;
import com.fl.saas.adx.base.inner.spread.SpreadViewHelper;
import com.fl.saas.adx.base.inner.spread.coustomView.NativeSpreadView;
import com.fl.saas.adx.base.inner.spread.coustomView.SpreadHorizontalView;
import com.fl.saas.adx.base.inner.spread.coustomView.SpreadVerticalView;
import com.fl.saas.adx.base.widget.InterceptClickLayout;
import com.fl.saas.adx.base.widget.SkipView;
import com.fl.saas.adx.util.Check;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.FLImageLoader;
import com.fl.saas.adx.util.ViewHelper;

/* loaded from: classes3.dex */
public class SpreadViewHelper implements NativeSpreadView {
    private final View clickArea;
    private final ImageView guideView;
    private final ImageView ivClickArea;
    private final ImageView mAdLogo;
    private final View mClick;
    private final Context mContext;
    private final SpreadViewEvent mEvent;
    private final SkipView mSkip;
    private InnerNativeCustomView mSpreadView;
    private final NativeMaterial material;
    private NativeAdView nativeAdView;
    private final String skipDes;
    private final InterceptClickLayout spreadContainer;

    /* renamed from: com.fl.saas.adx.base.inner.spread.SpreadViewHelper$1, reason: invalid class name */
    public class AnonymousClass1 implements FLImageLoader.OnBitmapLoadListener {
        public AnonymousClass1() {
        }

        public static /* synthetic */ void a(B b3, String str, Bitmap bitmap, boolean z2) {
            if (bitmap == null || b3 == null) {
                return;
            }
            b3.a(bitmap);
        }

        @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadListener
        public void onBitmapLoadFailed(String str, String str2) {
            if (DeviceUtil.filling_timing != 0) {
                SpreadViewHelper.this.mEvent.onAdFailed(new FLError("图片加载失败"));
            }
        }

        @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadListener
        public void onBitmapLoaded(String str, Bitmap bitmap, boolean z2) {
            SpreadViewHelper spreadViewHelper;
            InnerNativeCustomView spreadVerticalView;
            Drawable drawableA = AbstractC1156a0.a(SpreadViewHelper.this.mContext, bitmap);
            if (drawableA == null) {
                if (DeviceUtil.filling_timing != 0) {
                    SpreadViewHelper.this.mEvent.onAdFailed(new FLError("图片加载失败"));
                    return;
                }
                return;
            }
            if (DeviceUtil.filling_timing != 0) {
                if (drawableA.getIntrinsicWidth() > drawableA.getIntrinsicHeight()) {
                    spreadViewHelper = SpreadViewHelper.this;
                    spreadVerticalView = new SpreadHorizontalView(spreadViewHelper.mContext);
                } else {
                    spreadViewHelper = SpreadViewHelper.this;
                    spreadVerticalView = new SpreadVerticalView(spreadViewHelper.mContext);
                }
                spreadViewHelper.mSpreadView = spreadVerticalView;
            }
            final B bLoadIcon = SpreadViewHelper.this.mSpreadView.loadIcon();
            if (bLoadIcon != null && !TextUtils.isEmpty(SpreadViewHelper.this.material.getIconUrl())) {
                FLImageLoader.getInstance(SpreadViewHelper.this.mContext).loadBitmap(SpreadViewHelper.this.material.getIconUrl(), new FLImageLoader.OnBitmapLoadSuccessListener() { // from class: com.fl.saas.adx.base.inner.spread.i
                    @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadSuccessListener
                    public final void onSuccess(String str2, Bitmap bitmap2, boolean z3) {
                        SpreadViewHelper.AnonymousClass1.a(bLoadIcon, str2, bitmap2, z3);
                    }
                });
            }
            SpreadViewHelper spreadViewHelper2 = SpreadViewHelper.this;
            spreadViewHelper2.bindMediaView(spreadViewHelper2.mSpreadView, drawableA);
            if (DeviceUtil.filling_timing != 0) {
                SpreadViewHelper.this.mEvent.onLoaded(SpreadViewHelper.this);
            }
        }
    }

    public SpreadViewHelper(Context context, NativeMaterial nativeMaterial, SpreadViewEvent spreadViewEvent) {
        this.skipDes = TextUtils.equals("zh-CN", DeviceUtil.getSysLanguage()) ? "跳过 " : "Skip ";
        this.mContext = context;
        this.material = nativeMaterial;
        InterceptClickLayout interceptClickLayout = (InterceptClickLayout) ViewHelper.inflate(context, R.layout.fl_adx_spread);
        this.spreadContainer = interceptClickLayout;
        interceptClickLayout.setMatchParent();
        this.mEvent = spreadViewEvent;
        this.mAdLogo = (ImageView) interceptClickLayout.findViewById(R.id.iv_ad_logo);
        this.mSkip = (SkipView) interceptClickLayout.findViewById(R.id.v_skip);
        this.mClick = interceptClickLayout.findViewById(R.id.v_click);
        this.clickArea = interceptClickLayout.findViewById(R.id.yd_saas_click_area);
        this.ivClickArea = (ImageView) interceptClickLayout.findViewById(R.id.iv_click_area);
        this.guideView = (ImageView) interceptClickLayout.findViewById(R.id.yd_saas_click_area_guide);
    }

    public static /* synthetic */ void a(SpreadViewHelper spreadViewHelper) {
        spreadViewHelper.cancelCountdown();
        spreadViewHelper.mEvent.onDismiss();
    }

    private void addAppInfo() {
        TextView textViewCreateAppInfoView = InnerNativeViewHelper.createAppInfoView(this.mContext, this.material);
        if (textViewCreateAppInfoView == null) {
            return;
        }
        textViewCreateAppInfoView.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.parseColor("#4D000000"), Color.parseColor("#00000000")}));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        int iDip2px = DeviceUtil.dip2px(10.0f);
        textViewCreateAppInfoView.setPadding(iDip2px, iDip2px, iDip2px, 0);
        layoutParams.gravity = 48;
        this.spreadContainer.addView(textViewCreateAppInfoView, layoutParams);
        this.spreadContainer.addFilterViews(textViewCreateAppInfoView);
    }

    public static /* synthetic */ String b(SpreadViewHelper spreadViewHelper, Integer num) {
        spreadViewHelper.getClass();
        if (num.intValue() == 0) {
            return spreadViewHelper.skipDes;
        }
        return spreadViewHelper.skipDes + num;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindMediaView(InnerNativeCustomView innerNativeCustomView, Drawable drawable) {
        innerNativeCustomView.setMediaView((this.material.getAdType() != 3 || this.material.getAdMediaView() == null) ? null : this.material.getAdMediaView(), drawable);
        this.spreadContainer.addView(this.mSpreadView.getAdView(), 0, ViewHelper.getMatchParent());
    }

    public static /* synthetic */ boolean c(SpreadViewHelper spreadViewHelper, float f2, float f3) {
        if (spreadViewHelper.clickArea.getVisibility() != 0) {
            return false;
        }
        Rect viewRectOnScreen = ViewHelper.getViewRectOnScreen(spreadViewHelper.clickArea);
        return Math.pow((double) (f2 - ((float) (DeviceUtil.getMobileWidth() / 2))), 2.0d) + Math.pow((double) (f3 - ((float) (viewRectOnScreen.bottom - DeviceUtil.dip2px(28.0f)))), 2.0d) <= Math.pow((double) ((viewRectOnScreen.width() / 2) - DeviceUtil.dip2px(10.0f)), 2.0d);
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
            if (DeviceUtil.filling_timing == 0) {
                Size size = this.material.getSize();
                InnerNativeCustomView spreadVerticalView = (size == null || size.getWidth() <= size.getHeight()) ? new SpreadVerticalView(this.mContext) : new SpreadHorizontalView(this.mContext);
                this.mSpreadView = spreadVerticalView;
                this.mEvent.onLoaded(this);
            }
            FLImageLoader.getInstance(this.mContext).loadBitmap(mainImageUrl, new AnonymousClass1());
            return;
        }
        if (adMediaView == null) {
            this.mEvent.onAdFailed(FLError.create(ErrorCodeConstant.RENDER_ERROR, "media and imgUrl is empty"));
            return;
        }
        SpreadVerticalView spreadVerticalView2 = new SpreadVerticalView(this.mContext);
        this.mSpreadView = spreadVerticalView2;
        bindMediaView(spreadVerticalView2, null);
        this.mEvent.onLoaded(this);
    }

    private void render() {
        this.mSpreadView.setTitle(this.material.getTitle()).setCAT(this.material.getCallToAction()).setDes(this.material.getDescription());
        loadAdIcon();
        this.spreadContainer.addFilterViews(this.mSpreadView.getCATView());
    }

    private void setInterceptClick() {
        this.spreadContainer.setOutIntercept(new InterceptClickLayout.OnIntercept() { // from class: com.fl.saas.adx.base.inner.spread.h
            @Override // com.fl.saas.adx.base.widget.InterceptClickLayout.OnIntercept
            public final boolean isIntercept(float f2, float f3) {
                return SpreadViewHelper.c(this.f30251a, f2, f3);
            }
        });
    }

    private void setInterceptFilter() {
        this.spreadContainer.setFilterPattern(2);
        this.spreadContainer.addFilterViews(this.mSkip);
        this.spreadContainer.addFilterViews(this.mClick);
    }

    private void startGuideAnimation() throws Resources.NotFoundException {
        if (this.clickArea.getVisibility() == 0) {
            this.guideView.startAnimation(AnimationUtils.loadAnimation(this.guideView.getContext(), R.anim.fl_adx_anim_spread_guide));
        }
    }

    @Override // com.fl.saas.adx.base.inner.spread.coustomView.NativeSpreadView
    public void cancelCountdown() {
        this.mSkip.cancel();
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public View getCATView() {
        return (View) C1207p0.a(this.mSpreadView).a((Function) new com.fl.saas.adx.base.inner.interstitial.f()).c(null);
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public View[] getClicks() {
        return new View[]{this.mSpreadView.getAdView(), this.mClick, this.clickArea};
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public NativeAdView getNativeAdView() {
        if (this.nativeAdView == null) {
            NativeAdView nativeAdView = new NativeAdView(this.mContext);
            this.nativeAdView = nativeAdView;
            nativeAdView.removeAllViews();
            this.nativeAdView.addView(getSelfView(), ViewHelper.getMatchParent());
        }
        return this.nativeAdView;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public ViewGroup getSelfView() {
        return this.spreadContainer;
    }

    public void initView() {
        this.mSkip.setOnTick(new Function() { // from class: com.fl.saas.adx.base.inner.spread.e
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return SpreadViewHelper.b(this.f30248a, (Integer) obj);
            }
        }).setFinish(new Runnable() { // from class: com.fl.saas.adx.base.inner.spread.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f30249b.mEvent.onDismiss();
            }
        }).setCancel(new Runnable() { // from class: com.fl.saas.adx.base.inner.spread.g
            @Override // java.lang.Runnable
            public final void run() {
                SpreadViewHelper.a(this.f30250b);
            }
        });
        setInterceptClick();
        loadView();
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public void onClicked() {
        SkipView skipView = this.mSkip;
        if (skipView != null) {
            skipView.onClick();
        }
    }

    @Override // com.fl.saas.adx.base.inner.spread.coustomView.NativeSpreadView
    public void setClickAreaVisibility(View view) {
        if (view != null) {
            this.clickArea.setVisibility(8);
            setInterceptFilter();
            this.spreadContainer.addFilterViews(view);
        } else {
            this.clickArea.setVisibility(0);
            FLImageLoader.getInstance(this.mContext).setEnableDiskCache(true).setEnableMemoryCache(true).loadImage(this.guideView, CommConstant.ImageUrl.FINGER_GUIDE);
            FLImageLoader.getInstance(this.mContext).setEnableDiskCache(true).setEnableMemoryCache(true).loadImage(this.ivClickArea, CommConstant.ImageUrl.SPREAD_CLICK_BG);
            setInterceptFilter();
        }
    }

    @Override // com.fl.saas.adx.base.inner.spread.coustomView.NativeSpreadView
    public void setViewType(boolean z2, boolean z3, int i2) {
        SkipView skipView = this.mSkip;
        if (skipView != null) {
            if (z3) {
                skipView.setValue(1, i2);
            }
            this.mSkip.setShowCountDown(z2);
        }
    }

    @Override // com.fl.saas.adx.base.inner.spread.coustomView.NativeSpreadView
    public void show() {
        render();
        addAppInfo();
        View view = this.mClick;
        if (view != null) {
            view.bringToFront();
        }
        SkipView skipView = this.mSkip;
        if (skipView != null) {
            skipView.bringToFront();
        }
    }

    @Override // com.fl.saas.adx.base.inner.spread.coustomView.NativeSpreadView
    public void startCountdown() throws Resources.NotFoundException {
        this.mSkip.start();
        startGuideAnimation();
    }
}

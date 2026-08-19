package com.fl.saas.adx.base.inner.interstitial;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.arch.core.util.Function;
import androidx.core.util.Pair;
import com.fl.saas.AbstractC1156a0;
import com.fl.saas.B;
import com.fl.saas.C1188j;
import com.fl.saas.C1207p0;
import com.fl.saas.EnumC1210q0;
import com.fl.saas.EnumC1215s;
import com.fl.saas.R;
import com.fl.saas.adx.api.mixNative.NativeAdView;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import com.fl.saas.adx.base.bean.Size;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.inner.InnerNativeAdLogo;
import com.fl.saas.adx.base.inner.InnerNativeCustomView;
import com.fl.saas.adx.base.inner.InnerNativeViewHelper;
import com.fl.saas.adx.base.inner.interstitial.InterstitialViewHelper;
import com.fl.saas.adx.base.inner.interstitial.coustomView.InterstitialEnvelopeView;
import com.fl.saas.adx.base.inner.interstitial.coustomView.InterstitialFullScreenView;
import com.fl.saas.adx.base.inner.interstitial.coustomView.InterstitialHMHView;
import com.fl.saas.adx.base.inner.interstitial.coustomView.InterstitialHMVView;
import com.fl.saas.adx.base.inner.interstitial.coustomView.InterstitialVMHView;
import com.fl.saas.adx.base.inner.interstitial.coustomView.InterstitialVMVView;
import com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView;
import com.fl.saas.adx.base.innterNative.BindActionView;
import com.fl.saas.adx.base.widget.CountDownTextView;
import com.fl.saas.adx.base.widget.InterceptClickLayout;
import com.fl.saas.adx.util.Check;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.FLImageLoader;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class InterstitialViewHelper implements NativeInterstitialView {
    private final FrameLayout adContainer;
    private double alpha;
    private int animalStartTime;
    private int animalTime;
    private int clickType;
    private ImageView closeView;
    private int count;
    private ImageView envelopeCloseView;
    private View envelopeVClose;
    private final FrameLayout fl_app_info;
    private EnumC1210q0 interstitialStyle;
    private boolean isFullScreenInterstitial;
    private boolean isShakeType;
    private boolean isVisible;
    private final ImageView mAdLogo;
    private C1188j mAdxInfo;
    private WeakReference<Context> mContext;
    private CountDownTextView mEnvelopeSkip;
    private InnerNativeCustomView mInterstitialView;
    private boolean mIsAutoClose;
    private final InterceptClickLayout mLayout;
    private final InterstitialViewEvent mLoaderEvent;
    private final NativeMaterial mMaterial;
    private CountDownTextView mSkip;
    private NativeAdView nativeAdView;
    private OnAdCloseListener onAdCloseListener;
    private EnumC1215s pos;
    private int scaleSize;
    private boolean showShake;
    private int speed;
    private View vBottomArea;
    private View vClose;
    private View vTopArea;
    private boolean smallEnvelope = false;
    private boolean isDestroyed = false;

    /* renamed from: com.fl.saas.adx.base.inner.interstitial.InterstitialViewHelper$1, reason: invalid class name */
    public class AnonymousClass1 implements FLImageLoader.OnBitmapLoadListener {
        final /* synthetic */ WeakReference val$selfRef;

        public AnonymousClass1(WeakReference weakReference) {
            this.val$selfRef = weakReference;
        }

        public static /* synthetic */ void a(InterstitialViewHelper interstitialViewHelper, B b3, String str, Bitmap bitmap, boolean z2) {
            if (interstitialViewHelper.isDestroyed) {
                if (bitmap == null || bitmap.isRecycled()) {
                    return;
                }
                bitmap.recycle();
                return;
            }
            if (bitmap == null || b3 == null) {
                return;
            }
            b3.a(bitmap);
        }

        public static /* synthetic */ void b(InterstitialViewHelper interstitialViewHelper, B b3, String str, Bitmap bitmap, boolean z2) {
            if (interstitialViewHelper.isDestroyed) {
                if (bitmap == null || bitmap.isRecycled()) {
                    return;
                }
                bitmap.recycle();
                return;
            }
            if (bitmap == null || b3 == null) {
                return;
            }
            b3.a(bitmap);
        }

        public static /* synthetic */ void c(InterstitialViewHelper interstitialViewHelper, B b3, String str, Bitmap bitmap, boolean z2) {
            if (interstitialViewHelper.isDestroyed) {
                if (bitmap == null || bitmap.isRecycled()) {
                    return;
                }
                bitmap.recycle();
                return;
            }
            if (bitmap == null || b3 == null) {
                return;
            }
            b3.a(bitmap);
        }

        @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadListener
        public void onBitmapLoadFailed(String str, String str2) {
            final InterstitialViewHelper interstitialViewHelper = (InterstitialViewHelper) this.val$selfRef.get();
            if (DeviceUtil.filling_timing != 0) {
                if (interstitialViewHelper == null || interstitialViewHelper.isDestroyed) {
                    return;
                }
                interstitialViewHelper.mLoaderEvent.onAdFailed(new FLError("素材加载失败"));
                return;
            }
            if (interstitialViewHelper == null || interstitialViewHelper.isDestroyed) {
                return;
            }
            final B bLoadIcon = interstitialViewHelper.mInterstitialView.loadIcon();
            if (bLoadIcon != null && !TextUtils.isEmpty(interstitialViewHelper.mMaterial.getIconUrl())) {
                FLImageLoader.getInstance((Context) interstitialViewHelper.mContext.get()).loadBitmap(interstitialViewHelper.mMaterial.getIconUrl(), new FLImageLoader.OnBitmapLoadSuccessListener() { // from class: com.fl.saas.adx.base.inner.interstitial.t
                    @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadSuccessListener
                    public final void onSuccess(String str3, Bitmap bitmap, boolean z2) {
                        InterstitialViewHelper.AnonymousClass1.a(interstitialViewHelper, bLoadIcon, str3, bitmap, z2);
                    }
                });
            }
            interstitialViewHelper.bindMediaView(interstitialViewHelper.mInterstitialView, null);
            if (DeviceUtil.filling_timing != 0) {
                interstitialViewHelper.mLoaderEvent.onLoaded(interstitialViewHelper);
            }
        }

        @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadListener
        public void onBitmapLoaded(String str, Bitmap bitmap, boolean z2) {
            final InterstitialViewHelper interstitialViewHelper = (InterstitialViewHelper) this.val$selfRef.get();
            if (interstitialViewHelper == null || interstitialViewHelper.isDestroyed) {
                if (bitmap == null || bitmap.isRecycled()) {
                    return;
                }
                bitmap.recycle();
                return;
            }
            if (DeviceUtil.filling_timing != 0) {
                interstitialViewHelper.mLoaderEvent.onLoaded(interstitialViewHelper);
            }
            Drawable drawableA = AbstractC1156a0.a((Context) interstitialViewHelper.mContext.get(), bitmap);
            if (drawableA != null) {
                if (DeviceUtil.filling_timing != 0) {
                    interstitialViewHelper.mInterstitialView = interstitialViewHelper.createAdView(drawableA.getIntrinsicWidth() > drawableA.getIntrinsicHeight() ? EnumC1210q0.HORIZONTAL : EnumC1210q0.VERTICAL);
                }
                if (InterstitialViewHelper.this.mInterstitialView == null) {
                    return;
                }
                final B bLoadIcon = InterstitialViewHelper.this.mInterstitialView.loadIcon();
                if (bLoadIcon != null && !TextUtils.isEmpty(interstitialViewHelper.mMaterial.getIconUrl())) {
                    FLImageLoader.getInstance((Context) interstitialViewHelper.mContext.get()).loadBitmap(interstitialViewHelper.mMaterial.getIconUrl(), new FLImageLoader.OnBitmapLoadSuccessListener() { // from class: com.fl.saas.adx.base.inner.interstitial.r
                        @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadSuccessListener
                        public final void onSuccess(String str2, Bitmap bitmap2, boolean z3) {
                            InterstitialViewHelper.AnonymousClass1.b(interstitialViewHelper, bLoadIcon, str2, bitmap2, z3);
                        }
                    });
                }
                interstitialViewHelper.bindMediaView(interstitialViewHelper.mInterstitialView, drawableA);
                return;
            }
            if (DeviceUtil.filling_timing != 0) {
                interstitialViewHelper.mInterstitialView = interstitialViewHelper.createAdView(EnumC1210q0.VERTICAL);
            }
            if (InterstitialViewHelper.this.mInterstitialView == null) {
                return;
            }
            final B bLoadIcon2 = InterstitialViewHelper.this.mInterstitialView.loadIcon();
            if (bLoadIcon2 != null && !TextUtils.isEmpty(interstitialViewHelper.mMaterial.getIconUrl())) {
                FLImageLoader.getInstance((Context) interstitialViewHelper.mContext.get()).loadBitmap(interstitialViewHelper.mMaterial.getIconUrl(), new FLImageLoader.OnBitmapLoadSuccessListener() { // from class: com.fl.saas.adx.base.inner.interstitial.s
                    @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadSuccessListener
                    public final void onSuccess(String str2, Bitmap bitmap2, boolean z3) {
                        InterstitialViewHelper.AnonymousClass1.c(interstitialViewHelper, bLoadIcon2, str2, bitmap2, z3);
                    }
                });
            }
            interstitialViewHelper.bindMediaView(interstitialViewHelper.mInterstitialView, null);
        }
    }

    /* renamed from: com.fl.saas.adx.base.inner.interstitial.InterstitialViewHelper$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$fl$saas$base$bean$CloseButtonPosition;
        static final /* synthetic */ int[] $SwitchMap$com$fl$saas$base$bean$Orientation;

        static {
            int[] iArr = new int[EnumC1210q0.values().length];
            $SwitchMap$com$fl$saas$base$bean$Orientation = iArr;
            try {
                iArr[EnumC1210q0.VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fl$saas$base$bean$Orientation[EnumC1210q0.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[EnumC1215s.values().length];
            $SwitchMap$com$fl$saas$base$bean$CloseButtonPosition = iArr2;
            try {
                iArr2[EnumC1215s.IMAGE_BOTTOM_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$fl$saas$base$bean$CloseButtonPosition[EnumC1215s.IMAGE_TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface OnAdCloseListener {
        void onClose();
    }

    public InterstitialViewHelper(Context context, boolean z2, boolean z3, NativeMaterial nativeMaterial, EnumC1210q0 enumC1210q0, InterstitialViewEvent interstitialViewEvent, C1188j c1188j) {
        this.mContext = new WeakReference<>(context);
        this.isFullScreenInterstitial = z2;
        this.showShake = z3;
        this.mMaterial = nativeMaterial;
        this.interstitialStyle = enumC1210q0;
        this.mLoaderEvent = interstitialViewEvent;
        InterceptClickLayout interceptClickLayout = (InterceptClickLayout) ViewHelper.inflate(context, z2 ? R.layout.fl_adx_fullscreen_interstitial : R.layout.fl_adx_interstitial);
        this.mLayout = interceptClickLayout;
        this.adContainer = (FrameLayout) interceptClickLayout.findViewById(R.id.fl_saas_interstitial_ad_container);
        this.fl_app_info = (FrameLayout) interceptClickLayout.findViewById(R.id.fl_app_info);
        this.mSkip = (CountDownTextView) interceptClickLayout.findViewById(R.id.tv_skip);
        this.mAdLogo = (ImageView) interceptClickLayout.findViewById(R.id.iv_ad_logo);
        this.closeView = (ImageView) interceptClickLayout.findViewById(R.id.iv_close);
        this.vClose = interceptClickLayout.findViewById(R.id.v_close);
        this.vTopArea = interceptClickLayout.findViewById(R.id.v_top);
        this.vBottomArea = interceptClickLayout.findViewById(R.id.v_bottom);
        this.mAdxInfo = c1188j;
        this.vClose.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.adx.base.inner.interstitial.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30160b.closeInterstitial();
            }
        });
    }

    private boolean addAdView() {
        if (this.isDestroyed) {
            return false;
        }
        ViewGroup.LayoutParams layoutParams = this.adContainer.getLayoutParams();
        if (this.isFullScreenInterstitial) {
            layoutParams.width = -1;
            layoutParams.height = -1;
        } else {
            try {
                Pair<Integer, Integer> interstitialSize = getInterstitialSize();
                layoutParams.width = interstitialSize.first.intValue();
                layoutParams.height = (this.interstitialStyle == EnumC1210q0.HORIZONTAL || this.smallEnvelope) ? -2 : interstitialSize.second.intValue();
            } catch (Throwable th) {
                LogcatUtil.debug(th);
                return false;
            }
        }
        this.adContainer.setLayoutParams(layoutParams);
        return true;
    }

    private void addAppInfo() {
        TextView textViewCreateAppInfoView;
        if (this.isDestroyed || this.mMaterial == null || this.mContext.get() == null || (textViewCreateAppInfoView = InnerNativeViewHelper.createAppInfoView(this.mContext.get(), this.mMaterial)) == null) {
            return;
        }
        if (!this.isFullScreenInterstitial) {
            textViewCreateAppInfoView.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.parseColor("#4D000000"), Color.parseColor("#00000000")}));
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        int iDip2px = DeviceUtil.dip2px(10.0f);
        int i2 = iDip2px / 2;
        textViewCreateAppInfoView.setPadding(iDip2px, i2, iDip2px, i2);
        this.fl_app_info.addView(textViewCreateAppInfoView, layoutParams);
        this.mLayout.addFilterViews(textViewCreateAppInfoView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindMediaView(InnerNativeCustomView innerNativeCustomView, Drawable drawable) {
        if (this.isDestroyed || innerNativeCustomView == null) {
            return;
        }
        innerNativeCustomView.setMediaView((this.mMaterial.getAdType() != 3 || this.mMaterial.getAdMediaView() == null) ? null : this.mMaterial.getAdMediaView(), drawable);
        this.adContainer.addView(this.mInterstitialView.getAdView());
    }

    public static /* synthetic */ String c(Integer num) {
        return num + "s";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InnerNativeCustomView createAdView(EnumC1210q0 enumC1210q0) {
        ImageView imageView;
        if (this.isDestroyed || this.mContext.get() == null) {
            return null;
        }
        if (this.isFullScreenInterstitial) {
            return new InterstitialFullScreenView(this.mContext.get(), this.mMaterial);
        }
        EnumC1210q0 enumC1210q02 = this.interstitialStyle;
        if (enumC1210q02 == EnumC1210q0.HORIZONTAL) {
            int i2 = AnonymousClass2.$SwitchMap$com$fl$saas$base$bean$Orientation[enumC1210q0.ordinal()];
            if (i2 == 1) {
                return new InterstitialHMVView(this.mContext.get());
            }
            if (i2 == 2) {
                return new InterstitialHMHView(this.mContext.get());
            }
        } else if (enumC1210q02 == EnumC1210q0.VERTICAL) {
            int i3 = AnonymousClass2.$SwitchMap$com$fl$saas$base$bean$Orientation[enumC1210q0.ordinal()];
            if (i3 == 1) {
                return new InterstitialVMVView(this.mContext.get());
            }
            if (i3 == 2) {
                return new InterstitialVMHView(this.mContext.get());
            }
        } else if (enumC1210q02 == EnumC1210q0.ENVELOPE) {
            this.smallEnvelope = TextUtils.isEmpty(!TextUtils.isEmpty(this.mMaterial.getMainImageUrl()) ? this.mMaterial.getMainImageUrl() : (String) Check.findFirstNonNull(this.mMaterial.getImageUrlList())) || TextUtils.isEmpty(this.mMaterial.getTitle()) || TextUtils.isEmpty(this.mMaterial.getDescription());
            Context context = this.mContext.get();
            boolean z2 = this.smallEnvelope;
            EnumC1215s enumC1215s = this.pos;
            EnumC1215s enumC1215s2 = EnumC1215s.IMAGE_TOP_RIGHT;
            InterstitialEnvelopeView interstitialEnvelopeView = new InterstitialEnvelopeView(context, enumC1210q0, z2, enumC1215s == enumC1215s2, this.animalStartTime, this.animalTime, this.showShake, this.mAdxInfo);
            interstitialEnvelopeView.setSpeed(this.speed);
            interstitialEnvelopeView.setOnlyButton(isOnlyButton());
            EnumC1215s enumC1215s3 = this.pos;
            if (enumC1215s3 != EnumC1215s.FLOAT_TOP_RIGHT && enumC1215s3 != enumC1215s2) {
                this.mEnvelopeSkip = interstitialEnvelopeView.getSkip();
                this.envelopeCloseView = interstitialEnvelopeView.getCloseView();
                this.envelopeVClose = interstitialEnvelopeView.getSpaceView();
                this.mEnvelopeSkip.setVisibility(8);
                this.envelopeCloseView.setVisibility(8);
                this.envelopeVClose.setVisibility(8);
                return interstitialEnvelopeView;
            }
            this.mSkip.setVisibility(8);
            this.closeView.setVisibility(8);
            this.vClose.setVisibility(8);
            this.mEnvelopeSkip = interstitialEnvelopeView.getSkip();
            this.envelopeCloseView = interstitialEnvelopeView.getCloseView();
            this.envelopeVClose = interstitialEnvelopeView.getSpaceView();
            this.mLayout.addFilterViews(this.envelopeCloseView);
            this.mLayout.addFilterViews(this.envelopeVClose);
            View view = this.envelopeVClose;
            if (view != null) {
                view.bringToFront();
            }
            ImageView imageView2 = this.envelopeCloseView;
            if (imageView2 != null) {
                imageView2.bringToFront();
            }
            if (this.isVisible) {
                this.mEnvelopeSkip.setVisibility(0);
                this.envelopeCloseView.setVisibility(4);
                this.envelopeVClose.setVisibility(4);
            } else {
                this.mEnvelopeSkip.setVisibility(4);
                this.envelopeCloseView.setVisibility(0);
                this.envelopeVClose.setVisibility(0);
                this.mEnvelopeSkip.setCount(this.count);
            }
            this.envelopeVClose.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.adx.base.inner.interstitial.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f30217b.closeInterstitial();
                }
            });
            this.mEnvelopeSkip.setOnTick(new Function() { // from class: com.fl.saas.adx.base.inner.interstitial.l
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return InterstitialViewHelper.h((Integer) obj);
                }
            });
            this.mEnvelopeSkip.setFinish(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.m
                @Override // java.lang.Runnable
                public final void run() {
                    InterstitialViewHelper.l(this.f30218b);
                }
            });
            if (this.scaleSize > 0 && (imageView = this.envelopeCloseView) != null) {
                ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                int iDip2px = DeviceUtil.dip2px((this.scaleSize * 20) / 50.0f);
                layoutParams.width = iDip2px;
                layoutParams.height = iDip2px;
                this.envelopeCloseView.setLayoutParams(layoutParams);
            }
            return interstitialEnvelopeView;
        }
        return new InterstitialVMVView(this.mContext.get());
    }

    public static /* synthetic */ void g(InterstitialViewHelper interstitialViewHelper, B b3, String str, Bitmap bitmap, boolean z2) {
        if (interstitialViewHelper.isDestroyed) {
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
            bitmap.recycle();
            return;
        }
        if (bitmap == null || b3 == null) {
            return;
        }
        b3.a(bitmap);
    }

    @NonNull
    public static Pair<Integer, Integer> getInterstitialSize() {
        int iRound;
        int iRound2;
        int mobileWidth = DeviceUtil.getMobileWidth();
        int mobileHeight = DeviceUtil.getMobileHeight();
        if (mobileWidth > mobileHeight) {
            iRound = Math.round(mobileHeight * 0.6f);
            iRound2 = iRound;
        } else {
            iRound = Math.round(mobileWidth * 0.8f);
            iRound2 = Math.round((iRound / 9.0f) * 16.0f);
        }
        return Pair.create(Integer.valueOf(iRound), Integer.valueOf(iRound2));
    }

    public static /* synthetic */ String h(Integer num) {
        return num + "s";
    }

    public static /* synthetic */ void i(WeakReference weakReference, String str, Bitmap bitmap, boolean z2) {
        InterstitialViewHelper interstitialViewHelper = (InterstitialViewHelper) weakReference.get();
        if (interstitialViewHelper == null || interstitialViewHelper.isDestroyed || bitmap == null) {
            return;
        }
        interstitialViewHelper.loadAdIcon(bitmap);
    }

    private boolean isOnlyButton() {
        return this.clickType == 0;
    }

    public static /* synthetic */ void k(InterstitialViewHelper interstitialViewHelper) {
        if (interstitialViewHelper.isDestroyed) {
            return;
        }
        interstitialViewHelper.mSkip.setVisibility(4);
        interstitialViewHelper.closeView.setVisibility(0);
        interstitialViewHelper.vClose.setVisibility(0);
    }

    public static /* synthetic */ void l(InterstitialViewHelper interstitialViewHelper) {
        if (interstitialViewHelper.isDestroyed) {
            return;
        }
        interstitialViewHelper.mEnvelopeSkip.setVisibility(4);
        interstitialViewHelper.envelopeCloseView.setVisibility(0);
        interstitialViewHelper.envelopeVClose.setVisibility(0);
    }

    private void loadAdIcon(Bitmap bitmap) {
        ImageView imageView;
        int i2;
        if (this.isDestroyed || bitmap == null) {
            return;
        }
        InnerNativeCustomView innerNativeCustomView = this.mInterstitialView;
        if (innerNativeCustomView instanceof InnerNativeAdLogo) {
            ((InnerNativeAdLogo) innerNativeCustomView).setAdLogo(bitmap);
            imageView = this.mAdLogo;
            if (imageView == null) {
                return;
            } else {
                i2 = 8;
            }
        } else {
            ImageView imageView2 = this.mAdLogo;
            if (imageView2 == null) {
                return;
            }
            imageView2.setImageBitmap(bitmap);
            imageView = this.mAdLogo;
            i2 = 0;
        }
        imageView.setVisibility(i2);
    }

    private void render() {
        if (this.isDestroyed || this.mInterstitialView == null || this.mMaterial == null || this.mContext.get() == null) {
            return;
        }
        try {
            this.mInterstitialView.setTitle(this.mMaterial.getTitle()).setCAT(TextUtils.isEmpty(this.mMaterial.getCallToAction()) ? "查看详情" : this.mMaterial.getCallToAction()).setDes(this.mMaterial.getDescription());
            if (this.mMaterial.getAdLogo() != null) {
                loadAdIcon(this.mMaterial.getAdLogo());
            } else if (!TextUtils.isEmpty(this.mMaterial.getAdLogoUrl())) {
                final WeakReference weakReference = new WeakReference(this);
                FLImageLoader.getInstance(this.mContext.get()).loadBitmap(this.mMaterial.getAdLogoUrl(), new FLImageLoader.OnBitmapLoadSuccessListener() { // from class: com.fl.saas.adx.base.inner.interstitial.n
                    @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadSuccessListener
                    public final void onSuccess(String str, Bitmap bitmap, boolean z2) {
                        InterstitialViewHelper.i(weakReference, str, bitmap, z2);
                    }
                });
            }
            this.mLayout.addFilterViews(this.adContainer, this.mInterstitialView.getCATView(), this.vTopArea, this.vBottomArea);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public void addActionView(View view) {
        if (this.isDestroyed || view == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.adContainer.addView(view, layoutParams);
        this.mLayout.addFilterViews(view);
        InnerNativeCustomView innerNativeCustomView = this.mInterstitialView;
        if (innerNativeCustomView instanceof BindActionView) {
            ((BindActionView) innerNativeCustomView).bindActionView(view);
        }
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public void click() {
        if (this.isDestroyed) {
            return;
        }
        ImageView imageView = this.closeView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.adx.base.inner.interstitial.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f30214b.closeInterstitial();
                }
            });
        }
        ImageView imageView2 = this.envelopeCloseView;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.adx.base.inner.interstitial.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f30215b.closeInterstitial();
                }
            });
        }
    }

    public void closeInterstitial() {
        InterstitialViewEvent interstitialViewEvent = this.mLoaderEvent;
        if (interstitialViewEvent != null) {
            interstitialViewEvent.onDismiss();
        }
        OnAdCloseListener onAdCloseListener = this.onAdCloseListener;
        if (onAdCloseListener != null) {
            onAdCloseListener.onClose();
        }
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public void destroy() {
        this.isDestroyed = true;
        InnerNativeCustomView innerNativeCustomView = this.mInterstitialView;
        if (innerNativeCustomView != null && (innerNativeCustomView instanceof InterstitialEnvelopeView)) {
            ((InterstitialEnvelopeView) innerNativeCustomView).cancelAnimal();
        }
        CountDownTextView countDownTextView = this.mSkip;
        if (countDownTextView != null) {
            countDownTextView.cancel();
        }
        CountDownTextView countDownTextView2 = this.mEnvelopeSkip;
        if (countDownTextView2 != null) {
            countDownTextView2.cancel();
        }
        closeInterstitial();
        InnerNativeCustomView innerNativeCustomView2 = this.mInterstitialView;
        if (innerNativeCustomView2 != null) {
            if (innerNativeCustomView2.getAdView() != null && this.mInterstitialView.getAdView().getParent() != null) {
                ((ViewGroup) this.mInterstitialView.getAdView().getParent()).removeView(this.mInterstitialView.getAdView());
            }
            this.mInterstitialView = null;
        }
        this.mContext = null;
    }

    public double getAlpha() {
        return this.alpha;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public View getCATView() {
        InnerNativeCustomView innerNativeCustomView;
        if (this.isDestroyed || (innerNativeCustomView = this.mInterstitialView) == null) {
            return null;
        }
        return (View) C1207p0.a(innerNativeCustomView).a((Function) new f()).c(null);
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public View[] getClicks() {
        return this.isDestroyed ? new View[0] : isOnlyButton() ? new View[0] : this.clickType == 2 ? new View[]{this.mLayout, this.adContainer, this.vTopArea, this.vBottomArea} : new View[]{this.adContainer, this.vTopArea, this.vBottomArea};
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public NativeAdView getNativeAdView() {
        if (this.isDestroyed) {
            return null;
        }
        NativeAdView nativeAdView = this.nativeAdView;
        if (nativeAdView == null) {
            NativeAdView nativeAdView2 = new NativeAdView(this.mContext.get());
            this.nativeAdView = nativeAdView2;
            nativeAdView2.addView(getSelfView(), ViewHelper.getMatchParent());
        } else {
            ViewHelper.removeParent(nativeAdView);
        }
        return this.nativeAdView;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public ViewGroup getSelfView() {
        return this.mLayout;
    }

    public void loadView() {
        if (this.isDestroyed || this.mMaterial == null || this.mContext.get() == null) {
            return;
        }
        View adMediaView = this.mMaterial.getAdMediaView();
        String mainImageUrl = !TextUtils.isEmpty(this.mMaterial.getMainImageUrl()) ? this.mMaterial.getMainImageUrl() : (String) Check.findFirstNonNull(this.mMaterial.getImageUrlList());
        if (!TextUtils.isEmpty(mainImageUrl)) {
            FLImageLoader.getInstance(this.mContext.get()).loadBitmap(mainImageUrl, new AnonymousClass1(new WeakReference(this)));
            if (DeviceUtil.filling_timing != 0) {
                return;
            }
            Size size = this.mMaterial.getSize();
            this.mInterstitialView = createAdView((size == null || size.getWidth() <= size.getHeight()) ? EnumC1210q0.VERTICAL : EnumC1210q0.HORIZONTAL);
            if (this.mInterstitialView != null) {
                this.mLoaderEvent.onLoaded(this);
                return;
            }
        } else if (adMediaView != null) {
            InnerNativeCustomView innerNativeCustomViewCreateAdView = createAdView(EnumC1210q0.VERTICAL);
            this.mInterstitialView = innerNativeCustomViewCreateAdView;
            if (innerNativeCustomViewCreateAdView == null) {
                this.mLoaderEvent.onAdFailed(FLError.create(ErrorCodeConstant.RENDER_ERROR, "media and imgUrl is empty"));
                return;
            }
            final B bLoadIcon = innerNativeCustomViewCreateAdView.loadIcon();
            if (bLoadIcon != null && !TextUtils.isEmpty(this.mMaterial.getIconUrl())) {
                FLImageLoader.getInstance(this.mContext.get()).loadBitmap(this.mMaterial.getIconUrl(), new FLImageLoader.OnBitmapLoadSuccessListener() { // from class: com.fl.saas.adx.base.inner.interstitial.o
                    @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadSuccessListener
                    public final void onSuccess(String str, Bitmap bitmap, boolean z2) {
                        InterstitialViewHelper.g(this.f30220a, bLoadIcon, str, bitmap, z2);
                    }
                });
            }
            bindMediaView(this.mInterstitialView, null);
            this.mLoaderEvent.onLoaded(this);
            return;
        }
        this.mLoaderEvent.onAdFailed(FLError.create(ErrorCodeConstant.RENDER_ERROR, "media and imgUrl is empty"));
    }

    public void onActivityStart(Activity activity) {
        InterstitialViewEvent interstitialViewEvent = this.mLoaderEvent;
        if (interstitialViewEvent != null) {
            interstitialViewEvent.onActivityShow(activity);
        }
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeView
    public void onClicked() {
        if (!this.isDestroyed && this.mIsAutoClose) {
            closeInterstitial();
        }
    }

    public void readerAdView() {
        render();
        addAdView();
        addAppInfo();
    }

    public void setAlpha(double d2) {
        this.alpha = d2;
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public NativeInterstitialView setAnimalStartTime(int i2) {
        this.animalStartTime = i2;
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public NativeInterstitialView setAnimalTime(int i2) {
        this.animalTime = i2;
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public NativeInterstitialView setAutoClose(boolean z2) {
        this.mIsAutoClose = z2;
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public NativeInterstitialView setClickType(int i2) {
        this.clickType = i2;
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public NativeInterstitialView setClosePos(@NonNull EnumC1215s enumC1215s) {
        if (!this.isDestroyed) {
            this.pos = enumC1215s;
            if (!this.isFullScreenInterstitial) {
                if (enumC1215s == EnumC1215s.FLOAT_TOP_RIGHT) {
                    this.vTopArea.setVisibility(8);
                    this.vBottomArea.setVisibility(8);
                    return this;
                }
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mSkip.getLayoutParams();
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.closeView.getLayoutParams();
                RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.vClose.getLayoutParams();
                layoutParams.removeRule(7);
                layoutParams.removeRule(6);
                layoutParams2.removeRule(7);
                layoutParams2.removeRule(6);
                layoutParams3.removeRule(7);
                layoutParams3.removeRule(6);
                int iDip2px = DeviceUtil.dip2px(8.0f);
                int i2 = AnonymousClass2.$SwitchMap$com$fl$saas$base$bean$CloseButtonPosition[enumC1215s.ordinal()];
                if (i2 == 1) {
                    this.vTopArea.setVisibility(8);
                    this.vBottomArea.setVisibility(0);
                    layoutParams.addRule(3, R.id.fl_saas_interstitial_ad_container);
                    layoutParams.addRule(14);
                    layoutParams.setMargins(0, iDip2px, 0, 0);
                    this.mSkip.setLayoutParams(layoutParams);
                    layoutParams2.addRule(3, R.id.fl_saas_interstitial_ad_container);
                    layoutParams2.addRule(14);
                    layoutParams2.setMargins(0, iDip2px, 0, 0);
                    this.closeView.setLayoutParams(layoutParams2);
                    layoutParams3.addRule(3, R.id.fl_saas_interstitial_ad_container);
                    layoutParams3.addRule(14);
                    layoutParams3.setMargins(0, iDip2px, 0, 0);
                    this.vClose.setLayoutParams(layoutParams3);
                    return this;
                }
                if (i2 == 2) {
                    if (this.interstitialStyle == EnumC1210q0.ENVELOPE) {
                        this.vTopArea.setVisibility(8);
                    } else {
                        this.vTopArea.setVisibility(0);
                    }
                    this.vBottomArea.setVisibility(8);
                    layoutParams.addRule(2, R.id.fl_saas_interstitial_ad_container);
                    layoutParams.addRule(7, R.id.fl_saas_interstitial_ad_container);
                    layoutParams.setMargins(0, 0, 0, iDip2px);
                    this.mSkip.setLayoutParams(layoutParams);
                    layoutParams2.addRule(2, R.id.fl_saas_interstitial_ad_container);
                    layoutParams2.addRule(7, R.id.fl_saas_interstitial_ad_container);
                    layoutParams2.setMargins(0, 0, 0, iDip2px);
                    this.closeView.setLayoutParams(layoutParams2);
                    layoutParams3.addRule(2, R.id.fl_saas_interstitial_ad_container);
                    layoutParams3.addRule(7, R.id.fl_saas_interstitial_ad_container);
                    layoutParams3.setMargins(0, 0, 0, iDip2px);
                    this.vClose.setLayoutParams(layoutParams3);
                    return this;
                }
            }
        }
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public NativeInterstitialView setCloseViewSize(int i2) {
        if (!this.isDestroyed) {
            this.scaleSize = i2;
            if (i2 > 0) {
                ViewGroup.LayoutParams layoutParams = this.closeView.getLayoutParams();
                int iDip2px = DeviceUtil.dip2px((i2 * 24) / 50.0f);
                layoutParams.width = iDip2px;
                layoutParams.height = iDip2px;
                this.closeView.setLayoutParams(layoutParams);
                return this;
            }
        }
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public NativeInterstitialView setCountDown(boolean z2, int i2) {
        if (this.isDestroyed) {
            return this;
        }
        this.isVisible = z2;
        this.count = i2;
        if (!z2) {
            if (this.mEnvelopeSkip == null) {
                this.mSkip.setVisibility(4);
                this.closeView.setVisibility(0);
                this.vClose.setVisibility(0);
                this.mSkip.setCount(i2);
                return this;
            }
            this.mSkip.setVisibility(8);
            this.closeView.setVisibility(8);
            this.vClose.setVisibility(8);
            this.mEnvelopeSkip.setVisibility(4);
            this.envelopeCloseView.setVisibility(0);
            this.envelopeVClose.setVisibility(0);
            this.mEnvelopeSkip.setCount(i2);
            return this;
        }
        if (this.mEnvelopeSkip == null) {
            this.mSkip.setVisibility(0);
            this.closeView.setVisibility(4);
            this.vClose.setVisibility(4);
            this.mSkip.setCount(i2);
            this.mSkip.setOnTick(new Function() { // from class: com.fl.saas.adx.base.inner.interstitial.i
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return InterstitialViewHelper.c((Integer) obj);
                }
            });
            this.mSkip.setFinish(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.j
                @Override // java.lang.Runnable
                public final void run() {
                    InterstitialViewHelper.k(this.f30216b);
                }
            });
            return this;
        }
        this.mSkip.setVisibility(8);
        this.closeView.setVisibility(8);
        this.vClose.setVisibility(8);
        this.mEnvelopeSkip.setVisibility(0);
        this.envelopeCloseView.setVisibility(4);
        this.envelopeVClose.setVisibility(4);
        this.mEnvelopeSkip.setCount(i2);
        return this;
    }

    public void setOnAdCloseListener(OnAdCloseListener onAdCloseListener) {
        this.onAdCloseListener = onAdCloseListener;
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public NativeInterstitialView setShakeType(boolean z2) {
        this.isShakeType = z2;
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public NativeInterstitialView setSpeed(int i2) {
        this.speed = i2;
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public void setViewType(boolean z2, int i2) {
        ImageView imageView;
        View.OnClickListener onClickListener;
        if (this.isDestroyed) {
            return;
        }
        if (z2) {
            View view = this.vClose;
            if (view != null) {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                int iDip2px = DeviceUtil.dip2px((i2 * 40) / 100.0f);
                layoutParams.width = iDip2px;
                layoutParams.height = iDip2px;
                this.vClose.setLayoutParams(layoutParams);
            }
            View view2 = this.envelopeVClose;
            if (view2 != null) {
                ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                int iDip2px2 = DeviceUtil.dip2px((i2 * 40) / 100.0f);
                layoutParams2.width = iDip2px2;
                layoutParams2.height = iDip2px2;
                this.envelopeVClose.setLayoutParams(layoutParams2);
            }
            if (!isOnlyButton()) {
                return;
            }
            ImageView imageView2 = this.closeView;
            if (imageView2 != null) {
                imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.adx.base.inner.interstitial.p
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        this.f30222b.closeInterstitial();
                    }
                });
            }
            imageView = this.envelopeCloseView;
            if (imageView == null) {
                return;
            } else {
                onClickListener = new View.OnClickListener() { // from class: com.fl.saas.adx.base.inner.interstitial.q
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        this.f30223b.closeInterstitial();
                    }
                };
            }
        } else {
            ImageView imageView3 = this.closeView;
            if (imageView3 != null) {
                imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.adx.base.inner.interstitial.d
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        this.f30212b.closeInterstitial();
                    }
                });
            }
            imageView = this.envelopeCloseView;
            if (imageView == null) {
                return;
            } else {
                onClickListener = new View.OnClickListener() { // from class: com.fl.saas.adx.base.inner.interstitial.e
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        this.f30213b.closeInterstitial();
                    }
                };
            }
        }
        imageView.setOnClickListener(onClickListener);
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView
    public NativeInterstitialView startCountdown() {
        if (!this.isDestroyed) {
            CountDownTextView countDownTextView = this.mSkip;
            if (countDownTextView != null && countDownTextView.getVisibility() == 0) {
                this.mSkip.start();
            }
            CountDownTextView countDownTextView2 = this.mEnvelopeSkip;
            if (countDownTextView2 != null && countDownTextView2.getVisibility() == 0) {
                this.mEnvelopeSkip.start();
            }
        }
        return this;
    }
}

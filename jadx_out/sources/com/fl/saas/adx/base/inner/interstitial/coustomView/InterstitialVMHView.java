package com.fl.saas.adx.base.inner.interstitial.coustomView;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.fl.saas.AbstractC1156a0;
import com.fl.saas.C1172d1;
import com.fl.saas.R;
import com.fl.saas.adx.base.inner.InnerNativeCustomView;
import com.fl.saas.adx.base.inner.interstitial.InterstitialViewHelper;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.FLImageLoader;
import com.fl.saas.adx.util.ViewHelper;

/* loaded from: classes3.dex */
public class InterstitialVMHView implements InnerNativeCustomView {
    private final TextView CATView;
    private final View adView;
    private final ImageView bgView;
    private final TextView desView;
    private final FrameLayout fl_media;
    private final ImageView logoIcon;
    private final Context mContext;
    private final ImageView mainImageView;
    private final FrameLayout mediaContainer;
    private final TextView titleView;

    public InterstitialVMHView(Context context) {
        this.mContext = context;
        View viewInflate = ViewHelper.inflate(context, R.layout.fl_adx_interstitial_v_material_h);
        this.adView = viewInflate;
        this.bgView = (ImageView) viewInflate.findViewById(R.id.yd_saas_view_background);
        FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.fl_media);
        this.fl_media = frameLayout;
        this.logoIcon = (ImageView) viewInflate.findViewById(R.id.iv_yd_saas_custom_interstitia_icon);
        this.mediaContainer = (FrameLayout) viewInflate.findViewById(R.id.yd_saas_custom_interstitial_media_container);
        this.mainImageView = (ImageView) viewInflate.findViewById(R.id.iv_yd_saas_custom_interstitial);
        this.titleView = (TextView) viewInflate.findViewById(R.id.tv_yd_saas_custom_interstitia_title);
        this.desView = (TextView) viewInflate.findViewById(R.id.tv_yd_saas_custom_interstitia_desc);
        this.CATView = (TextView) viewInflate.findViewById(R.id.tv_yd_saas_custom_interstitia_btn);
        FLImageLoader.getInstance(context).loadBitmap(CommConstant.ImageUrl.CUSTOM_SPREAD_BG, new FLImageLoader.OnBitmapLoadSuccessListener() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.y
            @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadSuccessListener
            public final void onSuccess(String str, Bitmap bitmap, boolean z2) {
                InterstitialVMHView.f(this.f30210a, str, bitmap, z2);
            }
        });
        frameLayout.post(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.z
            @Override // java.lang.Runnable
            public final void run() {
                InterstitialVMHView.c(this.f30211b);
            }
        });
    }

    public static /* synthetic */ void a(InterstitialVMHView interstitialVMHView, Bitmap bitmap) {
        interstitialVMHView.bgView.setImageBitmap(bitmap);
        if (interstitialVMHView.mediaContainer.getVisibility() == 0) {
            interstitialVMHView.mainImageView.setImageBitmap(bitmap);
        }
    }

    public static /* synthetic */ void b(final InterstitialVMHView interstitialVMHView, Drawable drawable) {
        interstitialVMHView.getClass();
        final Bitmap bitmapA = AbstractC1156a0.a(interstitialVMHView.mContext, Boolean.TRUE, ((BitmapDrawable) drawable).getBitmap(), 200);
        DeviceUtil.postUI(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.v
            @Override // java.lang.Runnable
            public final void run() {
                InterstitialVMHView.a(this.f30205b, bitmapA);
            }
        });
    }

    public static /* synthetic */ void c(InterstitialVMHView interstitialVMHView) {
        int width = (interstitialVMHView.fl_media.getWidth() * 9) / 16;
        if (width > 0) {
            interstitialVMHView.fl_media.getLayoutParams().height = width;
        }
    }

    public static /* synthetic */ void d(final InterstitialVMHView interstitialVMHView, final Drawable drawable) {
        interstitialVMHView.getClass();
        C1172d1.a().b(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.u
            @Override // java.lang.Runnable
            public final void run() {
                InterstitialVMHView.b(this.f30203b, drawable);
            }
        });
    }

    public static /* synthetic */ void e(InterstitialVMHView interstitialVMHView, Bitmap bitmap) {
        interstitialVMHView.logoIcon.setVisibility(0);
        interstitialVMHView.logoIcon.setImageBitmap(bitmap);
    }

    public static /* synthetic */ void f(InterstitialVMHView interstitialVMHView, String str, Bitmap bitmap, boolean z2) {
        Drawable drawableA = AbstractC1156a0.a(interstitialVMHView.mContext, bitmap);
        if (drawableA != null) {
            interstitialVMHView.adView.setBackground(drawableA);
        }
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public View getAdView() {
        return this.adView;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public View getCATView() {
        return this.CATView;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public com.fl.saas.B loadIcon() {
        return new com.fl.saas.B() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.w
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                InterstitialVMHView.e(this.f30207a, (Bitmap) obj);
            }
        };
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public InnerNativeCustomView setCAT(String str) {
        ViewHelper.setTextView(this.CATView, str);
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public InnerNativeCustomView setDes(String str) {
        ViewHelper.setTextView(this.desView, str);
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public InnerNativeCustomView setMediaView(View view, @Nullable final Drawable drawable) {
        this.bgView.setVisibility(drawable == null ? 8 : 0);
        if (view == null) {
            if (drawable != null) {
                this.mainImageView.setImageDrawable(drawable);
                this.mediaContainer.setVisibility(8);
                this.mainImageView.setVisibility(0);
                if (drawable instanceof BitmapDrawable) {
                    this.bgView.post(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.x
                        @Override // java.lang.Runnable
                        public final void run() {
                            InterstitialVMHView.d(this.f30208b, drawable);
                        }
                    });
                }
            }
            return this;
        }
        this.mediaContainer.removeAllViews();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        if (drawable != null) {
            layoutParams.height = Math.round(((InterstitialViewHelper.getInterstitialSize().first.intValue() - (DeviceUtil.dip2px(15.0f) * 2)) * drawable.getIntrinsicHeight()) / drawable.getIntrinsicWidth());
        } else {
            this.mainImageView.setVisibility(8);
        }
        this.mediaContainer.addView(view, layoutParams);
        this.mediaContainer.setVisibility(0);
        this.mainImageView.setVisibility(8);
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public InnerNativeCustomView setTitle(String str) {
        ViewHelper.setTextView(this.titleView, str);
        return this;
    }
}

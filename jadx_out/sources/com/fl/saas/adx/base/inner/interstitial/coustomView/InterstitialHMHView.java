package com.fl.saas.adx.base.inner.interstitial.coustomView;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.fl.saas.AbstractC1156a0;
import com.fl.saas.C1172d1;
import com.fl.saas.R;
import com.fl.saas.adx.base.inner.InnerNativeCustomView;
import com.fl.saas.adx.base.innterNative.BindActionView;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.ViewHelper;

/* loaded from: classes3.dex */
public class InterstitialHMHView implements InnerNativeCustomView, BindActionView {
    private final TextView CATView;
    private final RelativeLayout adView;
    private final ImageView bgView;
    private final TextView desView;
    private final FrameLayout fl_top;
    private final ImageView mainImageView;
    private final FrameLayout mediaContainer;
    private final TextView titleView;

    public InterstitialHMHView(Context context) {
        RelativeLayout relativeLayout = (RelativeLayout) ViewHelper.inflate(context, R.layout.fl_adx_interstitial_h_material_h);
        this.adView = relativeLayout;
        FrameLayout frameLayout = (FrameLayout) relativeLayout.findViewById(R.id.fl_top);
        this.fl_top = frameLayout;
        this.bgView = (ImageView) relativeLayout.findViewById(R.id.yd_saas_view_background);
        this.mainImageView = (ImageView) relativeLayout.findViewById(R.id.fl_saas_interstitial_img);
        this.mediaContainer = (FrameLayout) relativeLayout.findViewById(R.id.fl_saas_interstitial_media_container);
        this.titleView = (TextView) relativeLayout.findViewById(R.id.tv_fl_saas_interstitial_title);
        this.desView = (TextView) relativeLayout.findViewById(R.id.tv_fl_saas_interstitial_des);
        this.CATView = (TextView) relativeLayout.findViewById(R.id.tv_fl_saas_interstitial_cta);
        frameLayout.post(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.j
            @Override // java.lang.Runnable
            public final void run() {
                InterstitialHMHView.d(this.f30184b);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void a(InterstitialHMHView interstitialHMHView, View view) {
        FrameLayout.LayoutParams layoutParams;
        int width = interstitialHMHView.mainImageView.getWidth();
        int height = interstitialHMHView.mainImageView.getHeight();
        if (width <= 0 || height <= 0) {
            view.setScaleY(0.8f);
            view.setScaleX(0.8f);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 81;
            layoutParams = layoutParams2;
        } else {
            int[] iArrSelfMeasure = ViewHelper.selfMeasure(view);
            int i2 = iArrSelfMeasure[0];
            int i3 = iArrSelfMeasure[1];
            int iDip2px = DeviceUtil.dip2px(10.0f);
            int i4 = width - (iDip2px * 10);
            int iMin = Math.min(height - (iDip2px * 5), Math.round(width / 3.0f));
            if (i4 < i2 || iMin < i3) {
                float f2 = i3;
                view.setPivotY(f2);
                float f3 = i2;
                view.setPivotX(f3 / 2.0f);
                float fMin = Math.min(i4 / f3, iMin / f2);
                view.setScaleY(fMin);
                view.setScaleX(fMin);
            }
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i2, i3);
            layoutParams3.addRule(6);
            layoutParams3.addRule(14);
            layoutParams3.setMargins(0, (height - iDip2px) - i3, 0, 0);
            layoutParams = layoutParams3;
        }
        interstitialHMHView.adView.addView(view, layoutParams);
    }

    public static /* synthetic */ void c(final InterstitialHMHView interstitialHMHView, Drawable drawable) {
        interstitialHMHView.getClass();
        final Bitmap bitmapA = AbstractC1156a0.a(DeviceUtil.getContext(), Boolean.TRUE, ((BitmapDrawable) drawable).getBitmap(), 200);
        if (bitmapA != null) {
            DeviceUtil.postUI(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30185b.bgView.setImageBitmap(bitmapA);
                }
            });
        }
    }

    public static /* synthetic */ void d(InterstitialHMHView interstitialHMHView) {
        int width = (interstitialHMHView.fl_top.getWidth() * 9) / 16;
        if (width > 0) {
            interstitialHMHView.fl_top.getLayoutParams().height = width;
        }
    }

    public static /* synthetic */ void e(final InterstitialHMHView interstitialHMHView, final Drawable drawable) {
        interstitialHMHView.getClass();
        C1172d1.a().b(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.m
            @Override // java.lang.Runnable
            public final void run() {
                InterstitialHMHView.c(this.f30189b, drawable);
            }
        });
    }

    @Override // com.fl.saas.adx.base.innterNative.BindActionView
    public void bindActionView(final View view) {
        if (view == null) {
            return;
        }
        ViewHelper.removeParent(view);
        this.mainImageView.post(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.n
            @Override // java.lang.Runnable
            public final void run() {
                InterstitialHMHView.a(this.f30191b, view);
            }
        });
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
        return null;
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
        ImageView imageView = this.bgView;
        if (imageView != null && (drawable instanceof BitmapDrawable)) {
            imageView.post(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.l
                @Override // java.lang.Runnable
                public final void run() {
                    InterstitialHMHView.e(this.f30187b, drawable);
                }
            });
        }
        if (view != null) {
            this.mediaContainer.removeAllViews();
            this.mediaContainer.addView(view);
            this.mediaContainer.setVisibility(0);
            this.mainImageView.setVisibility(8);
            return this;
        }
        if (drawable != null) {
            this.mainImageView.setImageDrawable(drawable);
            this.mediaContainer.setVisibility(8);
            this.mainImageView.setVisibility(0);
        }
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public InnerNativeCustomView setTitle(String str) {
        ViewHelper.setTextView(this.titleView, str);
        return this;
    }
}

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
import com.fl.saas.adx.base.innterNative.BindActionView;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.ViewHelper;

/* loaded from: classes3.dex */
public class InterstitialHMVView implements InnerNativeCustomView, BindActionView {
    private final TextView CATView;
    private final FrameLayout actionContainer;
    private final View adView;
    private final ImageView bgView;
    private final TextView desView;
    private final ImageView logoIcon;
    private final ImageView mainImageView;
    private final FrameLayout mediaContainer;
    private final TextView titleView;

    public InterstitialHMVView(Context context) {
        View viewInflate = ViewHelper.inflate(context, R.layout.fl_adx_interstitial_h_material_v);
        this.adView = viewInflate;
        FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.fl_saas_interstitial_container);
        this.actionContainer = frameLayout;
        this.bgView = (ImageView) viewInflate.findViewById(R.id.yd_saas_view_background);
        this.mainImageView = (ImageView) viewInflate.findViewById(R.id.fl_saas_interstitial_img);
        this.logoIcon = (ImageView) viewInflate.findViewById(R.id.iv_fl_saas_interstitial_icon);
        this.titleView = (TextView) viewInflate.findViewById(R.id.tv_fl_saas_interstitial_title);
        this.desView = (TextView) viewInflate.findViewById(R.id.tv_fl_saas_interstitial_des);
        this.CATView = (TextView) viewInflate.findViewById(R.id.tv_fl_saas_interstitial_cta);
        this.mediaContainer = (FrameLayout) viewInflate.findViewById(R.id.fl_saas_interstitial_media_container);
        frameLayout.post(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.r
            @Override // java.lang.Runnable
            public final void run() {
                InterstitialHMVView.f(this.f30199b);
            }
        });
    }

    public static /* synthetic */ void a(InterstitialHMVView interstitialHMVView, View view) {
        FrameLayout.LayoutParams layoutParams;
        int width = interstitialHMVView.mainImageView.getWidth();
        int height = interstitialHMVView.mainImageView.getHeight();
        if (width <= 0 || height <= 0) {
            view.setScaleY(0.8f);
            view.setScaleX(0.8f);
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 81;
            layoutParams.setMargins(0, 0, 0, DeviceUtil.dip2px(20.0f));
        } else {
            int[] iArrSelfMeasure = ViewHelper.selfMeasure(view);
            int i2 = iArrSelfMeasure[0];
            int i3 = iArrSelfMeasure[1];
            int iDip2px = DeviceUtil.dip2px(10.0f);
            int iMin = Math.min(width - (iDip2px * 6), Math.round((width * 5) / 8.0f));
            int i4 = height - (iDip2px * 10);
            if (iMin < i2 || i4 < i3) {
                float f2 = i3;
                view.setPivotY(f2);
                float f3 = i2;
                view.setPivotX(f3 / 2.0f);
                float fMin = Math.min(iMin / f3, i4 / f2);
                view.setScaleY(fMin);
                view.setScaleX(fMin);
            }
            layoutParams = new FrameLayout.LayoutParams(i2, i3);
            layoutParams.gravity = 81;
            layoutParams.setMargins(0, 0, 0, iDip2px * 2);
        }
        interstitialHMVView.actionContainer.addView(view, layoutParams);
    }

    public static /* synthetic */ void c(final InterstitialHMVView interstitialHMVView, final Drawable drawable) {
        interstitialHMVView.getClass();
        C1172d1.a().b(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.o
            @Override // java.lang.Runnable
            public final void run() {
                InterstitialHMVView.e(this.f30193b, drawable);
            }
        });
    }

    public static /* synthetic */ void d(InterstitialHMVView interstitialHMVView, Bitmap bitmap) {
        interstitialHMVView.logoIcon.setVisibility(0);
        interstitialHMVView.logoIcon.setImageBitmap(bitmap);
    }

    public static /* synthetic */ void e(final InterstitialHMVView interstitialHMVView, Drawable drawable) {
        interstitialHMVView.getClass();
        final Bitmap bitmapA = AbstractC1156a0.a(DeviceUtil.getContext(), Boolean.TRUE, ((BitmapDrawable) drawable).getBitmap(), 200);
        if (bitmapA != null) {
            DeviceUtil.postUI(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.t
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30201b.bgView.setImageBitmap(bitmapA);
                }
            });
        }
    }

    public static /* synthetic */ void f(InterstitialHMVView interstitialHMVView) {
        int width = (interstitialHMVView.actionContainer.getWidth() * 16) / 9;
        if (width > 0) {
            interstitialHMVView.actionContainer.getLayoutParams().height = width;
        }
    }

    @Override // com.fl.saas.adx.base.innterNative.BindActionView
    public void bindActionView(final View view) {
        if (view == null) {
            return;
        }
        ViewHelper.removeParent(view);
        this.mainImageView.post(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.p
            @Override // java.lang.Runnable
            public final void run() {
                InterstitialHMVView.a(this.f30195b, view);
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
        return new com.fl.saas.B() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.s
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                InterstitialHMVView.d(this.f30200a, (Bitmap) obj);
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
        ImageView imageView = this.bgView;
        if (imageView != null && (drawable instanceof BitmapDrawable)) {
            imageView.post(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.q
                @Override // java.lang.Runnable
                public final void run() {
                    InterstitialHMVView.c(this.f30197b, drawable);
                }
            });
        }
        if (view != null) {
            this.mediaContainer.removeAllViews();
            this.mediaContainer.addView(view);
            this.mainImageView.setVisibility(8);
            this.mediaContainer.setVisibility(0);
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

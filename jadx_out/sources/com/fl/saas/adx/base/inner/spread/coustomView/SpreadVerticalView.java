package com.fl.saas.adx.base.inner.spread.coustomView;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.fl.saas.AbstractC1156a0;
import com.fl.saas.B;
import com.fl.saas.C1172d1;
import com.fl.saas.R;
import com.fl.saas.adx.base.inner.InnerNativeCustomView;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;

/* loaded from: classes3.dex */
public class SpreadVerticalView implements InnerNativeCustomView {
    private final FrameLayout adView;
    private final ImageView bgView;
    private final Context mContext;
    private final ImageView mainImageView;

    public SpreadVerticalView(Context context) {
        this.mContext = context;
        FrameLayout frameLayout = (FrameLayout) ViewHelper.inflate(context, R.layout.fl_adx_spread_material_vertical);
        this.adView = frameLayout;
        this.mainImageView = (ImageView) frameLayout.findViewById(R.id.iv_yd_saas_custom_spread_vertical_img);
        this.bgView = (ImageView) frameLayout.findViewById(R.id.yd_saas_view_background);
    }

    public static /* synthetic */ void a(final SpreadVerticalView spreadVerticalView, Drawable drawable) {
        spreadVerticalView.getClass();
        final Bitmap bitmapA = AbstractC1156a0.a(spreadVerticalView.mContext, Boolean.TRUE, ((BitmapDrawable) drawable).getBitmap(), 200);
        DeviceUtil.postUI(new Runnable() { // from class: com.fl.saas.adx.base.inner.spread.coustomView.e
            @Override // java.lang.Runnable
            public final void run() {
                SpreadVerticalView.c(this.f30240b, bitmapA);
            }
        });
    }

    public static /* synthetic */ void b(final SpreadVerticalView spreadVerticalView, final Drawable drawable) {
        spreadVerticalView.getClass();
        C1172d1.a().b(new Runnable() { // from class: com.fl.saas.adx.base.inner.spread.coustomView.g
            @Override // java.lang.Runnable
            public final void run() {
                SpreadVerticalView.a(this.f30244b, drawable);
            }
        });
    }

    public static /* synthetic */ void c(SpreadVerticalView spreadVerticalView, Bitmap bitmap) {
        ImageView imageView = spreadVerticalView.bgView;
        if (imageView == null || bitmap == null) {
            return;
        }
        imageView.setImageBitmap(bitmap);
        spreadVerticalView.bgView.setVisibility(0);
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public View getAdView() {
        return this.adView;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public View getCATView() {
        return null;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public B loadIcon() {
        return null;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public InnerNativeCustomView setCAT(String str) {
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public InnerNativeCustomView setDes(String str) {
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public InnerNativeCustomView setMediaView(View view, final Drawable drawable) {
        ImageView imageView;
        ImageView imageView2;
        int i2;
        FrameLayout frameLayout = this.adView;
        if (frameLayout != null && (imageView = this.mainImageView) != null) {
            if (view != null) {
                frameLayout.removeAllViews();
                this.adView.addView(view, ViewHelper.getMatchParent());
                imageView2 = this.mainImageView;
                i2 = 8;
            } else if (drawable != null) {
                ImageView.ScaleType scaleType = DeviceUtil.scaleType;
                if (scaleType != null) {
                    imageView.setScaleType(scaleType);
                }
                if (drawable instanceof BitmapDrawable) {
                    try {
                        this.adView.post(new Runnable() { // from class: com.fl.saas.adx.base.inner.spread.coustomView.f
                            @Override // java.lang.Runnable
                            public final void run() {
                                SpreadVerticalView.b(this.f30242b, drawable);
                            }
                        });
                    } catch (Throwable th) {
                        LogcatUtil.debug(th);
                    }
                }
                this.mainImageView.setImageDrawable(drawable);
                imageView2 = this.mainImageView;
                i2 = 0;
            }
            imageView2.setVisibility(i2);
            return this;
        }
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public InnerNativeCustomView setTitle(String str) {
        return this;
    }
}

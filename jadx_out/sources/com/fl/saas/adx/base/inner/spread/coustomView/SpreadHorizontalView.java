package com.fl.saas.adx.base.inner.spread.coustomView;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import com.fl.saas.AbstractC1156a0;
import com.fl.saas.B;
import com.fl.saas.C1172d1;
import com.fl.saas.R;
import com.fl.saas.adx.base.inner.InnerNativeCustomView;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.FLImageLoader;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;

/* loaded from: classes3.dex */
public class SpreadHorizontalView implements InnerNativeCustomView {
    private final TextView CATView;
    private final View adView;
    private final ImageView bgView;
    private final TextView desView;
    private final ImageView iconView;
    private final Context mContext;
    private final ImageView mainImageView;
    private final FrameLayout mediaContainer;
    private final RatingBar reserveView;
    private final TextView titleView;

    public SpreadHorizontalView(Context context) {
        this.mContext = context;
        View viewInflate = ViewHelper.inflate(context, R.layout.fl_adx_spread_material_horizontal);
        this.adView = viewInflate;
        this.titleView = (TextView) viewInflate.findViewById(R.id.tv_yd_saas_custom_spread_title);
        this.desView = (TextView) viewInflate.findViewById(R.id.tv_yd_saas_custom_spread_desc);
        this.CATView = (TextView) viewInflate.findViewById(R.id.tv_yd_saas_custom_spread_btn);
        this.bgView = (ImageView) viewInflate.findViewById(R.id.yd_saas_view_background);
        this.iconView = (ImageView) viewInflate.findViewById(R.id.iv_yd_saas_custom_spread_icon);
        this.mainImageView = (ImageView) viewInflate.findViewById(R.id.iv_yd_saas_custom_spread);
        this.reserveView = (RatingBar) viewInflate.findViewById(R.id.rb_yd_saas_custom_spread_icon_reserve);
        this.mediaContainer = (FrameLayout) viewInflate.findViewById(R.id.yd_saas_custom_spread_media_container);
        FLImageLoader.getInstance(context).loadBitmap(CommConstant.ImageUrl.CUSTOM_SPREAD_BG, new FLImageLoader.OnBitmapLoadSuccessListener() { // from class: com.fl.saas.adx.base.inner.spread.coustomView.SpreadHorizontalView.1
            @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadSuccessListener
            public void onSuccess(String str, Bitmap bitmap, boolean z2) {
                try {
                    Drawable drawableA = AbstractC1156a0.a(SpreadHorizontalView.this.mContext, bitmap);
                    if (drawableA == null || SpreadHorizontalView.this.adView == null) {
                        return;
                    }
                    SpreadHorizontalView.this.adView.setBackground(drawableA);
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                }
            }
        });
    }

    public static /* synthetic */ void a(SpreadHorizontalView spreadHorizontalView, Bitmap bitmap) {
        if (bitmap == null) {
            spreadHorizontalView.iconView.setVisibility(8);
            spreadHorizontalView.reserveView.setVisibility(0);
        } else {
            spreadHorizontalView.iconView.setImageBitmap(bitmap);
            spreadHorizontalView.iconView.setVisibility(0);
            spreadHorizontalView.reserveView.setVisibility(8);
        }
    }

    public static /* synthetic */ void b(final SpreadHorizontalView spreadHorizontalView, final Drawable drawable) {
        spreadHorizontalView.getClass();
        C1172d1.a().b(new Runnable() { // from class: com.fl.saas.adx.base.inner.spread.coustomView.c
            @Override // java.lang.Runnable
            public final void run() {
                SpreadHorizontalView.c(this.f30236b, drawable);
            }
        });
    }

    public static /* synthetic */ void c(final SpreadHorizontalView spreadHorizontalView, Drawable drawable) {
        spreadHorizontalView.getClass();
        final Bitmap bitmapA = AbstractC1156a0.a(spreadHorizontalView.mContext, Boolean.TRUE, ((BitmapDrawable) drawable).getBitmap(), 200);
        DeviceUtil.postUI(new Runnable() { // from class: com.fl.saas.adx.base.inner.spread.coustomView.a
            @Override // java.lang.Runnable
            public final void run() {
                SpreadHorizontalView.d(this.f30233b, bitmapA);
            }
        });
    }

    public static /* synthetic */ void d(SpreadHorizontalView spreadHorizontalView, Bitmap bitmap) {
        spreadHorizontalView.bgView.setImageBitmap(bitmap);
        spreadHorizontalView.bgView.setVisibility(0);
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
    public B loadIcon() {
        return new B() { // from class: com.fl.saas.adx.base.inner.spread.coustomView.b
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                SpreadHorizontalView.a(this.f30235a, (Bitmap) obj);
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
    public InnerNativeCustomView setMediaView(View view, final Drawable drawable) {
        if (view != null) {
            this.mediaContainer.removeAllViews();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            if (drawable != null) {
                layoutParams.height = Math.round(((DeviceUtil.getMobileWidth() - (DeviceUtil.dip2px(25.0f) * 2)) * drawable.getIntrinsicHeight()) / drawable.getIntrinsicWidth());
            }
            this.mediaContainer.addView(view, layoutParams);
            this.mediaContainer.setVisibility(0);
            this.mainImageView.setVisibility(8);
        } else if (drawable != null) {
            this.mainImageView.setImageDrawable(drawable);
            this.mediaContainer.setVisibility(8);
            this.mainImageView.setVisibility(0);
        }
        if (drawable instanceof BitmapDrawable) {
            this.adView.post(new Runnable() { // from class: com.fl.saas.adx.base.inner.spread.coustomView.d
                @Override // java.lang.Runnable
                public final void run() {
                    SpreadHorizontalView.b(this.f30238b, drawable);
                }
            });
        }
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public InnerNativeCustomView setTitle(String str) {
        ViewHelper.setTextView(this.titleView, str);
        return this;
    }
}

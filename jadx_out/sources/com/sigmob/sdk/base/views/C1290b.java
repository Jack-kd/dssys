package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1258h;

/* renamed from: com.sigmob.sdk.base.views.b, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1290b extends RelativeLayout {

    /* renamed from: d, reason: collision with root package name */
    private static float f36904d = 8.0f;

    /* renamed from: e, reason: collision with root package name */
    private static final float f36905e = 1.0f;

    /* renamed from: a, reason: collision with root package name */
    private final int f36906a;

    /* renamed from: b, reason: collision with root package name */
    private final ImageView f36907b;

    /* renamed from: c, reason: collision with root package name */
    private final TextView f36908c;

    public C1290b(Context context, int i2) {
        super(context);
        this.f36906a = i2;
        int iDipsToIntPixels = Dips.dipsToIntPixels(5.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(16.0f, context);
        ImageView imageView = new ImageView(context);
        this.f36907b = imageView;
        imageView.setId(ClientMetadata.generateViewId());
        imageView.setScaleType(ImageView.ScaleType.FIT_START);
        imageView.setAdjustViewBounds(true);
        imageView.setMaxWidth(Dips.dipsToIntPixels(40.0f, context));
        imageView.setMinimumWidth(iDipsToIntPixels2);
        imageView.setBackgroundColor(Color.alpha(0));
        TextView textView = new TextView(context);
        this.f36908c = textView;
        textView.setTextColor(Color.parseColor("#B9B9B9"));
        textView.setTextSize(1, 12.0f);
        textView.setGravity(17);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, iDipsToIntPixels2);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, iDipsToIntPixels2);
        if (i2 == 1) {
            layoutParams2.addRule(9);
            layoutParams2.addRule(12);
            int i3 = iDipsToIntPixels * 2;
            layoutParams2.setMargins(iDipsToIntPixels, 0, 0, i3);
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            layoutParams.setMargins(0, 0, iDipsToIntPixels, i3);
        } else {
            layoutParams2.addRule(1, imageView.getId());
            layoutParams2.addRule(8, imageView.getId());
            layoutParams2.setMargins(0, 0, 0, 0);
            layoutParams.addRule(9);
            layoutParams.addRule(12);
            layoutParams.setMargins(iDipsToIntPixels, 0, 0, 0);
        }
        addView(imageView, layoutParams);
        addView(textView, layoutParams2);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.f36907b;
        if (imageView == null) {
            return;
        }
        imageView.setOnClickListener(onClickListener);
    }

    public void a(Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        this.f36907b.setImageBitmap(bitmap);
    }

    public void b(String str) {
        try {
            this.f36908c.setText(str);
        } catch (Throwable th) {
            SigmobLog.e("showAdText error", th);
        }
    }

    public void a(String str) {
        C1258h.a().getBitmap(str, new ImageManager.BitmapLoadedListener() { // from class: com.sigmob.sdk.base.views.b.1
            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoadFailed() {
            }

            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoaded(Bitmap bitmap) {
                int iDipsToIntPixels = Dips.dipsToIntPixels(3.0f, C1290b.this.getContext());
                if (bitmap == null) {
                    return;
                }
                if (C1290b.this.f36906a != 1 && bitmap.getWidth() > bitmap.getHeight() * 1.5f) {
                    ((RelativeLayout.LayoutParams) C1290b.this.f36907b.getLayoutParams()).setMargins((-iDipsToIntPixels) * (bitmap.getWidth() / bitmap.getHeight()), 0, 0, 0);
                }
                C1290b.this.f36907b.setImageBitmap(bitmap);
            }
        });
    }
}

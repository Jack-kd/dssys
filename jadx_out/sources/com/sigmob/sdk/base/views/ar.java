package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.models.BaseAdUnit;
import java.io.File;

/* loaded from: classes4.dex */
public class ar extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private ImageView f36875a;

    /* renamed from: b, reason: collision with root package name */
    private final int f36876b;

    public ar(Context context) {
        super(context);
        this.f36876b = Dips.dipsToIntPixels(22.0f, context);
        b(Dips.dipsToIntPixels(15.0f, context));
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-16777216);
        gradientDrawable.setStroke(1, -1);
        gradientDrawable.setCornerRadius(r0 / 2);
        gradientDrawable.setAlpha(102);
        setBackground(gradientDrawable);
        setLayoutParams(layoutParams);
    }

    private void b(int i2) {
        this.f36875a = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, i2);
        layoutParams.addRule(13);
        this.f36875a.setImageBitmap(EnumC1306s.CLOSE_NEW.a());
        this.f36875a.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f36875a.setImageAlpha(204);
        addView(this.f36875a, layoutParams);
    }

    private void b(final String str) {
        C1258h.a().getBitmap(str, new ImageManager.BitmapLoadedListener() { // from class: com.sigmob.sdk.base.views.ar.1
            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoadFailed() {
            }

            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoaded(Bitmap bitmap) {
                if (bitmap == null) {
                    SigmobLog.d(String.format("%s returned null bitmap", str));
                } else {
                    ar.this.f36875a.setImageBitmap(bitmap);
                }
            }
        });
    }

    public void a(int i2) {
        this.f36875a.setImageResource(i2);
    }

    public void a(Bitmap bitmap) {
        this.f36875a.setImageBitmap(bitmap);
    }

    public void a(BaseAdUnit baseAdUnit) {
        ImageView imageView;
        EnumC1306s enumC1306s;
        if (baseAdUnit == null || baseAdUnit.getEndcardCloseImage() != 1) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            setBackground(gradientDrawable);
            int i2 = this.f36876b;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, i2);
            layoutParams.addRule(13);
            this.f36875a.setLayoutParams(layoutParams);
            imageView = this.f36875a;
            enumC1306s = EnumC1306s.CLOSE_OLD;
        } else {
            imageView = this.f36875a;
            enumC1306s = EnumC1306s.CLOSE_NEW;
        }
        imageView.setImageBitmap(enumC1306s.a());
    }

    public void a(String str) {
        String lowerCase = str.toLowerCase();
        if (lowerCase.startsWith("http://") || lowerCase.startsWith("https://")) {
            b(str);
        } else if (lowerCase.startsWith("file://")) {
            try {
                this.f36875a.setImageURI(Uri.fromFile(new File(str)));
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
            }
        }
    }
}

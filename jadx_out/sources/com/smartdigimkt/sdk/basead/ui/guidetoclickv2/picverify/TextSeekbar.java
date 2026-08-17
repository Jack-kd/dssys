package com.smartdigimkt.sdk.basead.ui.guidetoclickv2.picverify;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public class TextSeekbar extends SeekBar {

    /* renamed from: a, reason: collision with root package name */
    public Paint f43960a;

    /* renamed from: b, reason: collision with root package name */
    public final String f43961b;

    /* renamed from: c, reason: collision with root package name */
    public Paint f43962c;

    /* renamed from: d, reason: collision with root package name */
    public RectF f43963d;

    /* renamed from: e, reason: collision with root package name */
    public final float f43964e;

    /* renamed from: f, reason: collision with root package name */
    public Paint.FontMetrics f43965f;

    public TextSeekbar(Context context) {
        super(context);
    }

    public void hideAll() {
        this.f43962c = null;
        this.f43960a = null;
        invalidate();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f43963d == null) {
            this.f43963d = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        }
        Paint paint = this.f43962c;
        if (paint != null) {
            RectF rectF = this.f43963d;
            float f2 = this.f43964e;
            canvas.drawRoundRect(rectF, f2, f2, paint);
        }
        Paint paint2 = this.f43960a;
        if (paint2 != null) {
            if (this.f43965f == null) {
                this.f43965f = paint2.getFontMetrics();
            }
            Paint.FontMetrics fontMetrics = this.f43965f;
            canvas.drawText(this.f43961b, getWidth() / 2, (int) (((getHeight() / 2) - (fontMetrics.top / 2.0f)) - (fontMetrics.bottom / 2.0f)), this.f43960a);
        }
        super.onDraw(canvas);
    }

    public TextSeekbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextSeekbar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Paint paint = new Paint();
        this.f43960a = paint;
        paint.setTextAlign(Paint.Align.CENTER);
        this.f43960a.setTextSize(k.a(context, 12.0f));
        this.f43960a.setAntiAlias(true);
        this.f43960a.setColor(Color.parseColor("#FFFFFF"));
        this.f43961b = getContext().getString(k.a(SDKContext.getInstance().d(), "myoffer_g2c_seek_to_click", "string"));
        Paint paint2 = new Paint();
        this.f43962c = paint2;
        paint2.setColor(Color.parseColor("#80000000"));
        this.f43964e = k.a(getContext(), 12.0f);
    }
}

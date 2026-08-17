package com.beizi.ad.internal.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;

/* loaded from: classes2.dex */
public class DrawTextImageView extends AppCompatImageView {

    /* renamed from: a, reason: collision with root package name */
    private String f12016a;

    /* renamed from: b, reason: collision with root package name */
    private float f12017b;

    /* renamed from: c, reason: collision with root package name */
    private float f12018c;

    /* renamed from: d, reason: collision with root package name */
    private float f12019d;

    /* renamed from: e, reason: collision with root package name */
    private int f12020e;

    /* renamed from: f, reason: collision with root package name */
    private int f12021f;

    public DrawTextImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12016a = "";
        this.f12017b = 30.0f;
        this.f12018c = -1000.0f;
        this.f12019d = -1000.0f;
        this.f12020e = 0;
        this.f12021f = 3;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f12016a.equals("")) {
            return;
        }
        Paint paint = new Paint();
        paint.setColor(getResources().getColor(this.f12020e));
        paint.setStrokeWidth(this.f12021f);
        paint.setStyle(Paint.Style.FILL);
        paint.setTextSize(this.f12017b);
        String str = this.f12016a;
        float width = this.f12018c;
        if (width == -1000.0f) {
            width = canvas.getWidth() - (this.f12017b * this.f12016a.length());
        }
        float height = this.f12019d;
        if (height == -1000.0f) {
            height = canvas.getHeight() - 50;
        }
        canvas.drawText(str, width, height, paint);
    }

    public void setDrawLocalXY(float f2, float f3) {
        this.f12018c = f2;
        this.f12019d = f3;
        drawableStateChanged();
    }

    public void setDrawText(String str) {
        this.f12016a = str;
        drawableStateChanged();
    }

    public void setDrawTextColorResourse(int i2) {
        this.f12020e = i2;
        drawableStateChanged();
    }

    public void setDrawTextSize(float f2) {
        this.f12017b = f2;
        drawableStateChanged();
    }

    public void setDrawTextStrokeWidth(int i2) {
        this.f12021f = i2;
        drawableStateChanged();
    }

    public DrawTextImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12016a = "";
        this.f12017b = 30.0f;
        this.f12018c = -1000.0f;
        this.f12019d = -1000.0f;
        this.f12020e = 0;
        this.f12021f = 3;
    }

    public DrawTextImageView(Context context) {
        super(context);
        this.f12016a = "";
        this.f12017b = 30.0f;
        this.f12018c = -1000.0f;
        this.f12019d = -1000.0f;
        this.f12020e = 0;
        this.f12021f = 3;
    }
}

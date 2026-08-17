package com.byazt.ay;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;

@com.byazt.kj.hp(hp = {0, 1, 525, 1771})
/* loaded from: classes2.dex */
public class DislikeView extends View {

    /* renamed from: a, reason: collision with root package name */
    public int f18336a;
    public Paint eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public Paint f18337j;
    public RectF jx;

    /* renamed from: l, reason: collision with root package name */
    public int f18338l;

    /* renamed from: s, reason: collision with root package name */
    public int f18339s;

    /* renamed from: w, reason: collision with root package name */
    public Paint f18340w;

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.jx;
        int i2 = this.f18336a;
        canvas.drawRoundRect(rectF, i2, i2, this.f18340w);
        RectF rectF2 = this.jx;
        int i3 = this.f18336a;
        canvas.drawRoundRect(rectF2, i3, i3, this.f18337j);
        int i4 = this.hp;
        int i5 = this.f18338l;
        canvas.drawLine(i4 * 0.3f, i5 * 0.3f, i4 * 0.7f, i5 * 0.7f, this.eb);
        int i6 = this.hp;
        int i7 = this.f18338l;
        canvas.drawLine(i6 * 0.7f, i7 * 0.3f, i6 * 0.3f, i7 * 0.7f, this.eb);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.hp = i2;
        this.f18338l = i3;
        int i6 = this.f18339s;
        this.jx = new RectF(i6, i6, this.hp - i6, this.f18338l - i6);
    }

    public void setBgColor(int i2) {
        this.f18340w.setStyle(Paint.Style.FILL);
        this.f18340w.setColor(i2);
    }

    public void setDislikeColor(int i2) {
        this.eb.setColor(i2);
    }

    public void setDislikeWidth(int i2) {
        this.eb.setStrokeWidth(i2);
    }

    public void setRadius(int i2) {
        this.f18336a = i2;
    }

    public void setStrokeColor(int i2) {
        this.f18337j.setStyle(Paint.Style.STROKE);
        this.f18337j.setColor(i2);
    }

    public void setStrokeWidth(int i2) {
        this.f18337j.setStrokeWidth(i2);
        this.f18339s = i2;
    }
}

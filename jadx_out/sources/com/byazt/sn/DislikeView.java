package com.byazt.sn;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.byazt.xs.jx;
import com.byazt.zs.j;

@com.byazt.kj.hp(hp = {0, 1, 1211, 1771})
/* loaded from: classes3.dex */
public class DislikeView extends View {

    /* renamed from: a, reason: collision with root package name */
    public Paint f25494a;
    public float eb;
    public j hp;

    /* renamed from: j, reason: collision with root package name */
    public RectF f25495j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f25496l;

    /* renamed from: q, reason: collision with root package name */
    public int f25497q;

    /* renamed from: s, reason: collision with root package name */
    public Paint f25498s;

    /* renamed from: w, reason: collision with root package name */
    public Paint f25499w;

    public DislikeView(Context context) {
        super(context);
        hp();
    }

    private void hp() {
        Paint paint = new Paint();
        this.f25499w = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f25498s = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f25494a = paint3;
        paint3.setAntiAlias(true);
        setBackgroundColor(0);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        j jVar = this.hp;
        if (jVar != null) {
            jVar.w();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.hp;
        if (jVar != null) {
            jVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        setBackgroundColor(0);
        RectF rectF = this.f25495j;
        float f2 = this.eb;
        canvas.drawRoundRect(rectF, f2, f2, this.f25494a);
        RectF rectF2 = this.f25495j;
        float f3 = this.eb;
        canvas.drawRoundRect(rectF2, f3, f3, this.f25499w);
        int i2 = this.f25496l;
        int i3 = this.jx;
        canvas.drawLine(i2 * 0.3f, i3 * 0.3f, i2 * 0.7f, i3 * 0.7f, this.f25498s);
        int i4 = this.f25496l;
        int i5 = this.jx;
        canvas.drawLine(i4 * 0.7f, i5 * 0.3f, i4 * 0.3f, i5 * 0.7f, this.f25498s);
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(i2, i3, i4, i5);
        }
        super.onLayout(z2, i2, i3, i4, i5);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        j jVar = this.hp;
        if (jVar != null) {
            int[] iArrHp = jVar.hp(i2, i3);
            super.onMeasure(iArrHp[0], iArrHp[1]);
        } else {
            super.onMeasure(i2, i3);
        }
        super.onMeasure(i2, i3);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f25496l = i2;
        this.jx = i3;
        int i6 = this.f25497q;
        this.f25495j = new RectF(i6, i6, this.f25496l - i6, this.jx - i6);
        j jVar = this.hp;
        if (jVar != null) {
            jVar.l(i2, i3, i4, i5);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(z2);
        }
    }

    public void setBgColor(int i2) {
        this.f25494a.setStyle(Paint.Style.FILL);
        this.f25494a.setColor(i2);
    }

    public void setDislikeColor(int i2) {
        this.f25498s.setColor(i2);
    }

    public void setDislikeWidth(int i2) {
        this.f25498s.setStrokeWidth(i2);
    }

    public void setRadius(float f2) {
        this.eb = f2;
    }

    public void setStrokeColor(int i2) {
        this.f25499w.setStyle(Paint.Style.STROKE);
        this.f25499w.setColor(i2);
    }

    public void setStrokeWidth(int i2) {
        this.f25499w.setStrokeWidth(i2);
        this.f25497q = i2;
    }

    public void hp(jx jxVar) {
        this.hp = jxVar;
    }
}

package com.byazt.llc;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.view.View;
import com.byazt.kj.hp;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.C;

@hp(hp = {0, 1, 2306, 2307})
/* loaded from: classes3.dex */
public class DoubleColorBallAnimationView extends View {

    /* renamed from: a, reason: collision with root package name */
    public final long f22651a;

    /* renamed from: e, reason: collision with root package name */
    public final PorterDuffXfermode f22652e;
    public int eb;
    public float ec;
    public float gu;
    public final float hp;

    /* renamed from: j, reason: collision with root package name */
    public final float f22653j;
    public boolean jl;
    public final float jx;

    /* renamed from: k, reason: collision with root package name */
    public int f22654k;

    /* renamed from: l, reason: collision with root package name */
    public final float f22655l;

    /* renamed from: n, reason: collision with root package name */
    public float f22656n;

    /* renamed from: q, reason: collision with root package name */
    public Paint f22657q;

    /* renamed from: s, reason: collision with root package name */
    public int f22658s;
    public float sz;

    /* renamed from: u, reason: collision with root package name */
    public long f22659u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f22660v;
    public float vv;

    /* renamed from: w, reason: collision with root package name */
    public final float f22661w;
    public int xs;
    public boolean zy;

    public DoubleColorBallAnimationView(Context context) {
        this(context, null);
    }

    private float hp(float f2) {
        return ((double) f2) < 0.5d ? 2.0f * f2 * f2 : ((f2 * 2.0f) * (2.0f - f2)) - 1.0f;
    }

    private Paint j() {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setStyle(Paint.Style.FILL);
        return paint;
    }

    private void w() {
        this.f22659u = -1L;
        if (this.xs <= 0) {
            setProgressBarInfo(xh.jx(getContext(), 60.0f));
        }
        int iMin = Math.min(getMeasuredHeight(), getMeasuredWidth());
        if (this.xs > iMin && iMin > 0) {
            setProgressBarInfo(iMin);
        }
        if (this.f22657q == null) {
            this.f22657q = j();
        }
        this.zy = true;
    }

    public void jx() {
        this.f22660v = false;
        this.zy = false;
        this.gu = 0.0f;
    }

    public void l() {
        w();
        this.f22660v = true;
        this.jl = true;
        postInvalidate();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        jx();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if ((hp() || !this.jl) && this.zy) {
            if (this.jl) {
                long jNanoTime = System.nanoTime() / C.MICROS_PER_SECOND;
                if (this.f22659u < 0) {
                    this.f22659u = jNanoTime;
                }
                float f2 = (jNanoTime - this.f22659u) / 400.0f;
                this.gu = f2;
                int i2 = (int) f2;
                z = ((this.f22654k + i2) & 1) == 1;
                this.gu = f2 - i2;
            }
            try {
                float fHp = hp(this.gu);
                int i3 = this.xs;
                int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, i3, i3, this.f22657q, 31);
                float f3 = (this.f22656n * fHp) + this.sz;
                float f4 = ((double) fHp) < 0.5d ? fHp * 2.0f : 2.0f - (fHp * 2.0f);
                float f5 = this.ec;
                float f6 = (0.25f * f4 * f5) + f5;
                this.f22657q.setColor(z ? this.f22658s : this.eb);
                canvas.drawCircle(f3, this.vv, f6, this.f22657q);
                float f7 = this.xs - f3;
                float f8 = this.ec;
                float f9 = f8 - ((f4 * 0.375f) * f8);
                this.f22657q.setColor(z ? this.eb : this.f22658s);
                this.f22657q.setXfermode(this.f22652e);
                canvas.drawCircle(f7, this.vv, f9, this.f22657q);
                this.f22657q.setXfermode(null);
                canvas.restoreToCount(iSaveLayer);
            } catch (Throwable unused) {
            }
            postInvalidateDelayed(17L);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int iMin = Math.min(View.MeasureSpec.getSize(i2), View.MeasureSpec.getSize(i3));
        if (this.xs <= iMin || iMin <= 0) {
            return;
        }
        setProgressBarInfo(iMin);
    }

    public void setCycleBias(int i2) {
        this.f22654k = i2;
    }

    public void setProgress(float f2) {
        if (!this.zy) {
            w();
        }
        this.gu = f2;
        this.f22660v = false;
        this.jl = false;
        postInvalidate();
    }

    public void setProgressBarInfo(int i2) {
        if (i2 > 0) {
            this.xs = i2;
            this.vv = i2 / 2.0f;
            float f2 = (i2 >> 1) * 0.32f;
            this.ec = f2;
            float f3 = (i2 * 0.16f) + f2;
            this.sz = f3;
            this.f22656n = i2 - (f3 * 2.0f);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        if (i2 == 0) {
            l();
        } else {
            jx();
        }
    }

    public DoubleColorBallAnimationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public boolean hp() {
        return this.f22660v;
    }

    public DoubleColorBallAnimationView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.hp = 0.25f;
        this.f22655l = 0.375f;
        this.jx = 0.16f;
        this.f22653j = 0.32f;
        this.f22661w = 400.0f;
        this.f22651a = 17L;
        this.eb = -119723;
        this.f22658s = -14289682;
        this.f22652e = new PorterDuffXfermode(PorterDuff.Mode.XOR);
        this.jl = false;
        this.zy = false;
        this.f22654k = 0;
        this.f22660v = false;
        this.f22659u = -1L;
        this.xs = -1;
    }
}

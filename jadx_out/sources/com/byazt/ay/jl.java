package com.byazt.ay;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;

@com.byazt.kj.hp(hp = {0, 1, 525, 19})
/* loaded from: classes2.dex */
public class jl extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public int f18374a;

    /* renamed from: e, reason: collision with root package name */
    public RectF f18375e;
    public int eb;
    public Paint gu;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public float[] f18376j;
    public int[] jx;

    /* renamed from: l, reason: collision with root package name */
    public int f18377l;

    /* renamed from: q, reason: collision with root package name */
    public int f18378q;

    /* renamed from: s, reason: collision with root package name */
    public int f18379s;

    /* renamed from: w, reason: collision with root package name */
    public LinearGradient f18380w;

    @com.byazt.kj.hp(hp = {0, 1, 525, 757})
    public static class hp {

        /* renamed from: j, reason: collision with root package name */
        public float[] f18382j;
        public int[] jx;

        /* renamed from: w, reason: collision with root package name */
        public LinearGradient f18386w;
        public int hp = 2789591;

        /* renamed from: l, reason: collision with root package name */
        public int f18383l = 2789591;

        /* renamed from: a, reason: collision with root package name */
        public int f18381a = 10;
        public int eb = 16;

        /* renamed from: s, reason: collision with root package name */
        public int f18385s = 0;

        /* renamed from: q, reason: collision with root package name */
        public int f18384q = 0;

        public hp hp(int i2) {
            this.hp = i2;
            return this;
        }

        public hp j(int i2) {
            this.f18385s = i2;
            return this;
        }

        public hp jx(int i2) {
            this.f18381a = i2;
            return this;
        }

        public hp l(int i2) {
            this.f18383l = i2;
            return this;
        }

        public hp w(int i2) {
            this.f18384q = i2;
            return this;
        }

        public hp hp(int[] iArr) {
            this.jx = iArr;
            return this;
        }

        public jl hp() {
            return new jl(this.hp, this.jx, this.f18382j, this.f18383l, this.f18386w, this.f18381a, this.eb, this.f18385s, this.f18384q);
        }
    }

    public jl(int i2, int[] iArr, float[] fArr, int i3, LinearGradient linearGradient, int i4, int i5, int i6, int i7) {
        this.hp = i2;
        this.jx = iArr;
        this.f18376j = fArr;
        this.f18377l = i3;
        this.f18380w = linearGradient;
        this.f18374a = i4;
        this.eb = i5;
        this.f18379s = i6;
        this.f18378q = i7;
    }

    private void hp() {
        int[] iArr;
        Paint paint = new Paint();
        this.gu = paint;
        paint.setAntiAlias(true);
        this.gu.setShadowLayer(this.eb, this.f18379s, this.f18378q, this.f18377l);
        if (this.f18375e == null || (iArr = this.jx) == null || iArr.length <= 1) {
            this.gu.setColor(this.hp);
            return;
        }
        float[] fArr = this.f18376j;
        boolean z2 = fArr != null && fArr.length > 0 && fArr.length == iArr.length;
        Paint paint2 = this.gu;
        LinearGradient linearGradient = this.f18380w;
        if (linearGradient == null) {
            RectF rectF = this.f18375e;
            linearGradient = new LinearGradient(rectF.left, 0.0f, rectF.right, 0.0f, this.jx, z2 ? this.f18376j : null, Shader.TileMode.CLAMP);
        }
        paint2.setShader(linearGradient);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f18375e == null) {
            Rect bounds = getBounds();
            int i2 = bounds.left;
            int i3 = this.eb;
            int i4 = this.f18379s;
            int i5 = bounds.top + i3;
            int i6 = this.f18378q;
            this.f18375e = new RectF((i2 + i3) - i4, i5 - i6, (bounds.right - i3) - i4, (bounds.bottom - i3) - i6);
        }
        if (this.gu == null) {
            hp();
        }
        RectF rectF = this.f18375e;
        int i7 = this.f18374a;
        canvas.drawRoundRect(rectF, i7, i7, this.gu);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Paint paint = this.gu;
        if (paint != null) {
            paint.setAlpha(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Paint paint = this.gu;
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
    }

    public static void hp(View view, hp hpVar) {
        if (view == null || hpVar == null) {
            return;
        }
        view.setLayerType(1, null);
        view.setBackground(hpVar.hp());
    }
}

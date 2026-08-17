package com.byazt.jk;

import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.animation.LinearInterpolator;
import androidx.core.view.ViewCompat;

@com.byazt.kj.hp(hp = {0, 1, 1860, 34})
/* loaded from: classes.dex */
public class l extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f21512a;

    /* renamed from: b, reason: collision with root package name */
    public float f21513b;
    public LinearGradient cx;

    /* renamed from: d, reason: collision with root package name */
    public Paint f21514d;
    public ValueAnimator di;
    public LinearGradient dy;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f21515e;
    public final boolean eb;
    public final Path ec;
    public final float gu;
    public final Drawable hp;
    public PorterDuffXfermode hq;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f21516j;
    public final float jl;
    public final float[] jx;

    /* renamed from: k, reason: collision with root package name */
    public final int[] f21517k;
    public boolean ky = true;

    /* renamed from: l, reason: collision with root package name */
    public final float f21518l;
    public LinearGradient lv;

    /* renamed from: n, reason: collision with root package name */
    public final Paint f21519n;
    public LinearGradient ns;
    public LinearGradient nu;

    /* renamed from: o, reason: collision with root package name */
    public boolean f21520o;
    public Bitmap pu;

    /* renamed from: q, reason: collision with root package name */
    public final int f21521q;

    /* renamed from: r, reason: collision with root package name */
    public float f21522r;

    /* renamed from: s, reason: collision with root package name */
    public final int f21523s;
    public final Matrix sz;

    /* renamed from: u, reason: collision with root package name */
    public final RectF f21524u;
    public LinearGradient ud;

    /* renamed from: v, reason: collision with root package name */
    public final float[] f21525v;
    public final RectF vv;

    /* renamed from: w, reason: collision with root package name */
    public final int[] f21526w;
    public Paint wv;
    public final Path xs;
    public final int zy;

    public l(Drawable drawable, int[] iArr, float[] fArr, float f2, float[] fArr2, boolean z2, int i2, int i3, boolean z3, float f3, float f4, int i4, int[] iArr2, float[] fArr3) {
        this.hp = drawable;
        this.f21518l = f2;
        this.jx = fArr2;
        this.f21516j = (iArr == null || fArr == null) ? false : true;
        this.f21526w = iArr;
        this.f21512a = fArr;
        this.eb = z2;
        this.f21523s = i2 <= 0 ? 2200 : i2;
        this.f21521q = i3;
        this.f21515e = z3;
        this.gu = f3;
        this.jl = Math.max(0.0f, Math.min(1.0f, f4));
        this.zy = Math.max(2, Math.min(i4, 50));
        this.f21517k = iArr2;
        this.f21525v = fArr3;
        this.f21524u = new RectF();
        this.xs = new Path();
        this.vv = new RectF();
        this.ec = new Path();
        this.sz = new Matrix();
        Paint paint = new Paint(1);
        this.f21519n = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(f2);
        if (z3) {
            Paint paint2 = new Paint(1);
            this.f21514d = paint2;
            Paint.Style style = Paint.Style.FILL;
            paint2.setStyle(style);
            Paint paint3 = new Paint(1);
            this.wv = paint3;
            paint3.setStyle(style);
            this.hq = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
        }
    }

    private void j() {
        RectF rectF = this.vv;
        float f2 = rectF.left;
        float f3 = rectF.top;
        float f4 = rectF.right;
        float f5 = rectF.bottom;
        this.f21522r = Math.min(this.gu, Math.min(rectF.width(), this.vv.height()) / 2.0f);
        int i2 = this.zy;
        int[] iArr = new int[i2];
        float[] fArr = new float[i2];
        int i3 = 0;
        while (true) {
            int i4 = this.zy;
            if (i3 >= i4) {
                float f6 = this.f21522r + f3;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.ud = new LinearGradient(0.0f, f3, 0.0f, f6, iArr, fArr, tileMode);
                this.nu = new LinearGradient(0.0f, f5, 0.0f, f5 - this.f21522r, iArr, fArr, tileMode);
                this.dy = new LinearGradient(f2, 0.0f, f2 + this.f21522r, 0.0f, iArr, fArr, tileMode);
                this.lv = new LinearGradient(f4, 0.0f, f4 - this.f21522r, 0.0f, iArr, fArr, tileMode);
                this.f21514d.setShader(this.cx);
                return;
            }
            float f7 = i3 / (i4 - 1);
            fArr[i3] = f7;
            if (i3 == i4 - 1) {
                iArr[i3] = 16777215;
            } else {
                double d2 = f7;
                iArr[i3] = (((int) (Math.exp(((-4.0d) * d2) * d2) * 255.0d)) << 24) | ViewCompat.MEASURED_SIZE_MASK;
            }
            i3++;
        }
    }

    private void w() {
        l();
        this.f21520o = false;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, this.f21513b);
        this.di = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f21523s);
        this.di.setInterpolator(new LinearInterpolator());
        int i2 = this.f21521q;
        if (i2 == -1) {
            this.di.setRepeatCount(-1);
        } else {
            this.di.setRepeatCount(Math.max(0, i2 - 1));
        }
        this.di.setRepeatMode(1);
        this.di.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.jk.l.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                l.this.sz.setTranslate(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
                if (l.this.ns != null) {
                    l.this.ns.setLocalMatrix(l.this.sz);
                }
                if (l.this.cx != null) {
                    l.this.cx.setLocalMatrix(l.this.sz);
                }
                l.this.invalidateSelf();
            }
        });
        this.di.start();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.hp.draw(canvas);
        if (this.f21515e && this.cx != null) {
            hp(canvas);
        }
        if (!this.f21516j || this.ns == null) {
            return;
        }
        canvas.drawPath(this.xs, this.f21519n);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.hp.setBounds(rect);
        float f2 = this.f21518l / 2.0f;
        this.f21524u.set(rect.left + f2, rect.top + f2, rect.right - f2, rect.bottom - f2);
        this.xs.reset();
        float[] fArr = this.jx;
        if (fArr != null) {
            this.xs.addRoundRect(this.f21524u, fArr, Path.Direction.CW);
        } else {
            this.xs.addRect(this.f21524u, Path.Direction.CW);
        }
        this.vv.set(rect.left, rect.top, rect.right, rect.bottom);
        this.ec.reset();
        float[] fArr2 = this.jx;
        if (fArr2 != null) {
            this.ec.addRoundRect(this.vv, fArr2, Path.Direction.CW);
        } else {
            this.ec.addRect(this.vv, Path.Direction.CW);
        }
        this.f21513b = this.f21524u.width();
        if (this.f21516j) {
            this.ns = new LinearGradient(0.0f, 0.0f, this.f21513b, 0.0f, this.f21526w, this.f21512a, Shader.TileMode.REPEAT);
            this.sz.reset();
            this.f21519n.setShader(this.ns);
        }
        if (this.f21515e) {
            this.cx = new LinearGradient(0.0f, 0.0f, this.f21513b, 0.0f, this.f21517k, this.f21525v, Shader.TileMode.REPEAT);
            j();
            this.ky = true;
        }
        if (this.f21520o) {
            w();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.hp.setAlpha(i2);
        this.f21519n.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.hp.setColorFilter(colorFilter);
    }

    private void hp(Canvas canvas) {
        l lVar;
        Bitmap bitmap;
        RectF rectF = this.vv;
        float f2 = rectF.left;
        float f3 = rectF.top;
        float f4 = rectF.right;
        float f5 = rectF.bottom;
        float f6 = this.f21522r;
        int i2 = (int) (f4 - f2);
        int i3 = (int) (f5 - f3);
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        if (this.eb) {
            canvas.save();
            canvas.clipPath(this.ec);
            canvas.saveLayer(f2, f3, f4, f5, null);
            hp(canvas, f2, f3, f4, f5, f6);
            this.f21514d.setAlpha((int) (this.jl * 255.0f));
            this.f21514d.setXfermode(this.hq);
            canvas.drawRect(f2, f3, f4, f5, this.f21514d);
            this.f21514d.setXfermode(null);
            canvas.restore();
            canvas.restore();
            return;
        }
        if (this.ky || (bitmap = this.pu) == null || bitmap.getWidth() < i2 || this.pu.getHeight() < i3) {
            Bitmap bitmap2 = this.pu;
            if (bitmap2 != null) {
                bitmap2.recycle();
            }
            this.pu = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(this.pu);
            canvas2.translate(-f2, -f3);
            canvas2.save();
            canvas2.clipPath(this.ec);
            canvas2.saveLayer(f2, f3, f4, f5, null);
            hp(canvas2, f2, f3, f4, f5, f6);
            lVar = this;
            f2 = f2;
            f3 = f3;
            lVar.f21514d.setAlpha((int) (lVar.jl * 255.0f));
            lVar.f21514d.setXfermode(lVar.hq);
            canvas2.drawRect(f2, f3, f4, f5, lVar.f21514d);
            lVar.f21514d.setXfermode(null);
            canvas2.restore();
            canvas2.restore();
            lVar.ky = false;
        } else {
            lVar = this;
        }
        canvas.drawBitmap(lVar.pu, f2, f3, (Paint) null);
    }

    public boolean jx() {
        return this.eb;
    }

    public void l() {
        this.f21520o = false;
        ValueAnimator valueAnimator = this.di;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.di = null;
        }
    }

    private void hp(Canvas canvas, float f2, float f3, float f4, float f5, float f6) {
        this.wv.setShader(this.ud);
        canvas.drawRect(f2, f3, f4, f3 + f6, this.wv);
        this.wv.setShader(this.nu);
        canvas.drawRect(f2, f5 - f6, f4, f5, this.wv);
        this.wv.setShader(this.dy);
        canvas.drawRect(f2, f3, f2 + f6, f5, this.wv);
        this.wv.setShader(this.lv);
        canvas.drawRect(f4 - f6, f3, f4, f5, this.wv);
    }

    public void hp() {
        if (this.eb) {
            this.f21520o = true;
            if (this.f21513b > 0.0f) {
                if (this.ns == null && this.cx == null) {
                    return;
                }
                w();
            }
        }
    }
}

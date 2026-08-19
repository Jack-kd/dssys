package com.byazt.us;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Choreographer;
import com.byazt.us.l;

@com.byazt.kj.hp(hp = {0, 1, 226, 28})
/* loaded from: classes3.dex */
public final class hp extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public boolean f26363a;
    public final w hp;
    public final Paint jx;

    /* renamed from: l, reason: collision with root package name */
    public final l.j[] f26365l;

    /* renamed from: w, reason: collision with root package name */
    public Choreographer f26366w;

    /* renamed from: j, reason: collision with root package name */
    public final Path f26364j = new Path();
    public final Choreographer.FrameCallback eb = new Choreographer.FrameCallback() { // from class: com.byazt.us.hp.1
        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j2) {
            if (hp.this.f26363a) {
                hp.this.invalidateSelf();
                if (!hp.this.f26363a || hp.this.f26366w == null) {
                    return;
                }
                hp.this.f26366w.postFrameCallback(this);
            }
        }
    };

    public hp(w wVar) {
        this.hp = wVar;
        this.f26365l = wVar.jx();
        Paint paint = new Paint(1);
        this.jx = paint;
        paint.setStyle(Paint.Style.FILL);
        if (wVar.l().hp().f26398a == 1) {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.ADD));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        a aVarHp;
        int i2;
        Rect bounds = getBounds();
        if (bounds.width() <= 0 || bounds.height() <= 0 || (i2 = (aVarHp = this.hp.hp()).hp) <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(bounds.left, bounds.top);
        try {
            hp(canvas, aVarHp, i2);
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.hp.hp(rect.width(), rect.height());
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.jx.setColorFilter(colorFilter);
    }

    public void hp() {
        if (this.f26363a) {
            return;
        }
        this.f26363a = true;
        try {
            Choreographer choreographer = Choreographer.getInstance();
            this.f26366w = choreographer;
            choreographer.postFrameCallback(this.eb);
        } catch (Throwable unused) {
            this.f26363a = false;
        }
    }

    public void l() {
        this.f26363a = false;
        Choreographer choreographer = this.f26366w;
        if (choreographer != null) {
            choreographer.removeFrameCallback(this.eb);
            this.f26366w = null;
        }
    }

    private void hp(Canvas canvas, a aVar, int i2) {
        l.hp hpVar;
        int i3;
        Canvas canvas2 = canvas;
        int i4 = i2;
        int[] iArrHp = hp(aVar, i4);
        float[] fArr = aVar.jx;
        float[] fArr2 = aVar.f26358j;
        float[] fArr3 = aVar.f26362w;
        float[] fArr4 = aVar.f26357a;
        int[] iArr = aVar.f26361s;
        l.j[] jVarArr = this.f26365l;
        int i5 = 0;
        while (i5 < i4) {
            int i6 = iArrHp[i5];
            int i7 = iArr[i6];
            if (i7 >= 0 && i7 < jVarArr.length && (hpVar = jVarArr[i7].jl) != null) {
                float f2 = fArr3[i6];
                float f3 = hpVar.jx * f2;
                float f4 = hpVar.f26388j * f2;
                if (f3 > 0.0f && f4 > 0.0f && (i3 = (int) ((fArr4[i6] * 255.0f) + 0.5f)) > 0) {
                    if (i3 > 255) {
                        i3 = 255;
                    }
                    this.jx.setColor(hpVar.f26390w);
                    this.jx.setAlpha(i3);
                    float f5 = fArr[i6];
                    float f6 = fArr2[i6];
                    int i8 = hpVar.f26389l;
                    if (i8 == 1) {
                        float f7 = f3 / 2.0f;
                        float f8 = f4 / 2.0f;
                        canvas2.drawRect(f5 - f7, f6 - f8, f7 + f5, f6 + f8, this.jx);
                    } else if (i8 != 2) {
                        canvas2.drawCircle(f5, f6, Math.min(f3, f4) / 2.0f, this.jx);
                    } else {
                        hp(canvas2, f5, f6, Math.min(f3, f4) / 2.0f);
                    }
                }
            }
            i5++;
            canvas2 = canvas;
            i4 = i2;
        }
    }

    private int[] hp(a aVar, int i2) {
        int[] iArr = aVar.f26360q;
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i3] = i3;
        }
        int i4 = aVar.f26359l;
        if (i4 != 0 && i4 != 1 && i2 > 1) {
            hp(iArr, aVar.eb, i2, i4 == 4);
        }
        return iArr;
    }

    private static void hp(int[] iArr, float[] fArr, int i2, boolean z2) {
        for (int i3 = 1; i3 < i2; i3++) {
            int i4 = iArr[i3];
            float f2 = fArr[i4];
            int i5 = i3 - 1;
            if (z2) {
                while (i5 >= 0) {
                    int i6 = iArr[i5];
                    if (fArr[i6] > f2) {
                        iArr[i5 + 1] = i6;
                        i5--;
                    }
                }
            } else {
                while (i5 >= 0) {
                    int i7 = iArr[i5];
                    if (fArr[i7] < f2) {
                        iArr[i5 + 1] = i7;
                        i5--;
                    }
                }
            }
            iArr[i5 + 1] = i4;
        }
    }

    private void hp(Canvas canvas, float f2, float f3, float f4) {
        float f5 = 0.5f * f4;
        Path path = this.f26364j;
        path.rewind();
        float f6 = -1.5707964f;
        for (int i2 = 0; i2 < 10; i2++) {
            float f7 = i2 % 2 == 0 ? f4 : f5;
            double d2 = f6;
            float fCos = (((float) Math.cos(d2)) * f7) + f2;
            float fSin = (((float) Math.sin(d2)) * f7) + f3;
            if (i2 == 0) {
                path.moveTo(fCos, fSin);
            } else {
                path.lineTo(fCos, fSin);
            }
            f6 += 0.62831855f;
        }
        path.close();
        canvas.drawPath(path, this.jx);
    }
}

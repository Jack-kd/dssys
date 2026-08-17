package com.sigmob.sdk.base.views;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;

/* loaded from: classes4.dex */
public class ab extends Drawable {

    /* renamed from: i, reason: collision with root package name */
    private static final int f36724i = 1;

    /* renamed from: a, reason: collision with root package name */
    private final Paint f36725a;

    /* renamed from: b, reason: collision with root package name */
    private final int f36726b;

    /* renamed from: c, reason: collision with root package name */
    private final int f36727c;

    /* renamed from: d, reason: collision with root package name */
    private final int f36728d;

    /* renamed from: e, reason: collision with root package name */
    private final int f36729e;

    /* renamed from: f, reason: collision with root package name */
    private final int f36730f;

    /* renamed from: g, reason: collision with root package name */
    private final int[] f36731g;

    /* renamed from: h, reason: collision with root package name */
    private RectF f36732h;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private int f36733a = 1;

        /* renamed from: b, reason: collision with root package name */
        private int f36734b = 12;

        /* renamed from: c, reason: collision with root package name */
        private int f36735c = Color.parseColor("#4d000000");

        /* renamed from: d, reason: collision with root package name */
        private int f36736d = 18;

        /* renamed from: e, reason: collision with root package name */
        private int f36737e = 0;

        /* renamed from: f, reason: collision with root package name */
        private int f36738f = 0;

        /* renamed from: g, reason: collision with root package name */
        private int[] f36739g = {0};

        public a a(int i2) {
            this.f36733a = i2;
            return this;
        }

        public a b(int i2) {
            this.f36734b = i2;
            return this;
        }

        public a c(int i2) {
            this.f36735c = i2;
            return this;
        }

        public a d(int i2) {
            this.f36736d = i2;
            return this;
        }

        public a e(int i2) {
            this.f36737e = i2;
            return this;
        }

        public a f(int i2) {
            this.f36738f = i2;
            return this;
        }

        public a g(int i2) {
            this.f36739g[0] = i2;
            return this;
        }

        public a a(int[] iArr) {
            this.f36739g = iArr;
            return this;
        }

        public ab a() {
            return new ab(this.f36733a, this.f36739g, this.f36734b, this.f36735c, this.f36736d, this.f36737e, this.f36738f);
        }
    }

    private ab(int i2, int[] iArr, int i3, int i4, int i5, int i6, int i7) {
        this.f36727c = i2;
        this.f36731g = iArr;
        this.f36728d = i3;
        this.f36726b = i5;
        this.f36729e = i6;
        this.f36730f = i7;
        Paint paint = new Paint();
        this.f36725a = paint;
        paint.setColor(0);
        paint.setAntiAlias(true);
        paint.setShadowLayer(i5, i6, i7, i4);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
    }

    public static void a(View view, int i2, int i3, int i4, int i5, int i6, int i7) {
        ab abVarA = new a().g(i2).b(i3).c(i4).d(i5).e(i6).f(i7).a();
        view.setLayerType(1, null);
        view.setBackground(abVarA);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint = new Paint();
        int[] iArr = this.f36731g;
        if (iArr != null) {
            if (iArr.length == 1) {
                paint.setColor(iArr[0]);
            } else {
                RectF rectF = this.f36732h;
                float f2 = rectF.left;
                float fHeight = rectF.height() / 2.0f;
                RectF rectF2 = this.f36732h;
                paint.setShader(new LinearGradient(f2, fHeight, rectF2.right, rectF2.height() / 2.0f, this.f36731g, (float[]) null, Shader.TileMode.CLAMP));
            }
        }
        paint.setAntiAlias(true);
        if (this.f36727c != 1) {
            canvas.drawCircle(this.f36732h.centerX(), this.f36732h.centerY(), Math.min(this.f36732h.width(), this.f36732h.height()) / 2.0f, this.f36725a);
            canvas.drawCircle(this.f36732h.centerX(), this.f36732h.centerY(), Math.min(this.f36732h.width(), this.f36732h.height()) / 2.0f, paint);
            return;
        }
        RectF rectF3 = this.f36732h;
        int i2 = this.f36728d;
        canvas.drawRoundRect(rectF3, i2, i2, this.f36725a);
        RectF rectF4 = this.f36732h;
        int i3 = this.f36728d;
        canvas.drawRoundRect(rectF4, i3, i3, paint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f36725a.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i2, int i3, int i4, int i5) {
        super.setBounds(i2, i3, i4, i5);
        int i6 = this.f36726b;
        int i7 = this.f36729e;
        int i8 = this.f36730f;
        this.f36732h = new RectF((i2 + i6) - i7, (i3 + i6) - i8, (i4 - i6) - i7, (i5 - i6) - i8);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f36725a.setColorFilter(colorFilter);
    }
}

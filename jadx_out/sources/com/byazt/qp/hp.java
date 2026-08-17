package com.byazt.qp;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.widget.ImageView;
import java.util.HashSet;
import x.AbstractC1796a;

@com.byazt.kj.hp(hp = {0, 1, 1349, 28})
/* loaded from: classes3.dex */
public class hp extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final int f25025a;

    /* renamed from: e, reason: collision with root package name */
    public final Matrix f25026e;
    public final int eb;
    public ColorStateList ec;
    public final RectF gu;

    /* renamed from: j, reason: collision with root package name */
    public final Bitmap f25027j;
    public Shader.TileMode jl;
    public final RectF jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f25028k;

    /* renamed from: q, reason: collision with root package name */
    public final Paint f25030q;

    /* renamed from: s, reason: collision with root package name */
    public final RectF f25031s;
    public ImageView.ScaleType sz;

    /* renamed from: u, reason: collision with root package name */
    public final boolean[] f25032u;

    /* renamed from: v, reason: collision with root package name */
    public float f25033v;
    public float vv;

    /* renamed from: w, reason: collision with root package name */
    public final Paint f25034w;
    public boolean xs;
    public Shader.TileMode zy;
    public final RectF hp = new RectF();

    /* renamed from: l, reason: collision with root package name */
    public final RectF f25029l = new RectF();

    @com.byazt.kj.hp(hp = {0, 1, 1349, 82})
    /* renamed from: com.byazt.qp.hp$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            hp = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                hp[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                hp[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                hp[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public hp(Bitmap bitmap) {
        RectF rectF = new RectF();
        this.jx = rectF;
        this.f25031s = new RectF();
        this.f25026e = new Matrix();
        this.gu = new RectF();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.jl = tileMode;
        this.zy = tileMode;
        this.f25028k = true;
        this.f25033v = 0.0f;
        this.f25032u = new boolean[]{true, true, true, true};
        this.xs = false;
        this.vv = 0.0f;
        this.ec = ColorStateList.valueOf(-16777216);
        this.sz = ImageView.ScaleType.FIT_CENTER;
        this.f25027j = bitmap;
        int width = bitmap.getWidth();
        this.f25025a = width;
        int height = bitmap.getHeight();
        this.eb = height;
        rectF.set(0.0f, 0.0f, width, height);
        Paint paint = new Paint();
        this.f25034w = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f25030q = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        paint2.setColor(this.ec.getColorForState(getState(), -16777216));
        paint2.setStrokeWidth(this.vv);
    }

    public static hp hp(Bitmap bitmap) {
        if (bitmap != null) {
            return new hp(bitmap);
        }
        return null;
    }

    public static Bitmap l(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(drawable.getIntrinsicWidth(), 2), Math.max(drawable.getIntrinsicHeight(), 2), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f25028k) {
            BitmapShader bitmapShader = new BitmapShader(this.f25027j, this.jl, this.zy);
            Shader.TileMode tileMode = this.jl;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            if (tileMode == tileMode2 && this.zy == tileMode2) {
                bitmapShader.setLocalMatrix(this.f25026e);
            }
            this.f25034w.setShader(bitmapShader);
            this.f25028k = false;
        }
        if (this.xs) {
            if (this.vv <= 0.0f) {
                canvas.drawOval(this.f25029l, this.f25034w);
                return;
            } else {
                canvas.drawOval(this.f25029l, this.f25034w);
                canvas.drawOval(this.f25031s, this.f25030q);
                return;
            }
        }
        if (!hp(this.f25032u)) {
            canvas.drawRect(this.f25029l, this.f25034w);
            if (this.vv > 0.0f) {
                canvas.drawRect(this.f25031s, this.f25030q);
                return;
            }
            return;
        }
        float f2 = this.f25033v;
        if (this.vv <= 0.0f) {
            canvas.drawRoundRect(this.f25029l, f2, f2, this.f25034w);
            hp(canvas);
        } else {
            canvas.drawRoundRect(this.f25029l, f2, f2, this.f25034w);
            canvas.drawRoundRect(this.f25031s, f2, f2, this.f25030q);
            hp(canvas);
            l(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f25034w.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f25034w.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.eb;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f25025a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.ec.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.hp.set(rect);
        hp();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int colorForState = this.ec.getColorForState(iArr, 0);
        if (this.f25030q.getColor() == colorForState) {
            return super.onStateChange(iArr);
        }
        this.f25030q.setColor(colorForState);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f25034w.setAlpha(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f25034w.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z2) {
        this.f25034w.setDither(z2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z2) {
        this.f25034w.setFilterBitmap(z2);
        invalidateSelf();
    }

    public static Drawable hp(Drawable drawable) {
        if (drawable != null) {
            if (drawable instanceof hp) {
                return drawable;
            }
            if (Build.VERSION.SDK_INT >= 28 && AbstractC1796a.a(drawable)) {
                return drawable;
            }
            if (drawable instanceof LayerDrawable) {
                Drawable.ConstantState constantState = drawable.mutate().getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    layerDrawable.setDrawableByLayerId(layerDrawable.getId(i2), hp(layerDrawable.getDrawable(i2)));
                }
                return layerDrawable;
            }
        }
        Bitmap bitmapL = l(drawable);
        return bitmapL != null ? new hp(bitmapL) : drawable;
    }

    private void l(Canvas canvas) {
        float f2;
        float f3;
        if (l(this.f25032u) || this.f25033v == 0.0f) {
            return;
        }
        RectF rectF = this.f25029l;
        float f4 = rectF.left;
        float f5 = rectF.top;
        float fWidth = rectF.width() + f4;
        float fHeight = f5 + this.f25029l.height();
        float f6 = this.f25033v;
        float f7 = this.vv / 2.0f;
        if (this.f25032u[0]) {
            f2 = f5;
        } else {
            f2 = f5;
            canvas.drawLine(f4 - f7, f5, f4 + f6, f2, this.f25030q);
            canvas.drawLine(f4, f2 - f7, f4, f2 + f6, this.f25030q);
        }
        if (!this.f25032u[1]) {
            float f8 = f2;
            canvas.drawLine((fWidth - f6) - f7, f8, fWidth, f2, this.f25030q);
            canvas.drawLine(fWidth, f8 - f7, fWidth, f8 + f6, this.f25030q);
            fWidth = fWidth;
        }
        if (this.f25032u[2]) {
            f3 = fHeight;
        } else {
            canvas.drawLine((fWidth - f6) - f7, fHeight, fWidth + f7, fHeight, this.f25030q);
            float f9 = fWidth;
            canvas.drawLine(f9, fHeight - f6, fWidth, fHeight, this.f25030q);
            f3 = fHeight;
        }
        if (this.f25032u[3]) {
            return;
        }
        canvas.drawLine(f4 - f7, f3, f4 + f6, f3, this.f25030q);
        canvas.drawLine(f4, f3 - f6, f4, f3, this.f25030q);
    }

    private void hp() {
        float fWidth;
        float fHeight;
        int i2 = AnonymousClass1.hp[this.sz.ordinal()];
        if (i2 == 1) {
            this.f25031s.set(this.hp);
            RectF rectF = this.f25031s;
            float f2 = this.vv;
            rectF.inset(f2 / 2.0f, f2 / 2.0f);
            this.f25026e.reset();
            this.f25026e.setTranslate((int) (((this.f25031s.width() - this.f25025a) * 0.5f) + 0.5f), (int) (((this.f25031s.height() - this.eb) * 0.5f) + 0.5f));
        } else if (i2 == 2) {
            this.f25031s.set(this.hp);
            RectF rectF2 = this.f25031s;
            float f3 = this.vv;
            rectF2.inset(f3 / 2.0f, f3 / 2.0f);
            this.f25026e.reset();
            float fWidth2 = 0.0f;
            if (this.f25025a * this.f25031s.height() > this.f25031s.width() * this.eb) {
                fWidth = this.f25031s.height() / this.eb;
                fHeight = 0.0f;
                fWidth2 = (this.f25031s.width() - (this.f25025a * fWidth)) * 0.5f;
            } else {
                fWidth = this.f25031s.width() / this.f25025a;
                fHeight = (this.f25031s.height() - (this.eb * fWidth)) * 0.5f;
            }
            this.f25026e.setScale(fWidth, fWidth);
            Matrix matrix = this.f25026e;
            float f4 = this.vv;
            matrix.postTranslate(((int) (fWidth2 + 0.5f)) + (f4 / 2.0f), ((int) (fHeight + 0.5f)) + (f4 / 2.0f));
        } else if (i2 == 3) {
            this.f25026e.reset();
            float fMin = (((float) this.f25025a) > this.hp.width() || ((float) this.eb) > this.hp.height()) ? Math.min(this.hp.width() / this.f25025a, this.hp.height() / this.eb) : 1.0f;
            float fWidth3 = (int) (((this.hp.width() - (this.f25025a * fMin)) * 0.5f) + 0.5f);
            float fHeight2 = (int) (((this.hp.height() - (this.eb * fMin)) * 0.5f) + 0.5f);
            this.f25026e.setScale(fMin, fMin);
            this.f25026e.postTranslate(fWidth3, fHeight2);
            this.f25031s.set(this.jx);
            this.f25026e.mapRect(this.f25031s);
            RectF rectF3 = this.f25031s;
            float f5 = this.vv;
            rectF3.inset(f5 / 2.0f, f5 / 2.0f);
            this.f25026e.setRectToRect(this.jx, this.f25031s, Matrix.ScaleToFit.FILL);
        } else if (i2 == 5) {
            this.f25031s.set(this.jx);
            this.f25026e.setRectToRect(this.jx, this.hp, Matrix.ScaleToFit.END);
            this.f25026e.mapRect(this.f25031s);
            RectF rectF4 = this.f25031s;
            float f6 = this.vv;
            rectF4.inset(f6 / 2.0f, f6 / 2.0f);
            this.f25026e.setRectToRect(this.jx, this.f25031s, Matrix.ScaleToFit.FILL);
        } else if (i2 == 6) {
            this.f25031s.set(this.jx);
            this.f25026e.setRectToRect(this.jx, this.hp, Matrix.ScaleToFit.START);
            this.f25026e.mapRect(this.f25031s);
            RectF rectF5 = this.f25031s;
            float f7 = this.vv;
            rectF5.inset(f7 / 2.0f, f7 / 2.0f);
            this.f25026e.setRectToRect(this.jx, this.f25031s, Matrix.ScaleToFit.FILL);
        } else if (i2 != 7) {
            this.f25031s.set(this.jx);
            this.f25026e.setRectToRect(this.jx, this.hp, Matrix.ScaleToFit.CENTER);
            this.f25026e.mapRect(this.f25031s);
            RectF rectF6 = this.f25031s;
            float f8 = this.vv;
            rectF6.inset(f8 / 2.0f, f8 / 2.0f);
            this.f25026e.setRectToRect(this.jx, this.f25031s, Matrix.ScaleToFit.FILL);
        } else {
            this.f25031s.set(this.hp);
            RectF rectF7 = this.f25031s;
            float f9 = this.vv;
            rectF7.inset(f9 / 2.0f, f9 / 2.0f);
            this.f25026e.reset();
            this.f25026e.setRectToRect(this.jx, this.f25031s, Matrix.ScaleToFit.FILL);
        }
        this.f25029l.set(this.f25031s);
        this.f25028k = true;
    }

    public hp l(Shader.TileMode tileMode) {
        if (this.zy != tileMode) {
            this.zy = tileMode;
            this.f25028k = true;
            invalidateSelf();
        }
        return this;
    }

    private static boolean l(boolean[] zArr) {
        for (boolean z2 : zArr) {
            if (z2) {
                return false;
            }
        }
        return true;
    }

    private void hp(Canvas canvas) {
        if (l(this.f25032u) || this.f25033v == 0.0f) {
            return;
        }
        RectF rectF = this.f25029l;
        float f2 = rectF.left;
        float f3 = rectF.top;
        float fWidth = rectF.width() + f2;
        float fHeight = this.f25029l.height() + f3;
        float f4 = this.f25033v;
        if (!this.f25032u[0]) {
            this.gu.set(f2, f3, f2 + f4, f3 + f4);
            canvas.drawRect(this.gu, this.f25034w);
        }
        if (!this.f25032u[1]) {
            this.gu.set(fWidth - f4, f3, fWidth, f4);
            canvas.drawRect(this.gu, this.f25034w);
        }
        if (!this.f25032u[2]) {
            this.gu.set(fWidth - f4, fHeight - f4, fWidth, fHeight);
            canvas.drawRect(this.gu, this.f25034w);
        }
        if (this.f25032u[3]) {
            return;
        }
        this.gu.set(f2, fHeight - f4, f4 + f2, fHeight);
        canvas.drawRect(this.gu, this.f25034w);
    }

    public hp hp(float f2, float f3, float f4, float f5) {
        HashSet hashSet = new HashSet(4);
        hashSet.add(Float.valueOf(f2));
        hashSet.add(Float.valueOf(f3));
        hashSet.add(Float.valueOf(f4));
        hashSet.add(Float.valueOf(f5));
        hashSet.remove(Float.valueOf(0.0f));
        if (hashSet.size() <= 1) {
            if (!hashSet.isEmpty()) {
                float fFloatValue = ((Float) hashSet.iterator().next()).floatValue();
                if (!Float.isInfinite(fFloatValue) && !Float.isNaN(fFloatValue) && fFloatValue >= 0.0f) {
                    this.f25033v = fFloatValue;
                } else {
                    throw new IllegalArgumentException("Invalid radius value: ".concat(String.valueOf(fFloatValue)));
                }
            } else {
                this.f25033v = 0.0f;
            }
            boolean[] zArr = this.f25032u;
            zArr[0] = f2 > 0.0f;
            zArr[1] = f3 > 0.0f;
            zArr[2] = f4 > 0.0f;
            zArr[3] = f5 > 0.0f;
            return this;
        }
        throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported.");
    }

    public hp hp(float f2) {
        this.vv = f2;
        this.f25030q.setStrokeWidth(f2);
        return this;
    }

    public hp hp(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.ec = colorStateList;
        this.f25030q.setColor(colorStateList.getColorForState(getState(), -16777216));
        return this;
    }

    public hp hp(boolean z2) {
        this.xs = z2;
        return this;
    }

    public hp hp(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (this.sz != scaleType) {
            this.sz = scaleType;
            hp();
        }
        return this;
    }

    public hp hp(Shader.TileMode tileMode) {
        if (this.jl != tileMode) {
            this.jl = tileMode;
            this.f25028k = true;
            invalidateSelf();
        }
        return this;
    }

    private static boolean hp(boolean[] zArr) {
        for (boolean z2 : zArr) {
            if (z2) {
                return true;
            }
        }
        return false;
    }
}

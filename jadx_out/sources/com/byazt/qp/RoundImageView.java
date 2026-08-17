package com.byazt.qp;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.byazt.mw.eb;
import com.byazt.mw.s;
import com.byazt.ql.w;
import com.byazt.zs.j;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 1349, 1849})
/* loaded from: classes3.dex */
public class RoundImageView extends ImageView implements eb, w {
    public static final Shader.TileMode hp = Shader.TileMode.CLAMP;

    /* renamed from: j, reason: collision with root package name */
    public static final ImageView.ScaleType[] f25011j = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ boolean f25012l = true;

    /* renamed from: a, reason: collision with root package name */
    public Drawable f25013a;

    /* renamed from: b, reason: collision with root package name */
    public Path f25014b;
    public float cx;

    /* renamed from: d, reason: collision with root package name */
    public float f25015d;
    public Paint di;

    /* renamed from: e, reason: collision with root package name */
    public boolean f25016e;
    public ColorStateList eb;
    public Shader.TileMode ec;
    public Drawable gu;
    public Bitmap hq;
    public boolean jl;
    public float jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f25017k;

    /* renamed from: n, reason: collision with root package name */
    public s f25018n;
    public boolean ns;

    /* renamed from: o, reason: collision with root package name */
    public float f25019o;

    /* renamed from: q, reason: collision with root package name */
    public ColorFilter f25020q;

    /* renamed from: s, reason: collision with root package name */
    public float f25021s;
    public j sz;

    /* renamed from: u, reason: collision with root package name */
    public int f25022u;
    public final RectF ud;

    /* renamed from: v, reason: collision with root package name */
    public int f25023v;
    public Shader.TileMode vv;

    /* renamed from: w, reason: collision with root package name */
    public final float[] f25024w;
    public Canvas wv;
    public ImageView.ScaleType xs;
    public boolean zy;

    @com.byazt.kj.hp(hp = {0, 1, 1349, 1674})
    /* renamed from: com.byazt.qp.RoundImageView$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            hp = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                hp[ImageView.ScaleType.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                hp[ImageView.ScaleType.CENTER_CROP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                hp[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public RoundImageView(Context context) {
        super(context);
        this.f25024w = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        this.eb = ColorStateList.valueOf(-16777216);
        this.f25021s = 0.0f;
        this.f25020q = null;
        this.f25016e = false;
        this.jl = false;
        this.zy = false;
        this.f25017k = false;
        Shader.TileMode tileMode = hp;
        this.vv = tileMode;
        this.ec = tileMode;
        this.ns = false;
        this.cx = 50.0f;
        this.ud = new RectF();
        this.f25018n = new s(this);
    }

    private Drawable hp() throws Resources.NotFoundException {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i2 = this.f25023v;
        if (i2 != 0) {
            try {
                drawable = resources.getDrawable(i2);
            } catch (Exception unused) {
                this.f25023v = 0;
            }
        }
        return hp.hp(drawable);
    }

    private void j() {
        Drawable drawable = this.gu;
        if (drawable == null || !this.f25016e) {
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.gu = drawableMutate;
        if (this.jl) {
            drawableMutate.setColorFilter(this.f25020q);
        }
    }

    private void jx() {
        hp(this.gu, this.xs);
    }

    private Drawable l() throws Resources.NotFoundException {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i2 = this.f25022u;
        if (i2 != 0) {
            try {
                drawable = resources.getDrawable(i2);
            } catch (Exception unused) {
                this.f25022u = 0;
            }
        }
        return hp.hp(drawable);
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        j jVar = this.sz;
        if (jVar != null) {
            jVar.l(canvas);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public int getBorderColor() {
        return this.eb.getDefaultColor();
    }

    public ColorStateList getBorderColors() {
        return this.eb;
    }

    public float getBorderRadius() {
        return this.f25018n.hp();
    }

    public float getBorderWidth() {
        return this.f25021s;
    }

    public float getCornerRadius() {
        return getMaxCornerRadius();
    }

    public float getMaxCornerRadius() {
        float fMax = 0.0f;
        for (float f2 : this.f25024w) {
            fMax = Math.max(f2, fMax);
        }
        return fMax;
    }

    @Override // com.byazt.mw.eb
    public float getRipple() {
        return this.jx;
    }

    @Override // com.byazt.mw.eb
    public float getRubIn() {
        return this.f25018n.getRubIn();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.xs;
    }

    @Override // com.byazt.mw.eb
    public float getShine() {
        return this.f25018n.getShine();
    }

    @Override // com.byazt.mw.eb
    public float getStretch() {
        return this.f25018n.getStretch();
    }

    public Shader.TileMode getTileModeX() {
        return this.vv;
    }

    public Shader.TileMode getTileModeY() {
        return this.ec;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        j jVar = this.sz;
        if (jVar != null) {
            jVar.w();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.sz;
        if (jVar != null) {
            jVar.a();
        }
        Canvas canvas = this.wv;
        if (canvas != null) {
            canvas.setBitmap(null);
        }
        Bitmap bitmap = this.hq;
        if (bitmap != null) {
            bitmap.recycle();
            this.wv = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Canvas canvas2;
        if (!this.ns || (canvas2 = this.wv) == null || this.hq == null) {
            super.onDraw(canvas);
        } else {
            super.onDraw(canvas2);
            this.wv.drawPath(this.f25014b, this.di);
            canvas.drawBitmap(this.hq, 0.0f, 0.0f, (Paint) null);
        }
        j jVar = this.sz;
        if (jVar != null) {
            jVar.hp(canvas, this);
            this.sz.hp(canvas);
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        j jVar = this.sz;
        if (jVar != null) {
            jVar.hp(i2, i3, i4, i5);
        }
        super.onLayout(z2, i2, i3, i4, i5);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i2, int i3) {
        j jVar = this.sz;
        if (jVar == null) {
            super.onMeasure(i2, i3);
        } else {
            int[] iArrHp = jVar.hp(i2, i3);
            super.onMeasure(iArrHp[0], iArrHp[1]);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        j jVar = this.sz;
        if (jVar != null) {
            jVar.l(i2, i3, i4, i4);
        }
        if (i2 <= 0 || i3 <= 0 || !this.ns) {
            return;
        }
        this.hq = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        this.wv = new Canvas(this.hq);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int iWidth;
        if (!this.ns) {
            return super.onTouchEvent(motionEvent);
        }
        this.sz.w();
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f25014b.moveTo(x2, y2);
            this.f25019o = x2;
            this.f25015d = y2;
            HashMap map = new HashMap();
            map.put("state", 1);
            this.sz.hp("eraseState", map);
        } else if (action == 1) {
            this.f25014b.computeBounds(this.ud, true);
            try {
                iWidth = (int) (((this.ud.width() * this.ud.height()) / (getWidth() * getHeight())) * 100.0f);
            } catch (Exception unused) {
                iWidth = 0;
            }
            HashMap map2 = new HashMap();
            map2.put("state", 2);
            map2.put("percent", Integer.valueOf(iWidth));
            this.sz.hp("eraseState", map2);
        } else if (action == 2 && x2 > 0.0f && x2 < getWidth() && y2 > 0.0f && y2 < getHeight()) {
            float f2 = this.f25019o;
            float f3 = this.f25015d;
            this.f25014b.quadTo(f2, f3, (f2 + x2) / 2.0f, (f3 + y2) / 2.0f);
            this.f25019o = x2;
            this.f25015d = y2;
        }
        postInvalidate();
        return true;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        j jVar = this.sz;
        if (jVar != null) {
            jVar.hp(z2);
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        ColorDrawable colorDrawable = new ColorDrawable(i2);
        this.f25013a = colorDrawable;
        setBackgroundDrawable(colorDrawable);
    }

    @Override // android.view.View
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        this.f25013a = drawable;
        hp(true);
        super.setBackgroundDrawable(this.f25013a);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) throws Resources.NotFoundException {
        if (this.f25022u != i2) {
            this.f25022u = i2;
            Drawable drawableL = l();
            this.f25013a = drawableL;
            setBackgroundDrawable(drawableL);
        }
    }

    public void setBorderColor(int i2) {
        setBorderColor(ColorStateList.valueOf(i2));
    }

    public void setBorderRadius(float f2) {
        s sVar = this.f25018n;
        if (sVar != null) {
            sVar.hp(f2);
        }
    }

    public void setBorderWidth(int i2) {
        setBorderWidth(getResources().getDimension(i2));
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f25020q != colorFilter) {
            this.f25020q = colorFilter;
            this.jl = true;
            this.f25016e = true;
            j();
            invalidate();
        }
    }

    public void setCornerRadius(float f2) {
        hp(f2, f2, f2, f2);
    }

    public void setCornerRadiusDimen(int i2) throws Resources.NotFoundException {
        float dimension = getResources().getDimension(i2);
        hp(dimension, dimension, dimension, dimension);
    }

    public void setEraseEnabled(boolean z2) {
        if (z2) {
            this.f25014b = new Path();
            Paint paint = new Paint();
            this.di = paint;
            paint.setAntiAlias(true);
            this.di.setDither(true);
            this.di.setStyle(Paint.Style.STROKE);
            this.di.setStrokeWidth(this.cx * 2.0f);
            this.di.setStrokeCap(Paint.Cap.ROUND);
            this.di.setStrokeJoin(Paint.Join.ROUND);
            this.di.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            this.di.setColor(0);
            this.ns = true;
        } else {
            this.ns = false;
        }
        postInvalidate();
    }

    public void setEraseRadius(float f2) {
        this.cx = f2;
        Paint paint = this.di;
        if (paint != null) {
            paint.setStrokeWidth(f2 * 2.0f);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.f25023v = 0;
        this.gu = hp.hp(bitmap);
        jx();
        super.setImageDrawable(this.gu);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.f25023v = 0;
        this.gu = hp.hp(drawable);
        jx();
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i2) {
        if (this.f25023v != i2) {
            this.f25023v = i2;
            this.gu = hp();
            jx();
            super.setImageDrawable(this.gu);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setOval(boolean z2) {
        this.zy = z2;
        jx();
        hp(false);
        invalidate();
    }

    public void setRipple(float f2) {
        this.jx = f2;
        s sVar = this.f25018n;
        if (sVar != null) {
            sVar.l(f2);
        }
        postInvalidate();
    }

    public void setRubIn(float f2) {
        s sVar = this.f25018n;
        if (sVar != null) {
            sVar.w(f2);
        }
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (!f25012l && scaleType == null) {
            throw new AssertionError();
        }
        if (this.xs != scaleType) {
            this.xs = scaleType;
            int i2 = AnonymousClass1.hp[scaleType.ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
                super.setScaleType(scaleType);
            } else {
                super.setScaleType(ImageView.ScaleType.FIT_XY);
            }
            jx();
            hp(false);
            invalidate();
        }
    }

    public void setShine(float f2) {
        s sVar = this.f25018n;
        if (sVar != null) {
            sVar.jx(f2);
        }
    }

    public void setStretch(float f2) {
        s sVar = this.f25018n;
        if (sVar != null) {
            sVar.j(f2);
        }
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        if (this.vv == tileMode) {
            return;
        }
        this.vv = tileMode;
        jx();
        hp(false);
        invalidate();
    }

    public void setTileModeY(Shader.TileMode tileMode) {
        if (this.ec == tileMode) {
            return;
        }
        this.ec = tileMode;
        jx();
        hp(false);
        invalidate();
    }

    public void setBorderColor(ColorStateList colorStateList) {
        if (this.eb.equals(colorStateList)) {
            return;
        }
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(-16777216);
        }
        this.eb = colorStateList;
        jx();
        hp(false);
        if (this.f25021s > 0.0f) {
            invalidate();
        }
    }

    public void setBorderWidth(float f2) {
        if (this.f25021s == f2) {
            return;
        }
        this.f25021s = f2;
        jx();
        hp(false);
        invalidate();
    }

    private void hp(boolean z2) {
        if (this.f25017k) {
            if (z2) {
                this.f25013a = hp.hp(this.f25013a);
            }
            hp(this.f25013a, ImageView.ScaleType.FIT_XY);
        }
    }

    private void hp(Drawable drawable, ImageView.ScaleType scaleType) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof hp) {
            hp hpVar = (hp) drawable;
            hpVar.hp(scaleType).hp(this.f25021s).hp(this.eb).hp(this.zy).hp(this.vv).l(this.ec);
            float[] fArr = this.f25024w;
            if (fArr != null) {
                hpVar.hp(fArr[0], fArr[1], fArr[2], fArr[3]);
            }
            j();
            return;
        }
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                hp(layerDrawable.getDrawable(i2), scaleType);
            }
        }
    }

    public void hp(float f2, float f3, float f4, float f5) {
        float[] fArr = this.f25024w;
        if (fArr[0] == f2 && fArr[1] == f3 && fArr[2] == f5 && fArr[3] == f4) {
            return;
        }
        fArr[0] = f2;
        fArr[1] = f3;
        fArr[3] = f4;
        fArr[2] = f5;
        jx();
        hp(false);
        invalidate();
    }

    public void hp(j jVar) {
        this.sz = jVar;
    }
}

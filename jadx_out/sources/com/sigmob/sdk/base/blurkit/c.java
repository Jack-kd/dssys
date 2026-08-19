package com.sigmob.sdk.base.blurkit;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* loaded from: classes4.dex */
public class c extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public static final float f35532a = 0.12f;

    /* renamed from: b, reason: collision with root package name */
    public static final int f35533b = 12;

    /* renamed from: c, reason: collision with root package name */
    public static final int f35534c = 24;

    /* renamed from: d, reason: collision with root package name */
    public static final float f35535d = 0.0f;

    /* renamed from: e, reason: collision with root package name */
    public static final float f35536e = Float.NaN;

    /* renamed from: f, reason: collision with root package name */
    private float f35537f;

    /* renamed from: g, reason: collision with root package name */
    private int f35538g;

    /* renamed from: h, reason: collision with root package name */
    private int f35539h;

    /* renamed from: i, reason: collision with root package name */
    private float f35540i;

    /* renamed from: j, reason: collision with root package name */
    private float f35541j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f35542k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f35543l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f35544m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f35545n;

    /* renamed from: o, reason: collision with root package name */
    private d f35546o;

    /* renamed from: p, reason: collision with root package name */
    private WeakReference<View> f35547p;

    /* renamed from: q, reason: collision with root package name */
    private Point f35548q;

    /* renamed from: r, reason: collision with root package name */
    private Bitmap f35549r;

    /* renamed from: s, reason: collision with root package name */
    private Choreographer.FrameCallback f35550s;

    public c(Context context) {
        super(context, null);
        this.f35537f = 0.12f;
        this.f35538g = 12;
        this.f35539h = 24;
        this.f35540i = 0.0f;
        this.f35541j = Float.NaN;
        this.f35550s = new Choreographer.FrameCallback() { // from class: com.sigmob.sdk.base.blurkit.c.1
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j2) {
                c.this.invalidate();
                Choreographer.getInstance().postFrameCallbackDelayed(this, 1000 / c.this.f35539h);
            }
        };
    }

    private Bitmap g() {
        Point positionInScreen;
        Bitmap bitmapA;
        if (getContext() != null && !isInEditMode()) {
            WeakReference<View> weakReference = this.f35547p;
            if (weakReference == null || weakReference.get() == null) {
                WeakReference<View> weakReference2 = new WeakReference<>(getActivityView());
                this.f35547p = weakReference2;
                if (weakReference2.get() == null) {
                    return null;
                }
            }
            if (this.f35544m) {
                if (this.f35548q == null) {
                    this.f35548q = getPositionInScreen();
                }
                positionInScreen = this.f35548q;
            } else {
                positionInScreen = getPositionInScreen();
            }
            super.setAlpha(0.0f);
            int width = this.f35547p.get().getWidth();
            int height = this.f35547p.get().getHeight();
            int width2 = (int) (getWidth() * this.f35537f);
            float height2 = getHeight();
            float f2 = this.f35537f;
            int i2 = (int) (height2 * f2);
            int i3 = (int) (positionInScreen.x * f2);
            int i4 = (int) (positionInScreen.y * f2);
            int width3 = getWidth() / 8;
            int height3 = getHeight() / 8;
            int i5 = -width3;
            if (i3 + i5 < 0) {
                i5 = 0;
            }
            if ((i3 + width) - width3 > width) {
                width3 = (width + width) - i3;
            }
            int i6 = -height3;
            if (i4 + i6 < 0) {
                i6 = 0;
            }
            if (getHeight() + i4 + height3 > height) {
                height3 = 0;
            }
            if (this.f35545n) {
                if (this.f35549r == null) {
                    c();
                }
                if (width2 == 0 || i2 == 0) {
                    return null;
                }
                bitmapA = Bitmap.createBitmap(this.f35549r, i3, i4, width2, i2);
            } else {
                try {
                    View view = this.f35547p.get();
                    int i7 = positionInScreen.x;
                    bitmapA = a(view, new Rect(i7 + i5, positionInScreen.y + i6, i7 + getWidth() + Math.abs(i5) + width3, positionInScreen.y + getHeight() + Math.abs(i6) + height3), this.f35537f);
                } catch (b | NullPointerException unused) {
                }
            }
            if (!this.f35545n) {
                bitmapA = Bitmap.createBitmap(a.a().a(bitmapA, this.f35538g), (int) (Math.abs(i5) * this.f35537f), (int) (Math.abs(i6) * this.f35537f), width2, i2);
            }
            super.setAlpha(Float.isNaN(this.f35541j) ? 1.0f : this.f35541j);
            return bitmapA;
        }
        return null;
    }

    private View getActivityView() {
        try {
            return ((Activity) getContext()).getWindow().getDecorView().findViewById(R.id.content);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    private Point getPositionInScreen() {
        PointF pointFA = a((View) this);
        return new Point((int) pointFA.x, (int) pointFA.y);
    }

    public void b() {
        if (this.f35542k) {
            this.f35542k = false;
            Choreographer.getInstance().removeFrameCallback(this.f35550s);
        }
    }

    public void c() {
        this.f35545n = true;
        WeakReference<View> weakReference = this.f35547p;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View rootView = this.f35547p.get().getRootView();
        try {
            super.setAlpha(0.0f);
            this.f35549r = a(rootView, new Rect(0, 0, rootView.getWidth(), rootView.getHeight()), this.f35537f);
            if (Float.isNaN(this.f35541j)) {
                super.setAlpha(1.0f);
            } else {
                super.setAlpha(this.f35541j);
            }
            this.f35549r = a.a().a(this.f35549r, this.f35538g);
        } catch (Exception unused) {
        }
    }

    public void d() {
        this.f35545n = false;
        this.f35549r = null;
    }

    public void e() {
        this.f35544m = true;
        this.f35548q = getPositionInScreen();
    }

    public void f() {
        this.f35544m = false;
        this.f35548q = null;
    }

    @Override // android.view.View
    public float getAlpha() {
        return this.f35541j;
    }

    public int getBlurRadius() {
        return this.f35538g;
    }

    public float getCornerRadius() {
        return this.f35540i;
    }

    public float getDownscaleFactor() {
        return this.f35537f;
    }

    public int getFPS() {
        return this.f35539h;
    }

    public boolean getPositionLocked() {
        return this.f35544m;
    }

    public boolean getViewLocked() {
        return this.f35545n;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Bitmap bitmapG = g();
        if (bitmapG != null) {
            this.f35546o.setImageBitmap(bitmapG);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f35543l = true;
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f35543l = false;
        b();
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        invalidate();
    }

    @Override // android.view.View
    public void setAlpha(float f2) {
        this.f35541j = f2;
        if (this.f35545n) {
            return;
        }
        super.setAlpha(f2);
    }

    public void setBlurRadius(int i2) {
        this.f35538g = i2;
        this.f35549r = null;
        invalidate();
    }

    public void setCornerRadius(float f2) {
        this.f35540i = f2;
        d dVar = this.f35546o;
        if (dVar != null) {
            dVar.setCornerRadius(f2);
        }
        invalidate();
    }

    public void setDownscaleFactor(float f2) {
        this.f35537f = f2;
        this.f35549r = null;
        invalidate();
    }

    public void setFPS(int i2) {
        if (this.f35542k) {
            b();
        }
        this.f35539h = i2;
        if (this.f35543l) {
            a();
        }
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35537f = 0.12f;
        this.f35538g = 12;
        this.f35539h = 24;
        this.f35540i = 0.0f;
        this.f35541j = Float.NaN;
        this.f35550s = new Choreographer.FrameCallback() { // from class: com.sigmob.sdk.base.blurkit.c.1
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j2) {
                c.this.invalidate();
                Choreographer.getInstance().postFrameCallbackDelayed(this, 1000 / c.this.f35539h);
            }
        };
        if (!isInEditMode()) {
            a.a(context);
        }
        d dVar = new d(getContext());
        this.f35546o = dVar;
        dVar.setScaleType(ImageView.ScaleType.FIT_XY);
        addView(this.f35546o);
        setCornerRadius(this.f35540i);
    }

    private Bitmap a(View view, Rect rect, float f2) throws b, NullPointerException {
        View rootView = view.getRootView();
        int iWidth = (int) (rect.width() * f2);
        int iHeight = (int) (rect.height() * f2);
        if (rootView.getWidth() <= 0 || rootView.getHeight() <= 0 || iWidth <= 0 || iHeight <= 0) {
            throw new b("No screen available (width or height = 0)");
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iWidth, iHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Matrix matrix = new Matrix();
        matrix.preScale(f2, f2);
        matrix.postTranslate((-rect.left) * f2, (-rect.top) * f2);
        canvas.setMatrix(matrix);
        rootView.draw(canvas);
        return bitmapCreateBitmap;
    }

    private PointF a(View view) {
        if (getParent() == null) {
            return new PointF();
        }
        try {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup == null) {
                return new PointF();
            }
            PointF pointFA = a(viewGroup);
            pointFA.offset(view.getX(), view.getY());
            return pointFA;
        } catch (Exception unused) {
            return new PointF();
        }
    }

    public void a() {
        if (!this.f35542k && this.f35539h > 0) {
            this.f35542k = true;
            Choreographer.getInstance().postFrameCallback(this.f35550s);
        }
    }
}

package com.octopus.ad.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import com.octopus.ad.R;
import com.octopus.ad.internal.utilities.ViewUtil;

/* loaded from: classes4.dex */
public class FlickerProgressBar extends View {

    /* renamed from: a, reason: collision with root package name */
    private final PorterDuffXfermode f35098a;

    /* renamed from: b, reason: collision with root package name */
    private int f35099b;

    /* renamed from: c, reason: collision with root package name */
    private final float f35100c;

    /* renamed from: d, reason: collision with root package name */
    private Paint f35101d;

    /* renamed from: e, reason: collision with root package name */
    private Paint f35102e;

    /* renamed from: f, reason: collision with root package name */
    private Paint f35103f;

    /* renamed from: g, reason: collision with root package name */
    private String f35104g;

    /* renamed from: h, reason: collision with root package name */
    private Rect f35105h;

    /* renamed from: i, reason: collision with root package name */
    private RectF f35106i;

    /* renamed from: j, reason: collision with root package name */
    private Canvas f35107j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f35108k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f35109l;

    /* renamed from: m, reason: collision with root package name */
    private int f35110m;

    /* renamed from: n, reason: collision with root package name */
    private int f35111n;

    /* renamed from: o, reason: collision with root package name */
    private Bitmap f35112o;

    /* renamed from: p, reason: collision with root package name */
    private float f35113p;

    /* renamed from: q, reason: collision with root package name */
    private int f35114q;

    /* renamed from: r, reason: collision with root package name */
    private int f35115r;

    /* renamed from: s, reason: collision with root package name */
    private int f35116s;

    public FlickerProgressBar(Context context) {
        this(context, null, 0);
    }

    private void a(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.OctFlickerProgressBar);
        try {
            this.f35110m = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.OctFlickerProgressBar_octTextSize, 12.0f);
            this.f35114q = typedArrayObtainStyledAttributes.getColor(R.styleable.OctFlickerProgressBar_octLoadingColor, Color.parseColor("#40c4ff"));
            this.f35115r = typedArrayObtainStyledAttributes.getColor(R.styleable.OctFlickerProgressBar_octStopColor, Color.parseColor("#ff9800"));
            this.f35111n = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.OctFlickerProgressBar_octRadius, 0.0f);
            this.f35099b = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.OctFlickerProgressBar_octBorderWidth, 2.0f);
            this.f35104g = "立即下载";
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void b(Canvas canvas) {
        this.f35103f.setColor(this.f35116s);
        float measuredWidth = (this.f35113p / 100.0f) * getMeasuredWidth();
        this.f35107j.save();
        this.f35107j.clipRect(0.0f, 0.0f, measuredWidth, getMeasuredHeight());
        this.f35107j.drawColor(this.f35116s);
        this.f35107j.restore();
        if (!this.f35109l) {
            this.f35103f.setXfermode(this.f35098a);
            this.f35103f.setXfermode(null);
        }
        Bitmap bitmap = this.f35112o;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f35103f.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        RectF rectF = this.f35106i;
        int i2 = this.f35111n;
        canvas.drawRoundRect(rectF, i2, i2, this.f35103f);
    }

    private void c() {
        Paint paint = new Paint(5);
        this.f35102e = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f35102e.setStrokeWidth(this.f35099b);
        Paint paint2 = new Paint(1);
        this.f35103f = paint2;
        paint2.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.f35101d = paint3;
        paint3.setTextSize(this.f35110m);
        this.f35105h = new Rect();
        int i2 = this.f35099b;
        this.f35106i = new RectF(i2, i2, getMeasuredWidth() - this.f35099b, getMeasuredHeight() - this.f35099b);
        if (this.f35109l) {
            this.f35116s = this.f35115r;
        } else {
            this.f35116s = this.f35114q;
        }
        d();
    }

    private void d() {
        this.f35112o = Bitmap.createBitmap(getMeasuredWidth() - this.f35099b, getMeasuredHeight() - this.f35099b, Bitmap.Config.ARGB_8888);
        this.f35107j = new Canvas(this.f35112o);
    }

    public float getProgress() {
        return this.f35113p;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a(canvas);
        b(canvas);
        c(canvas);
        d(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode == Integer.MIN_VALUE) {
            size2 = ViewUtil.dip2px(getContext(), 36.0f);
        } else if (mode != 0 && mode != 1073741824) {
            size2 = 0;
        }
        setMeasuredDimension(size, size2);
        if (this.f35112o == null) {
            c();
        }
    }

    public void setProgress(float f2) {
        if (this.f35109l) {
            return;
        }
        if (f2 < 100.0f) {
            this.f35113p = f2;
        } else {
            this.f35113p = 100.0f;
            a();
        }
        invalidate();
    }

    public void setStatus(int i2) {
        if (i2 == 2) {
            this.f35109l = false;
            this.f35104g = "下载中" + this.f35113p + "%";
        } else if (i2 == 4) {
            this.f35109l = true;
            this.f35104g = "继续下载";
        } else if (i2 == 8) {
            this.f35108k = true;
            this.f35104g = "点击安装";
        } else if (i2 == 16) {
            this.f35104g = "下载失败";
        }
        invalidate();
    }

    public void setStop(boolean z2) {
        this.f35109l = z2;
        if (z2) {
            this.f35116s = this.f35115r;
        } else {
            this.f35116s = this.f35114q;
        }
        invalidate();
    }

    public FlickerProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlickerProgressBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f35098a = new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP);
        this.f35100c = 100.0f;
        a(attributeSet);
    }

    private void d(Canvas canvas) {
        this.f35101d.setColor(-1);
        int iWidth = this.f35105h.width();
        int iHeight = this.f35105h.height();
        float measuredWidth = (getMeasuredWidth() - iWidth) / 2.0f;
        float measuredHeight = (getMeasuredHeight() + iHeight) / 2.0f;
        float measuredWidth2 = (this.f35113p / 100.0f) * getMeasuredWidth();
        if (measuredWidth2 > measuredWidth) {
            canvas.save();
            canvas.clipRect(measuredWidth, 0.0f, Math.min(measuredWidth2, (iWidth * 1.1f) + measuredWidth), getMeasuredHeight());
            canvas.drawText(this.f35104g, measuredWidth, measuredHeight, this.f35101d);
            canvas.restore();
        }
    }

    private void a(Canvas canvas) {
        this.f35102e.setColor(this.f35116s);
        RectF rectF = this.f35106i;
        int i2 = this.f35111n;
        canvas.drawRoundRect(rectF, i2, i2, this.f35102e);
    }

    public void a() {
        this.f35104g = "点击安装";
        this.f35108k = true;
        setStop(true);
    }

    public void b() {
        setStop(true);
        this.f35113p = 0.0f;
        this.f35108k = false;
        this.f35109l = false;
        this.f35116s = this.f35114q;
        this.f35104g = "立即下载";
        d();
    }

    private void c(Canvas canvas) {
        this.f35101d.setColor(this.f35116s);
        Paint paint = this.f35101d;
        String str = this.f35104g;
        paint.getTextBounds(str, 0, str.length(), this.f35105h);
        int iWidth = this.f35105h.width();
        int iHeight = this.f35105h.height();
        canvas.drawText(this.f35104g, (getMeasuredWidth() - iWidth) / 2.0f, (getMeasuredHeight() + iHeight) / 2.0f, this.f35101d);
    }
}

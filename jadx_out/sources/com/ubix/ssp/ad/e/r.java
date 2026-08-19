package com.ubix.ssp.ad.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.graphics.Shader;
import android.text.TextUtils;
import android.view.View;
import com.ubix.ssp.ad.e.a0.u;

/* loaded from: classes5.dex */
public class r extends View {

    /* renamed from: a, reason: collision with root package name */
    private String f47041a;

    /* renamed from: b, reason: collision with root package name */
    private String f47042b;

    /* renamed from: c, reason: collision with root package name */
    Path f47043c;

    /* renamed from: d, reason: collision with root package name */
    Path f47044d;

    /* renamed from: e, reason: collision with root package name */
    Paint f47045e;

    /* renamed from: f, reason: collision with root package name */
    Paint f47046f;

    /* renamed from: g, reason: collision with root package name */
    Paint f47047g;

    /* renamed from: h, reason: collision with root package name */
    Paint f47048h;

    /* renamed from: i, reason: collision with root package name */
    int f47049i;

    /* renamed from: j, reason: collision with root package name */
    boolean f47050j;

    /* renamed from: k, reason: collision with root package name */
    boolean f47051k;

    /* renamed from: l, reason: collision with root package name */
    private int f47052l;

    /* renamed from: m, reason: collision with root package name */
    private int f47053m;

    /* renamed from: n, reason: collision with root package name */
    private int f47054n;

    /* renamed from: o, reason: collision with root package name */
    RectF f47055o;

    /* renamed from: p, reason: collision with root package name */
    private String[] f47056p;

    /* renamed from: q, reason: collision with root package name */
    private Path f47057q;

    /* renamed from: r, reason: collision with root package name */
    private String f47058r;

    /* renamed from: s, reason: collision with root package name */
    private Bitmap f47059s;

    /* renamed from: t, reason: collision with root package name */
    private Matrix f47060t;

    /* renamed from: u, reason: collision with root package name */
    private float f47061u;

    /* renamed from: v, reason: collision with root package name */
    boolean f47062v;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                r rVar = r.this;
                if (rVar.f47062v) {
                    rVar.c();
                    r.this.invalidate();
                    rVar = r.this;
                    if (rVar.f47051k) {
                        rVar.postDelayed(this, 1000L);
                        r.this.f47051k = false;
                        return;
                    }
                }
                rVar.postDelayed(this, 16L);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public r(Context context) {
        super(context);
        this.f47041a = "左滑或点击";
        this.f47042b = "跳转详情页或第三方应用";
        this.f47043c = null;
        this.f47044d = null;
        this.f47045e = new Paint(1);
        this.f47046f = new Paint(1);
        this.f47047g = new Paint(1);
        this.f47048h = new Paint(1);
        this.f47049i = 0;
        this.f47050j = true;
        this.f47052l = 160;
        this.f47056p = null;
        this.f47057q = new Path();
        this.f47058r = this.f47041a + this.f47042b;
        this.f47059s = null;
        this.f47060t = new Matrix();
        this.f47061u = com.ubix.ssp.ad.e.a0.r.a().a(context);
        this.f47059s = q.a(getContext(), "ubix/ic_full_slide_arrow.webp", 0, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        RectF rectF = new RectF(this.f47055o);
        this.f47049i = this.f47050j ? this.f47049i + 2 : this.f47049i - 8;
        int i2 = this.f47049i;
        int i3 = this.f47052l / 2;
        if (i2 > i3) {
            this.f47049i = i3;
            this.f47051k = false;
            this.f47050j = false;
        }
        if (this.f47049i < 0) {
            this.f47049i = 0;
            this.f47050j = true;
            this.f47051k = true;
        }
        this.f47043c.reset();
        rectF.left -= this.f47049i;
        this.f47043c.addRect(rectF, Path.Direction.CW);
        this.f47043c.moveTo(this.f47054n - this.f47049i, 0.0f);
        Path path = this.f47043c;
        int i4 = this.f47054n - this.f47052l;
        int i5 = this.f47049i;
        path.quadTo(i4 - i5, this.f47053m, r1 - i5, getMeasuredHeight());
        this.f47057q.reset();
        this.f47057q.moveTo(this.f47054n, 0.0f);
        this.f47057q.quadTo(r1 - this.f47052l, this.f47053m, this.f47054n, getMeasuredHeight());
    }

    public void a() {
        this.f47045e.setShader(new LinearGradient(0.0f, 0.0f, getMeasuredWidth(), 0.0f, Color.parseColor("#66ffffff"), Color.parseColor("#40ffffff"), Shader.TileMode.CLAMP));
        this.f47045e.setStrokeWidth(1.0f);
        this.f47045e.setStyle(Paint.Style.FILL);
        this.f47052l = (this.f47054n / 5) * 4;
        this.f47043c = new Path();
        RectF rectF = new RectF(this.f47054n, 0.0f, getMeasuredWidth(), getMeasuredHeight());
        this.f47055o = rectF;
        this.f47043c.addRect(rectF, Path.Direction.CW);
        this.f47043c.moveTo(this.f47054n, 0.0f);
        this.f47043c.quadTo(r1 - this.f47052l, this.f47053m, this.f47054n, getMeasuredHeight());
    }

    public void b() {
        setWillNotDraw(false);
        a();
        if (this.f47055o == null) {
            return;
        }
        postDelayed(new a(), 16L);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f47043c != null) {
            this.f47060t.setScale(1.0f, 1.0f);
            this.f47060t.postTranslate((this.f47054n - (this.f47052l / 5)) - this.f47049i, this.f47053m);
            canvas.drawBitmap(this.f47059s, this.f47060t, null);
            canvas.drawPath(this.f47043c, this.f47045e);
        }
        Path path = this.f47044d;
        if (path != null) {
            canvas.drawPath(path, this.f47046f);
        }
        Paint paint = this.f47047g;
        if (paint != null) {
            Paint.Align align = Paint.Align.CENTER;
            paint.setTextAlign(align);
            this.f47047g.setTextSize(this.f47061u * 14.0f);
            this.f47047g.setColor(-1);
            this.f47048h.setTextAlign(align);
            this.f47048h.setTextSize(this.f47061u * 14.0f);
            this.f47048h.setColor(-16777216);
            int i2 = 0;
            while (i2 < this.f47058r.length()) {
                float fMeasureText = this.f47047g.measureText(this.f47058r, 0, 1);
                Paint.FontMetrics fontMetrics = this.f47047g.getFontMetrics();
                float f2 = (-fontMetrics.top) + fontMetrics.bottom;
                int i3 = (int) (((this.f47054n * 2) - (this.f47061u * 14.0f)) - (fMeasureText / 2.0f));
                String str = this.f47058r.charAt(i2) + "";
                float f3 = i3;
                float f4 = this.f47061u;
                int i4 = i2 + 1;
                float length = ((int) (this.f47053m - ((this.f47058r.length() * f2) / 2.0f))) + (f2 * i4);
                canvas.drawText(str, f3 + f4, f4 + length, this.f47048h);
                canvas.drawText(this.f47058r.charAt(i2) + "", f3, length, this.f47047g);
                i2 = i4;
            }
        }
    }

    public void a(int i2, int i3) {
        if (this.f47054n == i2 && this.f47053m == i3) {
            return;
        }
        this.f47054n = i2 / 2;
        this.f47053m = i3 / 2;
        a();
        this.f47062v = true;
    }

    public void a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            this.f47041a = str;
        }
        if (!TextUtils.isEmpty(str2)) {
            this.f47042b = str2;
        }
        this.f47058r = this.f47041a + this.f47042b;
        invalidate();
    }

    public boolean a(float f2, float f3) {
        u.e("isInside pos=" + f2 + ";;" + f3);
        PathMeasure pathMeasure = new PathMeasure(this.f47057q, false);
        float[] fArr = new float[2];
        float f4 = f3 - 10.0f;
        while (true) {
            if (f4 >= pathMeasure.getLength()) {
                break;
            }
            pathMeasure.getPosTan(f4, fArr, null);
            u.e("pos=" + fArr[0] + ";" + fArr[1] + ";" + f3);
            float f5 = fArr[1];
            if (((int) f5) > f3 || f5 + 1.0f < f3) {
                f4 += 1.0f;
            } else {
                u.e("getTargetX=" + fArr[0] + "；realX=" + f2);
                if (f2 >= fArr[0] - this.f47049i) {
                    return true;
                }
            }
        }
        return false;
    }
}

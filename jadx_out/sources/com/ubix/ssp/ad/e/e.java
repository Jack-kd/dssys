package com.ubix.ssp.ad.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.graphics.Shader;
import android.text.TextUtils;
import android.view.View;
import com.ubix.ssp.ad.e.a0.u;

/* loaded from: classes5.dex */
public class e extends View {

    /* renamed from: a, reason: collision with root package name */
    private String f46841a;

    /* renamed from: b, reason: collision with root package name */
    private String f46842b;

    /* renamed from: c, reason: collision with root package name */
    Path f46843c;

    /* renamed from: d, reason: collision with root package name */
    Path f46844d;

    /* renamed from: e, reason: collision with root package name */
    Paint f46845e;

    /* renamed from: f, reason: collision with root package name */
    Paint f46846f;

    /* renamed from: g, reason: collision with root package name */
    int f46847g;

    /* renamed from: h, reason: collision with root package name */
    boolean f46848h;

    /* renamed from: i, reason: collision with root package name */
    boolean f46849i;

    /* renamed from: j, reason: collision with root package name */
    private int f46850j;

    /* renamed from: k, reason: collision with root package name */
    private int f46851k;

    /* renamed from: l, reason: collision with root package name */
    private int f46852l;

    /* renamed from: m, reason: collision with root package name */
    private Path f46853m;

    /* renamed from: n, reason: collision with root package name */
    RectF f46854n;

    /* renamed from: o, reason: collision with root package name */
    private String[] f46855o;

    /* renamed from: p, reason: collision with root package name */
    boolean f46856p;

    /* renamed from: q, reason: collision with root package name */
    private Bitmap f46857q;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                e eVar = e.this;
                if (eVar.f46856p) {
                    eVar.b();
                    e.this.invalidate();
                    eVar = e.this;
                    if (eVar.f46849i) {
                        eVar.postDelayed(this, 1000L);
                        e.this.f46849i = false;
                        return;
                    }
                }
                eVar.postDelayed(this, 16L);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public e(Context context) {
        super(context);
        this.f46841a = "";
        this.f46842b = "跳转详情页或第三方应用";
        this.f46843c = null;
        this.f46844d = null;
        this.f46845e = new Paint(1);
        this.f46846f = new Paint(1);
        this.f46847g = 0;
        this.f46848h = true;
        this.f46850j = 300;
        this.f46853m = new Path();
        this.f46855o = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        RectF rectF = new RectF(this.f46854n);
        this.f46847g = this.f46848h ? this.f46847g + 3 : this.f46847g - 4;
        int i2 = this.f46847g;
        int i3 = this.f46850j / 4;
        if (i2 > i3) {
            this.f46847g = i3;
            this.f46849i = false;
            this.f46848h = false;
        }
        if (this.f46847g < 0) {
            this.f46847g = 0;
            this.f46848h = true;
            this.f46849i = true;
        }
        this.f46844d.reset();
        this.f46843c.reset();
        rectF.top -= this.f46847g;
        this.f46843c.addRect(rectF, Path.Direction.CW);
        this.f46843c.moveTo(0.0f, this.f46851k - this.f46847g);
        Path path = this.f46843c;
        int i4 = this.f46852l;
        int i5 = this.f46851k - this.f46850j;
        int i6 = this.f46847g;
        path.quadTo(i4, i5 - i6, i4 * 2, r4 - i6);
        this.f46844d.moveTo(0.0f, this.f46851k - this.f46847g);
        Path path2 = this.f46844d;
        int i7 = this.f46852l;
        int i8 = this.f46851k - this.f46850j;
        int i9 = this.f46847g;
        path2.quadTo(i7, i8 - i9, i7 * 2, r4 - i9);
        this.f46853m.reset();
        this.f46853m.moveTo(0.0f, this.f46851k);
        this.f46853m.quadTo(this.f46852l, r3 - this.f46850j, r1 * 2, this.f46851k);
    }

    public void a() {
        this.f46845e.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, getMeasuredHeight(), Color.parseColor("#80020202"), Color.parseColor("#00d9d9d9"), Shader.TileMode.CLAMP));
        this.f46845e.setStrokeWidth(1.0f);
        this.f46845e.setStyle(Paint.Style.FILL);
        this.f46846f.setColor(-1);
        this.f46846f.setStrokeWidth(4.0f);
        this.f46846f.setStyle(Paint.Style.STROKE);
        this.f46843c = new Path();
        RectF rectF = new RectF(0.0f, this.f46851k, this.f46852l * 2, getMeasuredHeight());
        this.f46854n = rectF;
        this.f46843c.addRect(rectF, Path.Direction.CW);
        this.f46843c.moveTo(0.0f, this.f46851k);
        this.f46843c.quadTo(this.f46852l, r3 - this.f46850j, r1 * 2, this.f46851k);
        Path path = new Path();
        this.f46844d = path;
        path.moveTo(0.0f, this.f46851k);
        this.f46844d.quadTo(this.f46852l, r3 - this.f46850j, r1 * 2, this.f46851k);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Path path = this.f46843c;
        if (path != null) {
            canvas.drawPath(path, this.f46845e);
        }
        Bitmap bitmap = this.f46857q;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, this.f46852l - (bitmap.getWidth() / 2), (float) ((this.f46851k - (this.f46850j * 0.4d)) - this.f46847g), (Paint) null);
        }
        Path path2 = this.f46844d;
        if (path2 != null) {
            canvas.drawPath(path2, this.f46846f);
        }
    }

    public void setSubTitle(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f46842b = str;
        invalidate();
    }

    public void setTitle(String str) {
        this.f46841a = str;
        invalidate();
    }

    public void a(int i2, int i3) {
        if (this.f46852l == i2 && this.f46851k == i3) {
            return;
        }
        this.f46852l = i2 / 2;
        this.f46851k = i3 / 2;
        this.f46850j = (int) (Math.min(i2, i3) * 0.25d);
        a();
        this.f46856p = true;
    }

    public void a(boolean z2) {
        if (z2) {
            this.f46857q = q.a(getContext(), "ubix/ic_full_slide_arrow.webp", 90, true);
        }
        setWillNotDraw(false);
        a();
        if (this.f46854n == null) {
            return;
        }
        postDelayed(new a(), 16L);
    }

    public boolean a(float f2, float f3) {
        u.e("inside 1 x=" + f2 + ";y=" + f3);
        boolean z2 = false;
        PathMeasure pathMeasure = new PathMeasure(this.f46853m, false);
        float[] fArr = new float[2];
        float f4 = f2 - 10.0f;
        u.e("inside 2");
        while (true) {
            if (f4 >= pathMeasure.getLength()) {
                break;
            }
            pathMeasure.getPosTan(f4, fArr, null);
            u.e("pos=" + fArr[0] + ";" + fArr[1] + ";" + f2);
            float f5 = fArr[0];
            if (((int) f5) > f2 || f5 + 1.0f < f2) {
                f4 += 1.0f;
            } else {
                u.e("getTargetX=" + fArr[1] + "；realX=" + f3);
                if (f3 >= fArr[1] - this.f46847g) {
                    z2 = true;
                }
            }
        }
        u.e("inside 3");
        return z2;
    }
}

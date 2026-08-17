package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import com.czhj.sdk.common.utils.Dips;

/* renamed from: com.sigmob.sdk.base.views.e, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1293e extends View {

    /* renamed from: a, reason: collision with root package name */
    private Paint f36946a;

    /* renamed from: b, reason: collision with root package name */
    private Paint f36947b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f36948c;

    /* renamed from: d, reason: collision with root package name */
    private Paint f36949d;

    /* renamed from: e, reason: collision with root package name */
    private Path f36950e;

    /* renamed from: f, reason: collision with root package name */
    private Path f36951f;

    /* renamed from: g, reason: collision with root package name */
    private Path f36952g;

    /* renamed from: h, reason: collision with root package name */
    private Path f36953h;

    /* renamed from: i, reason: collision with root package name */
    private RectF f36954i;

    /* renamed from: j, reason: collision with root package name */
    private float f36955j;

    /* renamed from: k, reason: collision with root package name */
    private float f36956k;

    /* renamed from: l, reason: collision with root package name */
    private float f36957l;

    /* renamed from: m, reason: collision with root package name */
    private PointF f36958m;

    /* renamed from: n, reason: collision with root package name */
    private int f36959n;

    /* renamed from: o, reason: collision with root package name */
    private PointF f36960o;

    /* renamed from: p, reason: collision with root package name */
    private PointF f36961p;

    /* renamed from: q, reason: collision with root package name */
    private PathMeasure f36962q;

    /* renamed from: r, reason: collision with root package name */
    private PathMeasure f36963r;

    /* renamed from: s, reason: collision with root package name */
    private float f36964s;

    /* renamed from: t, reason: collision with root package name */
    private Path f36965t;

    public C1293e(Context context) {
        super(context);
        this.f36964s = 0.2f;
        Paint paint = new Paint(1);
        this.f36946a = paint;
        paint.setColor(-3355444);
        Paint paint2 = this.f36946a;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        Paint paint3 = new Paint(1);
        this.f36947b = paint3;
        paint3.setColor(-1);
        this.f36947b.setStyle(style);
        Paint paint4 = new Paint(1);
        this.f36948c = paint4;
        paint4.setColor(-1);
        this.f36948c.setStyle(style);
        Paint paint5 = new Paint(1);
        this.f36949d = paint5;
        paint5.setColor(-3355444);
        this.f36949d.setStyle(Paint.Style.FILL);
        this.f36965t = new Path();
        this.f36950e = new Path();
        this.f36951f = new Path();
        this.f36952g = new Path();
        this.f36953h = new Path();
        this.f36962q = new PathMeasure();
        this.f36963r = new PathMeasure();
        a();
    }

    private void a() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.base.views.e.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                C1293e.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                C1293e.this.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        int height = getHeight();
        int width = getWidth();
        if (height == 0 || width == 0) {
            return;
        }
        int iDipsToIntPixels = Dips.dipsToIntPixels(0.5f, getContext());
        float f2 = height;
        float f3 = iDipsToIntPixels;
        float f4 = f2 / (100.0f * f3);
        float fMax = Math.max((int) (f4 * 3.0f * f3), iDipsToIntPixels * 2);
        this.f36955j = fMax;
        this.f36959n = (int) (f4 * (0.4f / f4) * f2);
        this.f36956k = 0.7853982f;
        this.f36957l = 3.0f * fMax;
        this.f36947b.setStrokeWidth(fMax);
        this.f36946a.setStrokeWidth(this.f36955j);
        this.f36948c.setStrokeWidth(this.f36955j);
        float f5 = f2 / 2.0f;
        float f6 = f5 - ((this.f36957l * f2) / this.f36959n);
        this.f36958m = new PointF(width / 2.0f, f5);
        PointF pointF = this.f36958m;
        float f7 = pointF.x;
        float f8 = pointF.y;
        this.f36954i = new RectF(f7 - f6, f8 - f6, f7 + f6, f8 + f6);
        this.f36960o = new PointF(this.f36958m.x - ((float) (Math.cos(this.f36956k) * (this.f36954i.width() / 2.0f))), this.f36958m.y - ((float) (Math.sin(this.f36956k) * (this.f36954i.height() / 2.0f))));
        this.f36961p = new PointF(this.f36958m.x + ((float) (Math.cos(this.f36956k) * (this.f36954i.width() / 2.0f))), this.f36958m.y - ((float) (Math.sin(this.f36956k) * (this.f36954i.height() / 2.0f))));
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Paint paint;
        int i2;
        super.onDraw(canvas);
        if (this.f36954i == null) {
            return;
        }
        double degrees = Math.toDegrees(this.f36956k);
        float f2 = (float) (180.0d - (2.0d * degrees));
        canvas.drawArc(this.f36954i, (float) (degrees + 180.0d), f2, false, this.f36946a);
        this.f36950e.reset();
        this.f36950e.lineTo(0.0f, 0.0f);
        this.f36965t.reset();
        this.f36965t.lineTo(0.0f, 0.0f);
        this.f36950e.arcTo(this.f36954i, -90.0f, (-f2) / 2.0f, true);
        this.f36962q.setPath(this.f36950e, false);
        this.f36962q.getSegment(0.0f, this.f36962q.getLength() * this.f36964s, this.f36965t, true);
        canvas.drawPath(this.f36965t, this.f36947b);
        this.f36951f.reset();
        this.f36951f.lineTo(0.0f, 0.0f);
        this.f36965t.reset();
        this.f36965t.lineTo(0.0f, 0.0f);
        this.f36951f.arcTo(this.f36954i, -90.0f, f2 / 2.0f, true);
        this.f36963r.setPath(this.f36951f, false);
        this.f36963r.getSegment(0.0f, this.f36963r.getLength() * this.f36964s, this.f36965t, true);
        canvas.drawPath(this.f36965t, this.f36948c);
        if (this.f36964s == 1.0f) {
            paint = this.f36949d;
            i2 = -1;
        } else {
            paint = this.f36949d;
            i2 = -3355444;
        }
        paint.setColor(i2);
        this.f36952g.reset();
        this.f36952g.lineTo(0.0f, 0.0f);
        a(this.f36952g, this.f36958m, this.f36960o, this.f36957l);
        canvas.drawPath(this.f36952g, this.f36949d);
        this.f36953h.reset();
        this.f36953h.lineTo(0.0f, 0.0f);
        b(this.f36953h, this.f36958m, this.f36961p, this.f36957l);
        canvas.drawPath(this.f36953h, this.f36949d);
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        a();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
    }

    public C1293e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36964s = 0.2f;
        a();
    }

    private void b(Path path, PointF pointF, PointF pointF2, float f2) {
        float f3 = (pointF2.y - pointF.y) / (pointF2.x - pointF.x);
        float f4 = 0.5f * f2;
        double d2 = f3;
        PointF pointF3 = new PointF(pointF2.x + (((float) Math.sin(1.5707963267948966d - Math.atan(d2))) * f4), pointF2.y + (((float) Math.cos(1.5707963267948966d - Math.atan(d2))) * f4));
        PointF pointF4 = new PointF(pointF2.x - (((float) Math.sin(1.5707963267948966d - Math.atan(d2))) * f4), pointF2.y - (f4 * ((float) Math.cos(1.5707963267948966d - Math.atan(d2)))));
        double d3 = 1.0f / f3;
        PointF pointF5 = new PointF(pointF4.x + (((float) Math.sin(Math.atan(d3) + 2.0943951023931953d)) * f2), pointF4.y + (f2 * ((float) Math.cos(Math.atan(d3) + 2.0943951023931953d))));
        path.moveTo(pointF3.x, pointF3.y);
        path.lineTo(pointF4.x, pointF4.y);
        path.lineTo(pointF5.x, pointF5.y);
        path.close();
    }

    public void a(float f2) {
        this.f36964s = f2;
        invalidate();
    }

    public C1293e(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f36964s = 0.2f;
        a();
    }

    private void a(Path path, PointF pointF, PointF pointF2, float f2) {
        float f3 = (pointF2.y - pointF.y) / (pointF2.x - pointF.x);
        float f4 = 0.5f * f2;
        double d2 = f3;
        PointF pointF3 = new PointF(pointF2.x + (((float) Math.sin(1.5707963267948966d - Math.atan(d2))) * f4), pointF2.y + (((float) Math.cos(1.5707963267948966d - Math.atan(d2))) * f4));
        PointF pointF4 = new PointF(pointF2.x - (((float) Math.sin(1.5707963267948966d - Math.atan(d2))) * f4), pointF2.y - (f4 * ((float) Math.cos(1.5707963267948966d - Math.atan(d2)))));
        double d3 = 1.0f / f3;
        PointF pointF5 = new PointF(pointF4.x - (((float) Math.sin(1.0471975511965976d - Math.atan(d3))) * f2), pointF4.y + (f2 * ((float) Math.cos(1.0471975511965976d - Math.atan(d3)))));
        path.moveTo(pointF3.x, pointF3.y);
        path.lineTo(pointF4.x, pointF4.y);
        path.lineTo(pointF5.x, pointF5.y);
        path.close();
    }
}

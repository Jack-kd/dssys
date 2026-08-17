package com.meishu.sdk.meishu_ad.splash;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.platform.ms.splash.ShakeUtil;
import com.sigmob.sdk.base.common.C1244a;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public class SplashSkipView extends View {

    /* renamed from: a, reason: collision with root package name */
    public Paint f32494a;

    /* renamed from: b, reason: collision with root package name */
    public Paint f32495b;

    /* renamed from: c, reason: collision with root package name */
    public Paint f32496c;

    /* renamed from: d, reason: collision with root package name */
    public float f32497d;

    /* renamed from: e, reason: collision with root package name */
    public float f32498e;

    /* renamed from: f, reason: collision with root package name */
    public float f32499f;

    /* renamed from: g, reason: collision with root package name */
    public float f32500g;

    /* renamed from: h, reason: collision with root package name */
    public float f32501h;

    /* renamed from: i, reason: collision with root package name */
    public RectF f32502i;

    /* renamed from: j, reason: collision with root package name */
    public float f32503j;

    /* renamed from: k, reason: collision with root package name */
    public int f32504k;

    /* renamed from: l, reason: collision with root package name */
    public int f32505l;

    /* renamed from: m, reason: collision with root package name */
    public int f32506m;

    /* renamed from: n, reason: collision with root package name */
    public Handler f32507n;

    /* renamed from: o, reason: collision with root package name */
    public b f32508o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f32509p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f32510q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f32511r;

    /* renamed from: s, reason: collision with root package name */
    public Runnable f32512s;

    public class a extends com.meishu.sdk.core.safe.l {
        public a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            SplashSkipView splashSkipView = SplashSkipView.this;
            splashSkipView.f32504k += 100;
            splashSkipView.invalidate();
            SplashSkipView splashSkipView2 = SplashSkipView.this;
            int i2 = splashSkipView2.f32504k;
            int i3 = splashSkipView2.f32505l;
            if (i2 > i3) {
                splashSkipView2.a(false);
                return;
            }
            int i4 = i3 - i2;
            splashSkipView2.f32507n.postDelayed(splashSkipView2.f32512s, 100L);
            b bVar = SplashSkipView.this.f32508o;
            if (bVar != null) {
                bVar.onTick(i4);
            }
            SplashSkipView splashSkipView3 = SplashSkipView.this;
            if (i4 >= splashSkipView3.f32505l - splashSkipView3.f32506m || splashSkipView3.getVisibility() == 0) {
                return;
            }
            SplashSkipView splashSkipView4 = SplashSkipView.this;
            if (splashSkipView4.f32510q) {
                splashSkipView4.setVisibility(0);
            }
        }
    }

    public interface b {
        void onSkip();

        void onTick(long j2);

        void onTimeOver();
    }

    public SplashSkipView(Context context) {
        super(context);
        this.f32497d = 2.2f;
        this.f32498e = 12.1f;
        this.f32499f = 10.0f;
        this.f32500g = 18.0f;
        this.f32504k = 0;
        this.f32505l = 5000;
        this.f32506m = 100;
        this.f32509p = false;
        this.f32510q = true;
        new AtomicInteger(0);
        this.f32512s = new a();
    }

    public final void a() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f2 = this.f32497d;
        float f3 = displayMetrics.density;
        this.f32497d = f2 * f3;
        this.f32498e *= f3;
        this.f32499f *= f3;
        this.f32500g *= f3;
        Paint paint = new Paint();
        this.f32494a = paint;
        paint.setTextSize(this.f32498e);
        this.f32494a.setColor(-1);
        this.f32494a.setAntiAlias(true);
        this.f32494a.setShadowLayer(displayMetrics.density * 3.0f, 0.0f, 0.0f, -7829368);
        Paint paint2 = new Paint();
        this.f32495b = paint2;
        paint2.setColor(Color.parseColor("#b7ffffff"));
        this.f32495b.setAntiAlias(true);
        this.f32495b.setStrokeWidth(this.f32497d);
        Paint paint3 = this.f32495b;
        Paint.Style style = Paint.Style.STROKE;
        paint3.setStyle(style);
        Paint paint4 = new Paint();
        this.f32496c = paint4;
        paint4.setColor(Color.parseColor("#42c1f0"));
        this.f32496c.setAntiAlias(true);
        this.f32496c.setStrokeWidth(this.f32497d);
        this.f32496c.setStyle(style);
        this.f32503j = this.f32494a.measureText("跳过");
        this.f32501h = this.f32500g;
        float f4 = this.f32497d / 2.0f;
        float f5 = 0.0f + f4 + 1.0f;
        float f6 = ((this.f32501h * 2.0f) - f4) - 1.0f;
        this.f32502i = new RectF(f5, f5, f6, f6);
        if (this.f32507n != null) {
            return;
        }
        this.f32507n = new Handler();
    }

    public void b() {
        try {
            this.f32507n.removeCallbacks(this.f32512s);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void c() {
        this.f32509p = true;
        b();
        this.f32507n.post(this.f32512s);
    }

    public int getShowTime() {
        return this.f32506m;
    }

    public int getTotalTime() {
        return this.f32505l;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f32511r = true;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f32511r = false;
        ShakeUtil.getInstance().a();
        b();
        this.f32508o = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawArc(this.f32502i, 0.0f, 360.0f, false, this.f32495b);
        canvas.save();
        canvas.rotate(-90.0f, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        canvas.drawArc(this.f32502i, 0.0f, this.f32504k > this.f32506m ? (((r13 - r2) * 1.0f) / (this.f32505l - r2)) * 360.0f : 0.0f, false, this.f32496c);
        canvas.restore();
        Paint.FontMetrics fontMetrics = this.f32494a.getFontMetrics();
        canvas.drawText("跳过", (getMeasuredWidth() / 2) - (this.f32503j / 2.0f), (int) ((getMeasuredHeight() / 2) - ((fontMetrics.top + fontMetrics.bottom) / 2.0f)), this.f32494a);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            size = (int) (this.f32501h * 2.0f);
        }
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = (int) (this.f32501h * 2.0f);
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            setAlpha(0.5f);
        } else if (action == 1) {
            a(true);
        }
        return true;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (this.f32511r && z2 && this.f32509p && AdSdk.adConfig().splashClickPause()) {
            ShakeUtil.getInstance().a(true);
            ShakeUtil.getInstance().f();
            LogUtil.d("SplashSkipView", "resume");
            c();
            return;
        }
        if (this.f32511r && !z2 && this.f32509p && AdSdk.adConfig().splashClickPause()) {
            LogUtil.d("SplashSkipView", C1244a.f35682j);
            ShakeUtil.getInstance().e();
            b();
        }
    }

    public void setOnSkipListener(b bVar) {
        this.f32508o = bVar;
    }

    public void setShow(boolean z2) {
        this.f32510q = z2;
    }

    public void setTotalTime(int i2) {
        if (i2 <= 0) {
            return;
        }
        this.f32505l = i2;
    }

    public SplashSkipView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32497d = 2.2f;
        this.f32498e = 12.1f;
        this.f32499f = 10.0f;
        this.f32500g = 18.0f;
        this.f32504k = 0;
        this.f32505l = 5000;
        this.f32506m = 100;
        this.f32509p = false;
        this.f32510q = true;
        new AtomicInteger(0);
        this.f32512s = new a();
        a();
    }

    public void a(boolean z2) {
        b();
        setAlpha(1.0f);
        b bVar = this.f32508o;
        if (bVar != null) {
            if (z2) {
                bVar.onSkip();
            } else {
                bVar.onTimeOver();
            }
            this.f32508o = null;
        }
    }
}

package com.smartdigimkt.sdk.basead.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.v1.l6;
import com.smartdigimkt.v1.m6;
import com.smartdigimkt.v1.n6;

/* loaded from: classes5.dex */
public class SpreadAnimLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f43653a;

    /* renamed from: b, reason: collision with root package name */
    public ValueAnimator f43654b;

    /* renamed from: c, reason: collision with root package name */
    public n6 f43655c;

    /* renamed from: d, reason: collision with root package name */
    public RectF f43656d;

    /* renamed from: e, reason: collision with root package name */
    public int f43657e;

    /* renamed from: f, reason: collision with root package name */
    public int f43658f;

    /* renamed from: g, reason: collision with root package name */
    public final int f43659g;

    /* renamed from: h, reason: collision with root package name */
    public final Paint f43660h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f43661i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f43662j;

    public SpreadAnimLayout(Context context) {
        this(context, null, 0);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (!this.f43661i || !this.f43662j) {
            super.draw(canvas);
            return;
        }
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
        this.f43653a.setAlpha(this.f43655c.f44561b);
        RectF rectF = this.f43655c.f44560a;
        float f2 = this.f43657e;
        canvas.drawRoundRect(rectF, f2, f2, this.f43653a);
        RectF rectF2 = this.f43656d;
        float f3 = this.f43657e;
        canvas.drawRoundRect(rectF2, f3, f3, this.f43660h);
        canvas.restoreToCount(iSaveLayer);
        super.draw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int i4 = this.f43658f;
        setPadding(i4, i4, i4, i4);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (this.f43661i) {
            if (i2 == 0) {
                post(new l6(this));
                return;
            }
            ValueAnimator valueAnimator = this.f43654b;
            if (valueAnimator != null) {
                valueAnimator.end();
            }
        }
    }

    public void setMaxSpreadDistance(int i2) {
        this.f43658f = i2;
    }

    public void setRoundRadius(int i2) {
        this.f43657e = i2;
    }

    public void startSpreadAnimation() {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        this.f43661i = true;
        if (!this.f43662j) {
            this.f43656d = new RectF(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
            RectF rectF = new RectF(this.f43656d);
            n6 n6Var = new n6();
            this.f43655c = n6Var;
            n6Var.f44561b = 255;
            n6Var.f44560a = rectF;
            this.f43658f = Math.min(this.f43658f, Math.min((getWidth() - childAt.getWidth()) / 2, (getHeight() - childAt.getHeight()) / 2));
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.f43654b = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(this.f43659g);
            this.f43654b.setRepeatMode(1);
            this.f43654b.setRepeatCount(-1);
            this.f43654b.setInterpolator(new AccelerateDecelerateInterpolator());
            this.f43654b.addUpdateListener(new m6(this));
            this.f43662j = true;
        }
        this.f43654b.start();
    }

    public SpreadAnimLayout(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SpreadAnimLayout(Context context, @Nullable AttributeSet attributeSet, int i2) throws Resources.NotFoundException {
        super(context, attributeSet, i2);
        this.f43661i = true;
        setWillNotDraw(false);
        int color = getResources().getColor(k.a(context, "color_spread", "color"));
        this.f43658f = getResources().getDimensionPixelSize(k.a(getContext(), "myoffer_spread_max_distance_normal", "dimen"));
        this.f43657e = k.a(context, 4.0f);
        this.f43659g = 1000;
        Paint paint = new Paint();
        this.f43653a = paint;
        paint.setAntiAlias(true);
        paint.setAlpha(255);
        paint.setColor(color);
        Paint paint2 = new Paint(1);
        this.f43660h = paint2;
        paint2.setColor(-1);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }
}

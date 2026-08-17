package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.beizi.fusion.R;
import com.beizi.fusion.jn;

/* loaded from: classes2.dex */
public class ScopeBackArrowView extends View {

    /* renamed from: a, reason: collision with root package name */
    private int f12783a;

    /* renamed from: b, reason: collision with root package name */
    private int f12784b;

    /* renamed from: c, reason: collision with root package name */
    private float f12785c;

    /* renamed from: d, reason: collision with root package name */
    private float f12786d;

    /* renamed from: e, reason: collision with root package name */
    private int f12787e;

    /* renamed from: f, reason: collision with root package name */
    private float f12788f;

    /* renamed from: g, reason: collision with root package name */
    private int f12789g;

    /* renamed from: h, reason: collision with root package name */
    private Paint f12790h;

    /* renamed from: i, reason: collision with root package name */
    private Path f12791i;

    public ScopeBackArrowView(Context context) {
        this(context, null);
    }

    private void a(Context context, AttributeSet attributeSet, int i2) {
        b(context, attributeSet, i2);
        Paint paint = new Paint();
        this.f12790h = paint;
        paint.setColor(this.f12787e);
        this.f12790h.setStyle(Paint.Style.STROKE);
        this.f12790h.setAntiAlias(true);
        this.f12790h.setStrokeWidth(this.f12788f);
        this.f12790h.setStrokeJoin(Paint.Join.ROUND);
    }

    private void b(Context context, AttributeSet attributeSet, int i2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.adscope_back_arrow_view, i2, 0);
        this.f12787e = typedArrayObtainStyledAttributes.getColor(R.styleable.adscope_back_arrow_view_adscope_bav_color, Color.argb(255, 0, 0, 0));
        this.f12788f = typedArrayObtainStyledAttributes.getDimension(R.styleable.adscope_back_arrow_view_adscope_bav_stroke_width, jn.a.a(context, 2.0f));
        this.f12789g = typedArrayObtainStyledAttributes.getInt(R.styleable.adscope_back_arrow_view_adscope_bav_arrow_style, 1);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate((this.f12783a / 2.0f) - this.f12785c, this.f12784b / 2.0f);
        canvas.rotate(45.0f);
        if (this.f12791i == null) {
            this.f12791i = new Path();
        }
        this.f12791i.reset();
        this.f12791i.lineTo(0.0f, this.f12786d);
        this.f12791i.moveTo(0.0f, 0.0f);
        this.f12791i.lineTo(-this.f12786d, 0.0f);
        if (this.f12789g == 1) {
            this.f12791i.moveTo(0.0f, 0.0f);
            Path path = this.f12791i;
            float f2 = this.f12786d;
            path.lineTo(f2, -f2);
        }
        this.f12791i.close();
        canvas.drawPath(this.f12791i, this.f12790h);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        setMeasuredDimension(a(i2), a(i3));
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f12783a = i2;
        this.f12784b = i3;
        float fMin = Math.min(i2, i3) / 2.0f;
        int i6 = this.f12789g;
        if (i6 == 1) {
            this.f12785c = fMin / 3.0f;
        } else if (i6 == 2) {
            this.f12785c = fMin / 4.0f;
        }
        this.f12786d = fMin * 0.63f;
    }

    public void setViewColor(int i2) {
        Paint paint = this.f12790h;
        if (paint != null) {
            paint.setColor(i2);
            invalidate();
        }
    }

    public ScopeBackArrowView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScopeBackArrowView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet, i2);
    }

    private int a(int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(150, size);
        }
        return 150;
    }
}

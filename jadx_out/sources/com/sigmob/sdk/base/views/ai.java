package com.sigmob.sdk.base.views;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import com.czhj.sdk.common.utils.Dips;

/* loaded from: classes4.dex */
public class ai extends View {

    /* renamed from: a, reason: collision with root package name */
    private Paint f36775a;

    /* renamed from: b, reason: collision with root package name */
    private RectF f36776b;

    /* renamed from: c, reason: collision with root package name */
    private float f36777c;

    /* renamed from: d, reason: collision with root package name */
    private String f36778d;

    /* renamed from: e, reason: collision with root package name */
    private Paint f36779e;

    /* renamed from: f, reason: collision with root package name */
    private Path f36780f;

    /* renamed from: g, reason: collision with root package name */
    private Paint f36781g;

    /* renamed from: h, reason: collision with root package name */
    private Path f36782h;

    /* renamed from: i, reason: collision with root package name */
    private int f36783i;

    /* renamed from: j, reason: collision with root package name */
    private int f36784j;

    /* renamed from: k, reason: collision with root package name */
    private int f36785k;

    /* renamed from: l, reason: collision with root package name */
    private float f36786l;

    /* renamed from: m, reason: collision with root package name */
    private int f36787m;

    /* renamed from: n, reason: collision with root package name */
    private int f36788n;

    /* renamed from: o, reason: collision with root package name */
    private int f36789o;

    /* renamed from: p, reason: collision with root package name */
    private int f36790p;

    /* renamed from: q, reason: collision with root package name */
    private ValueAnimator f36791q;

    /* renamed from: r, reason: collision with root package name */
    private ValueAnimator f36792r;
    private String title;

    public ai(Context context) {
        super(context);
        this.f36786l = 1.0f;
        a();
    }

    private void b() {
        ValueAnimator valueAnimator = this.f36791q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(-this.f36785k, this.f36787m + this.f36788n);
        this.f36791q = valueAnimatorOfInt;
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.ai.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ai.this.f36783i = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                ai.this.d();
                ai.this.invalidate();
            }
        });
        this.f36791q.setDuration(800L);
        this.f36791q.setRepeatCount(-1);
        this.f36791q.setRepeatMode(1);
        this.f36791q.start();
        ValueAnimator valueAnimator2 = this.f36792r;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 1.15f);
        this.f36792r = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.ai.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                ai.this.f36786l = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
            }
        });
        this.f36792r.setDuration(1000L);
        this.f36792r.setRepeatCount(-1);
        this.f36792r.setRepeatMode(2);
        this.f36792r.start();
    }

    private void c() {
        this.f36780f = new Path();
        this.f36781g = new Paint();
        this.f36784j = this.f36788n;
        this.f36785k = Dips.dipsToIntPixels(60.0f, getContext());
        this.f36781g.setShader(new LinearGradient(0.0f, this.f36784j, this.f36785k, 0.0f, new int[]{a(-1, 0.2f), a(-1, 0.5f), a(-1, 0.2f)}, new float[]{0.2f, 0.8f, 1.0f}, Shader.TileMode.MIRROR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f36780f.reset();
        this.f36780f.moveTo((this.f36785k / 2.0f) + this.f36783i, 0.0f);
        this.f36780f.lineTo(this.f36785k + this.f36783i, 0.0f);
        this.f36780f.lineTo((this.f36785k / 2.0f) + this.f36783i, this.f36784j);
        this.f36780f.lineTo(this.f36783i + 0.0f, this.f36784j);
        this.f36780f.close();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f36791q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f36792r;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f2;
        super.onDraw(canvas);
        this.f36775a.setStyle(Paint.Style.STROKE);
        this.f36775a.setColor(-1);
        this.f36775a.setAlpha(204);
        this.f36775a.setStrokeWidth(this.f36777c);
        RectF rectF = this.f36776b;
        float f3 = this.f36777c;
        rectF.set(f3, f3, this.f36787m - (f3 * 2.0f), this.f36788n - (f3 * 2.0f));
        Path path = this.f36782h;
        RectF rectF2 = this.f36776b;
        int i2 = this.f36790p;
        Path.Direction direction = Path.Direction.CCW;
        path.addRoundRect(rectF2, i2, i2, direction);
        canvas.drawPath(this.f36782h, this.f36775a);
        Paint paint = this.f36775a;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.f36775a.setColor(-16777216);
        this.f36775a.setAlpha(76);
        this.f36782h.reset();
        Path path2 = this.f36782h;
        RectF rectF3 = this.f36776b;
        path2.addRoundRect(rectF3, rectF3.height() / 2.0f, this.f36776b.height() / 2.0f, direction);
        canvas.drawPath(this.f36782h, this.f36775a);
        int i3 = this.f36788n;
        float f4 = i3 * 0.3f * this.f36786l;
        float f5 = this.f36787m - ((i3 * 0.3f) * 2.0f);
        this.f36775a.setColor(-1);
        this.f36775a.setStyle(style);
        canvas.drawCircle(f5, this.f36788n / 2.0f, f4, this.f36775a);
        this.f36775a.setColor(-16777216);
        this.f36775a.setTextSize(TypedValue.applyDimension(2, this.f36786l * 16.0f, getResources().getDisplayMetrics()));
        Paint paint2 = this.f36775a;
        Typeface typeface = Typeface.DEFAULT_BOLD;
        paint2.setTypeface(typeface);
        float fMeasureText = f5 - (this.f36775a.measureText("GO") / 1.5f);
        canvas.drawText("GO", fMeasureText, ((this.f36788n / 2.0f) + ((this.f36775a.getFontMetrics().bottom - this.f36775a.getFontMetrics().top) / 2.0f)) - this.f36775a.getFontMetrics().bottom, this.f36775a);
        float fMeasureText2 = this.f36775a.measureText("GO") * 0.4f;
        Path path3 = new Path();
        float f6 = fMeasureText2 / 4.0f;
        float f7 = fMeasureText2 / 2.0f;
        path3.moveTo(this.f36775a.measureText("GO") + fMeasureText + f6, (this.f36788n / 2.0f) - f7);
        path3.lineTo(this.f36775a.measureText("GO") + fMeasureText + fMeasureText2, this.f36788n / 2.0f);
        path3.lineTo(fMeasureText + this.f36775a.measureText("GO") + f6, (this.f36788n / 2.0f) + f7);
        path3.close();
        canvas.drawPath(path3, this.f36775a);
        this.f36779e.setStyle(style);
        this.f36779e.setColor(-1);
        int i4 = 5;
        if (TextUtils.isEmpty(this.title)) {
            f2 = 0.0f;
        } else {
            this.f36779e.setTextSize(TypedValue.applyDimension(2, 20.0f, getResources().getDisplayMetrics()));
            this.f36779e.setTypeface(typeface);
            String str = this.title;
            f2 = (this.f36779e.getFontMetrics().bottom - this.f36779e.getFontMetrics().top) * 1.5f;
            int i5 = 5;
            while (true) {
                if (i5 >= this.title.length()) {
                    break;
                }
                float fMeasureText3 = this.f36779e.measureText(this.title, 0, i5) + f2;
                RectF rectF4 = this.f36776b;
                if (fMeasureText3 > ((rectF4.right - rectF4.left) - f2) - f4) {
                    str = this.title.substring(0, i5 - 2) + "...";
                    break;
                }
                i5++;
            }
            canvas.drawText(str, f2, ((this.f36788n / 2.0f) - (this.f36779e.getFontMetrics().bottom - this.f36779e.getFontMetrics().top)) - this.f36779e.getFontMetrics().top, this.f36779e);
        }
        if (!TextUtils.isEmpty(this.f36778d)) {
            this.f36779e.setTextSize(TypedValue.applyDimension(2, 16.0f, getResources().getDisplayMetrics()));
            this.f36779e.setTypeface(Typeface.DEFAULT);
            float f8 = f2 > 0.0f ? f2 : (this.f36779e.getFontMetrics().bottom - this.f36779e.getFontMetrics().top) * 1.5f;
            String str2 = this.f36778d;
            while (true) {
                if (i4 >= this.f36778d.length()) {
                    break;
                }
                float fMeasureText4 = this.f36779e.measureText(this.f36778d, 0, i4) + f2;
                RectF rectF5 = this.f36776b;
                if (fMeasureText4 > ((rectF5.right - rectF5.left) - f2) - f4) {
                    str2 = this.f36778d.substring(0, i4 - 2) + "...";
                    break;
                }
                i4++;
            }
            canvas.drawText(str2, f8, (this.f36788n / 2.0f) + (this.f36779e.getFontMetrics().bottom - this.f36779e.getFontMetrics().top), this.f36779e);
        }
        canvas.clipPath(this.f36782h);
        canvas.drawPath(this.f36780f, this.f36781g);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f36787m = i2;
        this.f36788n = (int) (i3 * 0.8f);
        this.f36789o = i2 / 2;
        this.f36790p = i3 / 2;
        c();
        b();
    }

    public ai(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36786l = 1.0f;
        a();
    }

    private int a(int i2, float f2) {
        return Color.argb((int) (Color.alpha(i2) * f2), Color.red(i2), Color.green(i2), Color.blue(i2));
    }

    public ai(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f36786l = 1.0f;
        a();
    }

    private void a() {
        setBackgroundColor(SupportMenu.CATEGORY_MASK);
        this.f36775a = new Paint(1);
        this.f36779e = new Paint(1);
        this.f36776b = new RectF();
        this.f36782h = new Path();
        this.f36777c = Dips.dipsToIntPixels(2.0f, getContext());
        setBackgroundColor(0);
    }

    public void a(String str, String str2) {
        this.title = str;
        this.f36778d = str2;
    }
}

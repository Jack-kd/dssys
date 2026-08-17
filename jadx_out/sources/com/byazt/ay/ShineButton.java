package com.byazt.ay;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.view.animation.LinearInterpolator;
import android.widget.Button;

@com.byazt.kj.hp(hp = {0, 1, 525, 1456})
/* loaded from: classes2.dex */
public class ShineButton extends Button {

    /* renamed from: a, reason: collision with root package name */
    public float f18341a;
    public Paint hp;

    /* renamed from: j, reason: collision with root package name */
    public float f18342j;
    public Matrix jx;

    /* renamed from: l, reason: collision with root package name */
    public LinearGradient f18343l;

    /* renamed from: w, reason: collision with root package name */
    public ValueAnimator f18344w;

    public ShineButton(Context context) {
        super(context);
        this.hp = new Paint(1);
        this.jx = new Matrix();
        this.f18342j = 0.0f;
        this.f18341a = 0.3f;
        hp(context);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f18344w;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f18344w.removeAllListeners();
            this.f18344w.removeAllUpdateListeners();
            this.f18344w = null;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Matrix matrix = this.jx;
        float f2 = this.f18342j;
        matrix.setTranslate(f2, f2);
        this.f18343l.setLocalMatrix(this.jx);
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.hp);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        float f2 = i3 * this.f18341a;
        float f3 = -f2;
        LinearGradient linearGradient = new LinearGradient(f3, f3, f2, f2, new int[]{0, Color.parseColor("#88ffffff"), Color.parseColor("#88ffffff"), 0}, new float[]{0.0f, 0.2f, 0.8f, 1.0f}, Shader.TileMode.CLAMP);
        this.f18343l = linearGradient;
        this.hp.setShader(linearGradient);
        hp();
    }

    private void hp(Context context) {
        this.hp.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
        this.hp.setColor(-1);
    }

    private void hp() {
        ValueAnimator valueAnimator = this.f18344w;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f18344w.removeAllListeners();
            this.f18344w.removeAllUpdateListeners();
            this.f18344w = null;
        }
        float fSqrt = (float) Math.sqrt((getWidth() * getWidth()) + (getHeight() * getHeight()));
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(-fSqrt, fSqrt);
        this.f18344w = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(2000L);
        this.f18344w.setRepeatCount(-1);
        this.f18344w.setInterpolator(new LinearInterpolator());
        this.f18344w.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.ay.ShineButton.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ShineButton.this.f18342j = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                ShineButton.this.invalidate();
            }
        });
        this.f18344w.start();
    }
}

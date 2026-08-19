package com.byazt.wnd;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 2151})
/* loaded from: classes3.dex */
public class RingProgressView extends View {

    /* renamed from: a, reason: collision with root package name */
    public int f27031a;
    public boolean eb;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public float f27032j;
    public RectF jx;

    /* renamed from: l, reason: collision with root package name */
    public Paint f27033l;

    /* renamed from: w, reason: collision with root package name */
    public ValueAnimator f27034w;

    public RingProgressView(Context context) {
        super(context);
        this.f27031a = TTAdConstant.STYLE_SIZE_RADIO_3_2;
        this.hp = context;
        Paint paint = new Paint();
        this.f27033l = paint;
        paint.setAntiAlias(true);
        this.f27033l.setStyle(Paint.Style.STROKE);
        this.f27033l.setStrokeWidth(10.0f);
        this.f27033l.setColor(Color.parseColor("#80FFFFFF"));
        this.jx = new RectF();
    }

    public void jx() {
        this.eb = true;
        invalidate();
    }

    public void l() {
        ValueAnimator valueAnimator = this.f27034w;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.eb) {
            return;
        }
        canvas.drawArc(this.jx, 270.0f, this.f27032j, false, this.f27033l);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.jx.set(5.0f, 5.0f, i2 - 5, i3 - 5);
    }

    public void setDuration(int i2) {
        this.f27031a = i2;
    }

    public void hp() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 360.0f);
        this.f27034w = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f27031a);
        this.f27034w.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.wnd.RingProgressView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RingProgressView.this.f27032j = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RingProgressView.this.requestLayout();
            }
        });
        this.f27034w.start();
    }
}

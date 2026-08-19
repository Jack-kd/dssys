package com.byazt.ebw;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_RETRY_COUNT, 1976})
/* loaded from: classes2.dex */
public class AnimationButton extends TextView implements l {
    public hp hp;

    /* renamed from: j, reason: collision with root package name */
    public float f19389j;
    public float jx;

    /* renamed from: l, reason: collision with root package name */
    public float f19390l;

    /* renamed from: w, reason: collision with root package name */
    public float f19391w;

    public AnimationButton(Context context) {
        super(context);
        this.hp = new hp();
    }

    @Override // com.byazt.ebw.l
    public float getMarqueeValue() {
        return this.f19389j;
    }

    @Override // com.byazt.ebw.l
    public float getRippleValue() {
        return this.f19390l;
    }

    @Override // com.byazt.ebw.l
    public float getShineValue() {
        return this.jx;
    }

    public float getStretchValue() {
        return this.f19391w;
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.hp.hp(canvas, this, this);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.hp.hp(this, i2, i3);
    }

    public void setMarqueeValue(float f2) {
        this.f19389j = f2;
        postInvalidate();
    }

    public void setRippleValue(float f2) {
        this.f19390l = f2;
        postInvalidate();
    }

    public void setShineValue(float f2) {
        this.jx = f2;
        postInvalidate();
    }

    public void setStretchValue(float f2) {
        this.f19391w = f2;
        this.hp.hp(this, f2);
    }
}

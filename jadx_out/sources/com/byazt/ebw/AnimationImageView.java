package com.byazt.ebw;

import android.content.Context;
import android.graphics.Canvas;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.byazt.nw.eb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_RETRY_COUNT, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_ERROR_EXIT})
/* loaded from: classes2.dex */
public class AnimationImageView extends ImageView implements l {

    /* renamed from: a, reason: collision with root package name */
    public eb f19392a;
    public hp hp;

    /* renamed from: j, reason: collision with root package name */
    public float f19393j;
    public float jx;

    /* renamed from: l, reason: collision with root package name */
    public float f19394l;

    /* renamed from: w, reason: collision with root package name */
    public float f19395w;

    public AnimationImageView(Context context) {
        super(context);
        this.hp = new hp();
    }

    public eb getBrickNativeValue() {
        return this.f19392a;
    }

    @Override // com.byazt.ebw.l
    public float getMarqueeValue() {
        return this.f19393j;
    }

    @Override // com.byazt.ebw.l
    public float getRippleValue() {
        return this.f19394l;
    }

    @Override // com.byazt.ebw.l
    public float getShineValue() {
        return this.jx;
    }

    public float getStretchValue() {
        return this.f19395w;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        eb ebVar;
        super.onDraw(canvas);
        this.hp.hp(canvas, this, this);
        if (getRippleValue() == 0.0f || (ebVar = this.f19392a) == null || ebVar.l() <= 0) {
            return;
        }
        ((ViewGroup) getParent()).setClipChildren(false);
        ((ViewGroup) getParent().getParent()).setClipChildren(false);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.hp.hp(this, i2, i3);
    }

    public void setBrickNativeValue(eb ebVar) {
        this.f19392a = ebVar;
    }

    public void setMarqueeValue(float f2) {
        this.f19393j = f2;
        postInvalidate();
    }

    public void setRippleValue(float f2) {
        this.f19394l = f2;
        postInvalidate();
    }

    public void setShineValue(float f2) {
        this.jx = f2;
        postInvalidate();
    }

    public void setStretchValue(float f2) {
        this.f19395w = f2;
        this.hp.hp(this, f2);
    }
}

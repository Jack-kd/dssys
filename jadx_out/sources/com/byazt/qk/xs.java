package com.byazt.qk;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 64, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes3.dex */
public class xs {

    /* renamed from: e, reason: collision with root package name */
    public float f24899e;
    public float gu;
    public View hp;
    public float jx;

    /* renamed from: l, reason: collision with root package name */
    public float f24902l;

    /* renamed from: q, reason: collision with root package name */
    public float f24903q;

    /* renamed from: s, reason: collision with root package name */
    public float f24904s;

    /* renamed from: j, reason: collision with root package name */
    public float f24900j = 0.0f;

    /* renamed from: w, reason: collision with root package name */
    public float f24906w = 0.0f;

    /* renamed from: a, reason: collision with root package name */
    public float f24898a = 0.0f;
    public float eb = 0.0f;
    public boolean jl = false;
    public boolean zy = false;

    /* renamed from: k, reason: collision with root package name */
    public boolean f24901k = false;

    /* renamed from: v, reason: collision with root package name */
    public boolean f24905v = false;

    public xs(View view) {
        this.hp = view;
    }

    public boolean hp(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f24900j = motionEvent.getX();
            this.f24906w = motionEvent.getY();
            return false;
        }
        if (action != 2) {
            return false;
        }
        this.f24898a = motionEvent.getX();
        this.eb = motionEvent.getY();
        if (Math.abs(this.f24898a - this.f24900j) < 5.0f || Math.abs(this.eb - this.f24906w) < 5.0f) {
            this.f24905v = false;
            return false;
        }
        this.f24905v = true;
        return true;
    }

    public boolean l(MotionEvent motionEvent) {
        this.f24902l = ((ViewGroup) this.hp.getParent()).getWidth();
        this.jx = ((ViewGroup) this.hp.getParent()).getHeight();
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2) {
                this.zy = false;
                this.f24901k = false;
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                float f2 = x2 - this.f24900j;
                float f3 = y2 - this.f24906w;
                this.f24904s = this.hp.getLeft() + f2;
                this.f24903q = this.hp.getTop() + f3;
                this.f24899e = this.hp.getRight() + f2;
                this.gu = this.hp.getBottom() + f3;
                if (this.f24904s < 0.0f) {
                    this.f24901k = true;
                    this.f24904s = 0.0f;
                    this.f24899e = this.hp.getWidth() + 0.0f;
                }
                float f4 = this.f24899e;
                float f5 = this.f24902l;
                if (f4 > f5) {
                    this.zy = true;
                    this.f24899e = f5;
                    this.f24904s = f5 - this.hp.getWidth();
                }
                if (this.f24903q < 0.0f) {
                    this.f24903q = 0.0f;
                    this.gu = 0.0f + this.hp.getHeight();
                }
                float f6 = this.gu;
                float f7 = this.jx;
                if (f6 > f7) {
                    this.gu = f7;
                    this.f24903q = f7 - this.hp.getHeight();
                }
                this.hp.offsetLeftAndRight((int) f2);
                this.hp.offsetTopAndBottom((int) f3);
                if (this.f24901k) {
                    View view = this.hp;
                    view.offsetLeftAndRight(-view.getLeft());
                }
                if (this.zy) {
                    this.hp.offsetLeftAndRight((int) (this.f24902l - r7.getRight()));
                }
            }
        } else {
            if (!this.f24905v) {
                return false;
            }
            if (((int) motionEvent.getRawX()) > this.f24902l / 2.0f) {
                this.jl = false;
                this.hp.animate().setInterpolator(new DecelerateInterpolator()).setDuration(300L).x(this.f24902l - this.hp.getWidth()).start();
                this.hp.offsetLeftAndRight((int) (this.f24902l - r7.getRight()));
            } else {
                this.jl = true;
                this.hp.animate().setInterpolator(new DecelerateInterpolator()).setDuration(300L).x(0.0f).start();
                View view2 = this.hp;
                view2.offsetLeftAndRight(-view2.getLeft());
            }
            this.hp.invalidate();
        }
        return true;
    }
}

package com.byazt.mw;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 512, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s implements eb {

    /* renamed from: a, reason: collision with root package name */
    public float f23309a;
    public View hp;

    /* renamed from: j, reason: collision with root package name */
    public float f23310j;
    public float jx;

    /* renamed from: l, reason: collision with root package name */
    public float f23311l;

    /* renamed from: w, reason: collision with root package name */
    public float f23312w;

    public s(View view) {
        this.hp = view;
    }

    @Override // com.byazt.mw.eb
    public float getRipple() {
        return this.jx;
    }

    @Override // com.byazt.mw.eb
    public float getRubIn() {
        return this.f23309a;
    }

    @Override // com.byazt.mw.eb
    public float getShine() {
        return this.f23310j;
    }

    @Override // com.byazt.mw.eb
    public float getStretch() {
        return this.f23312w;
    }

    public void hp(float f2) {
        View view = this.hp;
        if (view == null) {
            return;
        }
        this.f23311l = f2;
        Drawable background = view.getBackground();
        if (background instanceof GradientDrawable) {
            ((GradientDrawable) background).setCornerRadius(f2);
        }
    }

    public void j(float f2) {
        this.f23312w = f2;
        this.hp.postInvalidate();
    }

    public void jx(float f2) {
        View view = this.hp;
        if (view == null) {
            return;
        }
        this.f23310j = f2;
        view.postInvalidate();
    }

    public void l(float f2) {
        View view = this.hp;
        if (view == null) {
            return;
        }
        this.jx = f2;
        view.postInvalidate();
    }

    public void w(float f2) {
        this.f23309a = f2;
        this.hp.postInvalidate();
    }

    public float hp() {
        return this.f23311l;
    }

    public void hp(int i2) {
        View view = this.hp;
        if (view == null) {
            return;
        }
        Drawable background = view.getBackground();
        if (background instanceof GradientDrawable) {
            ((GradientDrawable) background).setColor(i2);
        } else if (background instanceof ColorDrawable) {
            ((ColorDrawable) background.mutate()).setColor(i2);
        }
    }
}

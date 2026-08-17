package com.byazt.wnd;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.eh.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1730})
/* loaded from: classes3.dex */
public class ClickSlideUpView2 extends SlideUpView {

    /* renamed from: a, reason: collision with root package name */
    public AnimatorSet f26967a;
    public TextView hp;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f26968j;
    public ImageView jx;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f26969l;

    /* renamed from: w, reason: collision with root package name */
    public int f26970w;

    public ClickSlideUpView2(Context context) {
        super(context);
        this.f26967a = new AnimatorSet();
        l(context);
    }

    private void j() {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, "alphaColor", 0, 60);
        objectAnimatorOfInt.setInterpolator(new LinearInterpolator());
        objectAnimatorOfInt.setDuration(2000L);
        objectAnimatorOfInt.setRepeatCount(-1);
        objectAnimatorOfInt.start();
    }

    private void l(Context context) {
        addView(l.l(context));
        this.f26969l = (ImageView) findViewById(2097610751);
        this.jx = (ImageView) findViewById(2097610750);
        this.f26968j = (ImageView) findViewById(2097610749);
        this.hp = (TextView) findViewById(2097610748);
    }

    public float getAlphaColor() {
        return this.f26970w;
    }

    @Override // com.byazt.wnd.SlideUpView
    public void hp(Context context) {
    }

    public void setAlphaColor(int i2) {
        if (i2 < 0 || i2 > 60) {
            return;
        }
        int i3 = i2 + MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO;
        ImageView imageView = this.f26968j;
        int iRgb = Color.rgb(i3, i3, i3);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(iRgb, mode);
        int i4 = ((i2 + 20) % 60) + MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO;
        this.jx.setColorFilter(Color.rgb(i4, i4, i4), mode);
        int i5 = ((i2 + 40) % 60) + MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO;
        this.f26969l.setColorFilter(Color.rgb(i5, i5, i5), mode);
    }

    public void setButtonText(String str) {
        if (this.hp == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.hp.setText(str);
    }

    @Override // com.byazt.wnd.SlideUpView
    public void hp() {
        j();
    }

    @Override // com.byazt.wnd.SlideUpView
    public void l() {
        this.f26967a.cancel();
    }
}

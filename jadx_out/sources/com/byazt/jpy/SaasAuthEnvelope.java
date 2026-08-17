package com.byazt.jpy;

import android.content.Context;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.byazt.ij.jx;
import com.byazt.kj.hp;
import com.byazt.ws.l;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_CONNECT_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_AUDIO_FIRSTSEG_CONNECT_TIME})
/* loaded from: classes.dex */
public class SaasAuthEnvelope extends RelativeLayout {
    public AnimationSet hp;
    public ImageView jx;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f21667l;

    public SaasAuthEnvelope(@NonNull Context context) {
        super(context);
        hp(context);
        setVisibility(8);
    }

    private void hp(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        linearLayout.setId(2114387464);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        addView(linearLayout);
        this.jx = new ImageView(context);
        try {
            l.hp(jx.hp("saas_red_envelope.webp")).to(this.jx);
        } catch (Error unused) {
        }
        linearLayout.addView(this.jx, new LinearLayout.LayoutParams(-2, -2));
        ImageView imageView = new ImageView(context);
        this.f21667l = imageView;
        try {
            v.hp(context, "tt_saas_close", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        } catch (Error unused2) {
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = xh.jx(context, 25.0f);
        linearLayout.addView(this.f21667l, layoutParams2);
    }

    public void l() {
        AnimationSet animationSet = this.hp;
        if (animationSet != null) {
            animationSet.cancel();
            this.hp = null;
        }
        setVisibility(8);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        l();
    }

    public void setOnCloseClickListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.f21667l;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
        }
    }

    public void hp() {
        setVisibility(0);
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setFillAfter(true);
        scaleAnimation.setDuration(800L);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.5f, 1.0f);
        alphaAnimation.setDuration(800L);
        AnimationSet animationSet = new AnimationSet(true);
        this.hp = animationSet;
        animationSet.addAnimation(alphaAnimation);
        this.hp.addAnimation(scaleAnimation);
        startAnimation(this.hp);
    }
}

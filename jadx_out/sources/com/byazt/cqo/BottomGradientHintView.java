package com.byazt.cqo;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.animation.CycleInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.sq.s;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1233, 1234})
/* loaded from: classes2.dex */
public class BottomGradientHintView extends LinearLayout {
    public ImageView hp;

    /* renamed from: l, reason: collision with root package name */
    public AnimatorSet f18956l;

    public BottomGradientHintView(Context context) {
        super(context);
        this.f18956l = new AnimatorSet();
        hp(context);
    }

    private void hp(Context context) {
        setLayoutParams(new LinearLayout.LayoutParams(-1, hp(context, 80.0f)));
        setOrientation(1);
        setGravity(17);
        setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, Color.parseColor("#cc000000")}));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        TextView textView = new TextView(context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setText("向上滑动浏览更多");
        textView.setTextSize(14.0f);
        textView.setTextColor(-1);
        ImageView imageView = new ImageView(context);
        this.hp = imageView;
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        v.hp(context, "tt_splash_slide_up_10", (View) this.hp, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(hp(context, 8.0f), hp(context, 8.0f));
        layoutParams.leftMargin = hp(context, 10.0f);
        this.hp.setLayoutParams(layoutParams);
        linearLayout.addView(textView);
        linearLayout.addView(this.hp);
        addView(linearLayout);
    }

    private void jx() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.hp, "translationY", 0.0f, s.hp(getContext(), -3.0f));
        objectAnimatorOfFloat.setInterpolator(new CycleInterpolator(1.0f));
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.hp, "alpha", 1.0f, 0.8f);
        objectAnimatorOfFloat2.setDuration(1000L);
        objectAnimatorOfFloat2.setInterpolator(new CycleInterpolator(1.0f));
        objectAnimatorOfFloat2.setRepeatCount(-1);
        this.f18956l.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        this.f18956l.setDuration(1000L);
        this.f18956l.start();
    }

    public void l() {
        AnimatorSet animatorSet = this.f18956l;
        if (animatorSet == null || !animatorSet.isRunning()) {
            return;
        }
        this.f18956l.cancel();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        l();
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (i2 == 8) {
            l();
        }
        super.setVisibility(i2);
    }

    public void hp() {
        jx();
    }

    private int hp(Context context, float f2) {
        return xh.jx(context, f2);
    }
}

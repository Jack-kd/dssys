package com.byazt.qfg;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.byazt.jz.sz;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_CODEC_STOP_TIMEOUT})
/* loaded from: classes3.dex */
public class SlideUpView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public AnimatorSet f24565a;
    public AnimatorSet eb;
    public ImageView hp;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f24566j;
    public ImageView jx;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f24567l;

    /* renamed from: s, reason: collision with root package name */
    public AnimatorSet f24568s;

    /* renamed from: w, reason: collision with root package name */
    public AnimatorSet f24569w;

    public SlideUpView(Context context) {
        super(context);
        l(context);
    }

    private void l(Context context) {
        if (context == null) {
            context = sz.getContext();
        }
        View viewHp = hp(context);
        if (viewHp == null) {
            return;
        }
        addView(viewHp);
    }

    public AnimatorSet getSlideUpAnimatorSet() {
        return this.f24569w;
    }

    private View hp(Context context) {
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout.setGravity(16);
        relativeLayout.setClipChildren(false);
        relativeLayout.setLayoutParams(layoutParams);
        ImageView imageView = new ImageView(context);
        this.jx = imageView;
        imageView.setId(2114387639);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()));
        layoutParams2.addRule(14);
        layoutParams2.addRule(8, 2114387761);
        layoutParams2.bottomMargin = xh.jx(context, -24.0f);
        v.hp(context, "tt_splash_slide_up_circle", (View) this.jx, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        this.jx.setAlpha(0.0f);
        this.jx.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.jx);
        ImageView imageView2 = new ImageView(context);
        this.f24567l = imageView2;
        imageView2.setId(2114387939);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 0.0f, resources.getDisplayMetrics()));
        layoutParams3.addRule(14);
        layoutParams3.addRule(1, 2114387761);
        layoutParams3.addRule(8, 2114387761);
        v.hp(context, "tt_splash_slide_up_bg", (View) this.f24567l, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        layoutParams3.leftMargin = xh.jx(context, -7.0f);
        this.f24567l.setLayoutParams(layoutParams3);
        relativeLayout.addView(this.f24567l);
        ImageView imageView3 = new ImageView(context);
        this.hp = imageView3;
        imageView3.setId(2114387644);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 91.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 68.0f, resources.getDisplayMetrics()));
        layoutParams4.addRule(14);
        layoutParams4.addRule(1, 2114387761);
        layoutParams4.addRule(8, 2114387761);
        v.hp(context, "tt_splash_slide_up_finger", (View) this.hp, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        layoutParams4.leftMargin = xh.jx(context, -7.0f);
        layoutParams4.bottomMargin = xh.jx(context, -20.0f);
        this.hp.setAlpha(0.0f);
        this.hp.setLayoutParams(layoutParams4);
        relativeLayout.addView(this.hp);
        ImageView imageView4 = new ImageView(context);
        this.f24566j = imageView4;
        imageView4.setId(2114387761);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 14.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 124.0f, resources.getDisplayMetrics()));
        layoutParams5.addRule(14);
        v.hp(context, "tt_splash_slide_up_arrow", (View) this.f24566j, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        this.f24566j.setLayoutParams(layoutParams5);
        relativeLayout.addView(this.f24566j);
        return relativeLayout;
    }

    public void l() {
        AnimatorSet animatorSet = this.f24569w;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = this.eb;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        AnimatorSet animatorSet3 = this.f24565a;
        if (animatorSet3 != null) {
            animatorSet3.cancel();
        }
        AnimatorSet animatorSet4 = this.f24568s;
        if (animatorSet4 != null) {
            animatorSet4.cancel();
        }
    }

    public void hp() {
        this.f24565a = new AnimatorSet();
        this.eb = new AnimatorSet();
        this.f24568s = new AnimatorSet();
        this.f24569w = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.hp, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.hp, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.hp, "translationY", 0.0f, xh.jx(getContext(), -110.0f));
        objectAnimatorOfFloat3.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, xh.jx(getContext(), 110.0f));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.qfg.SlideUpView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Integer num = (Integer) valueAnimator.getAnimatedValue();
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) SlideUpView.this.f24567l.getLayoutParams();
                layoutParams.height = num.intValue();
                SlideUpView.this.f24567l.setLayoutParams(layoutParams);
            }
        });
        valueAnimatorOfInt.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f24567l, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.f24567l, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.jx, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.jx, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(this.jx, "scaleX", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat9 = ObjectAnimator.ofFloat(this.jx, "scaleY", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat10 = ObjectAnimator.ofFloat(this.jx, "translationY", 0.0f, xh.jx(getContext(), -110.0f));
        objectAnimatorOfFloat10.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        this.f24565a.setDuration(50L);
        this.f24568s.setDuration(1500L);
        this.eb.setDuration(50L);
        this.f24565a.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat7, objectAnimatorOfFloat5);
        this.eb.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat6, objectAnimatorOfFloat8, objectAnimatorOfFloat9, objectAnimatorOfFloat4);
        this.f24568s.playTogether(objectAnimatorOfFloat3, valueAnimatorOfInt, objectAnimatorOfFloat10);
        this.f24569w.playSequentially(this.eb, this.f24568s, this.f24565a);
    }
}

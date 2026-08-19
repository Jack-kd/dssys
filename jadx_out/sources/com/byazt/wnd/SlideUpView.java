package com.byazt.wnd;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.eh.l;
import com.byazt.sq.s;
import com.byazt.wkx.j;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, MediaPlayer.MEDIA_PLAYER_OPTION_CODEC_STOP_TIMEOUT})
/* loaded from: classes3.dex */
public class SlideUpView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public AnimatorSet f27058a;

    /* renamed from: e, reason: collision with root package name */
    public String f27059e;
    public AnimatorSet eb;
    public int gu;
    public ImageView hp;

    /* renamed from: j, reason: collision with root package name */
    public TextView f27060j;
    public ImageView jx;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f27061l;

    /* renamed from: q, reason: collision with root package name */
    public AnimatorSet f27062q;

    /* renamed from: s, reason: collision with root package name */
    public AnimatorSet f27063s;

    /* renamed from: w, reason: collision with root package name */
    public TextView f27064w;

    public SlideUpView(Context context) {
        super(context);
        this.f27058a = new AnimatorSet();
        this.eb = new AnimatorSet();
        this.f27063s = new AnimatorSet();
        this.f27062q = new AnimatorSet();
        this.gu = 100;
        hp(context);
    }

    public AnimatorSet getSlideUpAnimatorSet() {
        return this.f27058a;
    }

    public void jx() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.hp, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.hp, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.hp, "translationY", 0.0f, s.hp(getContext(), -this.gu));
        objectAnimatorOfFloat3.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, (int) s.hp(getContext(), this.gu));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.wnd.SlideUpView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (SlideUpView.this.jx != null) {
                    Integer num = (Integer) valueAnimator.getAnimatedValue();
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) SlideUpView.this.jx.getLayoutParams();
                    layoutParams.height = num.intValue();
                    SlideUpView.this.jx.setLayoutParams(layoutParams);
                }
            }
        });
        valueAnimatorOfInt.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.jx, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.jx, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.f27061l, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.f27061l, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(this.f27061l, "scaleX", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat9 = ObjectAnimator.ofFloat(this.f27061l, "scaleY", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat10 = ObjectAnimator.ofFloat(this.f27061l, "translationY", 0.0f, s.hp(getContext(), -this.gu));
        objectAnimatorOfFloat10.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        this.eb.setDuration(50L);
        this.f27062q.setDuration(1500L);
        this.f27063s.setDuration(50L);
        this.eb.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat7, objectAnimatorOfFloat5);
        this.f27063s.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat6, objectAnimatorOfFloat8, objectAnimatorOfFloat9, objectAnimatorOfFloat4);
        this.f27062q.playTogether(objectAnimatorOfFloat3, valueAnimatorOfInt, objectAnimatorOfFloat10);
        this.f27058a.playSequentially(this.f27063s, this.f27062q, this.eb);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        l();
    }

    public void setGuideText(String str) {
        TextView textView = this.f27060j;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setSlideText(String str) {
        if (this.f27064w != null) {
            if (TextUtils.isEmpty(str)) {
                this.f27064w.setText("");
            } else {
                this.f27064w.setText(str);
            }
        }
    }

    public void hp(Context context) {
        if (context == null) {
            context = j.getContext();
        }
        if ("5".equals(this.f27059e)) {
            addView(l.a(context));
            this.gu = (int) (this.gu * 1.25d);
        } else {
            addView(l.w(context));
        }
        this.hp = (ImageView) findViewById(2097610734);
        this.f27061l = (ImageView) findViewById(2097610735);
        this.f27060j = (TextView) findViewById(2097610730);
        this.jx = (ImageView) findViewById(2097610733);
        this.f27064w = (TextView) findViewById(2097610731);
    }

    public void l() {
        try {
            AnimatorSet animatorSet = this.f27058a;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.f27063s;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            AnimatorSet animatorSet3 = this.eb;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            AnimatorSet animatorSet4 = this.f27062q;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
        } catch (Exception e2) {
            u.hp(e2.getMessage());
        }
    }

    public SlideUpView(Context context, String str) {
        super(context);
        this.f27058a = new AnimatorSet();
        this.eb = new AnimatorSet();
        this.f27063s = new AnimatorSet();
        this.f27062q = new AnimatorSet();
        this.gu = 100;
        setClipChildren(false);
        this.f27059e = str;
        hp(context);
    }

    public void hp() {
        jx();
        this.f27058a.start();
        this.f27058a.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.wnd.SlideUpView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                SlideUpView.this.postDelayed(new Runnable() { // from class: com.byazt.wnd.SlideUpView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SlideUpView.this.f27058a.start();
                    }
                }, 200L);
            }
        });
    }
}

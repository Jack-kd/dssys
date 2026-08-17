package com.byazt.wnd;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.sq.q;
import com.byazt.sq.s;
import com.byazt.ymw.nu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1479})
/* loaded from: classes3.dex */
public class CircleLongPressView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public AnimatorSet f26953a;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public TextView f26954j;
    public ImageView jx;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f26955l;

    /* renamed from: w, reason: collision with root package name */
    public RingProgressView f26956w;

    public CircleLongPressView(Context context) {
        super(context);
        this.f26953a = new AnimatorSet();
        this.hp = context;
        w();
        a();
    }

    private void a() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.jx, "scaleX", 1.0f, 0.9f);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        objectAnimatorOfFloat.setRepeatMode(2);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.jx, "scaleY", 1.0f, 0.9f);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f26953a.setDuration(800L);
        this.f26953a.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
    }

    private void w() {
        FrameLayout frameLayout = new FrameLayout(this.hp);
        this.f26956w = new RingProgressView(this.hp);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) s.hp(this.hp, 95.0f), (int) s.hp(this.hp, 95.0f));
        layoutParams.gravity = 17;
        frameLayout.addView(this.f26956w, layoutParams);
        this.f26955l = new ImageView(this.hp);
        int iHp = nu.hp(this.hp, 60.0f);
        this.f26955l.setImageDrawable(q.hp(1, null, null, new int[]{iHp, iHp}, Integer.valueOf(nu.hp(this.hp, 1.0f)), Integer.valueOf(Color.parseColor("#80FFFFFF"))));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) s.hp(this.hp, 75.0f), (int) s.hp(this.hp, 75.0f));
        layoutParams2.gravity = 17;
        frameLayout.addView(this.f26955l, layoutParams2);
        this.jx = new ImageView(this.hp);
        int iHp2 = nu.hp(this.hp, 50.0f);
        this.jx.setImageDrawable(q.hp(1, Integer.valueOf(Color.parseColor("#80FFFFFF")), null, new int[]{iHp2, iHp2}, null, null));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) s.hp(this.hp, 63.0f), (int) s.hp(this.hp, 63.0f));
        layoutParams3.gravity = 17;
        frameLayout.addView(this.jx, layoutParams3);
        addView(frameLayout);
        TextView textView = new TextView(this.hp);
        this.f26954j = textView;
        textView.setTextColor(-1);
        this.f26954j.setMaxLines(1);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 81;
        addView(this.f26954j, layoutParams4);
    }

    public void hp() {
        this.f26953a.start();
    }

    public void j() {
        this.f26956w.l();
        this.f26956w.jx();
    }

    public void jx() {
        this.f26956w.hp();
    }

    public void l() {
        this.f26953a.cancel();
    }

    public void setGuideText(String str) {
        this.f26954j.setText(str);
    }
}

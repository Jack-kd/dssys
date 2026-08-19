package com.byazt.moz;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.view.PointerIconCompat;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 746, PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW})
/* loaded from: classes3.dex */
public class SmallSlideView extends RelativeLayout {
    public final View hp;

    /* renamed from: j, reason: collision with root package name */
    public ObjectAnimator f23157j;
    public ObjectAnimator jx;

    /* renamed from: l, reason: collision with root package name */
    public final l f23158l;

    @com.byazt.kj.hp(hp = {0, 1, 746, 1669})
    public static class hp extends FrameLayout {
        public hp(Context context) {
            super(context);
            ImageView imageView = new ImageView(context);
            v.hp(context, "tt_splash_slide_up_finger", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.leftMargin = xh.jx(context, 38.0f);
            layoutParams.bottomMargin = xh.jx(context, 10.0f);
            ImageView imageView2 = new ImageView(context);
            v.hp(context, "tt_splash_slide_up_circle", imageView2, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            int iJx = xh.jx(context, 30.0f);
            layoutParams2.setMargins(iJx, iJx, iJx, iJx);
            addView(imageView2, layoutParams2);
            addView(imageView, layoutParams);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 746, 1977})
    public static class l extends FrameLayout {
        public l(Context context) {
            super(context);
            ImageView imageView = new ImageView(context);
            v.hp(context, "tt_splash_slide_up_bg", (View) imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            addView(imageView);
        }
    }

    public SmallSlideView(Context context) {
        super(context);
        View hpVar = new hp(context);
        this.hp = hpVar;
        l lVar = new l(context);
        this.f23158l = lVar;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(xh.jx(context, 10.0f), 0);
        layoutParams.setMargins(0, xh.jx(context, 8.0f), 0, xh.jx(context, 8.0f));
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        addView(lVar, layoutParams);
        addView(hpVar);
        setLayoutParams(new LinearLayout.LayoutParams(xh.jx(context, 80.0f), xh.jx(context, 80.0f)));
    }

    public void hp() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.hp, "translationY", xh.jx(getContext(), 30.0f), xh.jx(getContext(), -20.0f));
        this.jx = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(800L);
        this.jx.setRepeatCount(1);
        this.jx.setRepeatMode(1);
        this.jx.start();
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this.f23158l, "newHeight", xh.jx(getContext(), 0.0f), xh.jx(getContext(), 48.0f));
        this.f23157j = objectAnimatorOfInt;
        objectAnimatorOfInt.setDuration(800L);
        this.f23157j.setRepeatCount(1);
        this.f23157j.setRepeatMode(1);
        this.f23157j.start();
    }

    public void l() {
        ObjectAnimator objectAnimator = this.jx;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimator2 = this.f23157j;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
    }
}

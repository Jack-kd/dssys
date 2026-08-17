package com.byazt.wnd;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.sq.s;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 743})
/* loaded from: classes3.dex */
public class ClickInteractView extends FrameLayout {
    public ImageView hp;

    /* renamed from: l, reason: collision with root package name */
    public AnimatorSet f26965l;

    public ClickInteractView(Context context) {
        super(context);
        jx();
        j();
    }

    private void j() {
        this.f26965l = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.hp, "scaleX", 1.0f, 1.5f, 1.0f, 1.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(2000L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.hp, "scaleY", 1.0f, 1.5f, 1.0f, 1.0f, 1.0f);
        objectAnimatorOfFloat2.setDuration(2000L);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        this.f26965l.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
    }

    private void jx() {
        this.hp = new ImageView(getContext());
        v.hp(getContext(), "tt_white_hand", this.hp, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        int iHp = (int) s.hp(getContext(), 20.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iHp, iHp);
        layoutParams.gravity = 17;
        addView(this.hp, layoutParams);
    }

    public void hp() {
        AnimatorSet animatorSet = this.f26965l;
        if (animatorSet != null) {
            animatorSet.start();
        }
    }

    public void l() {
        AnimatorSet animatorSet = this.f26965l;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }
}

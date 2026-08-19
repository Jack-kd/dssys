package com.byazt.wnd;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.CycleInterpolator;
import android.widget.TextView;
import com.byazt.eh.l;
import com.byazt.sq.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1481})
/* loaded from: classes3.dex */
public class ClickSlideUpView extends SlideUpView {
    public TextView hp;
    public AnimatorSet jx;

    /* renamed from: l, reason: collision with root package name */
    public View f26966l;

    public ClickSlideUpView(Context context) {
        super(context);
        this.jx = new AnimatorSet();
        l(context);
    }

    private void j() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f26966l, "translationY", 0.0f, s.hp(getContext(), -3.0f));
        objectAnimatorOfFloat.setInterpolator(new CycleInterpolator(1.0f));
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f26966l, "alpha", 1.0f, 0.8f);
        objectAnimatorOfFloat2.setDuration(1000L);
        objectAnimatorOfFloat2.setInterpolator(new CycleInterpolator(1.0f));
        objectAnimatorOfFloat2.setRepeatCount(-1);
        this.jx.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        this.jx.setDuration(1000L);
        this.jx.start();
    }

    private void l(Context context) {
        View viewHp = l.hp(context);
        this.f26966l = viewHp;
        addView(viewHp);
        setClipChildren(false);
        this.hp = (TextView) findViewById(2097610748);
    }

    @Override // com.byazt.wnd.SlideUpView
    public void hp(Context context) {
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
        this.jx.cancel();
    }
}

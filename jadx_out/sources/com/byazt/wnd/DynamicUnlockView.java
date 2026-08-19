package com.byazt.wnd;

import android.content.Context;
import android.text.TextUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.eh.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1325})
/* loaded from: classes3.dex */
public class DynamicUnlockView extends FrameLayout {
    public final TextView hp;

    /* renamed from: j, reason: collision with root package name */
    public final RotateAnimation f26985j;
    public final FlowLightView jx;

    /* renamed from: l, reason: collision with root package name */
    public final ImageView f26986l;

    public DynamicUnlockView(Context context) {
        super(context);
        addView(l.j(context));
        this.hp = (TextView) findViewById(2097610742);
        this.f26986l = (ImageView) findViewById(2097610745);
        this.jx = (FlowLightView) findViewById(2097610744);
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 30.0f, 1, 0.65f, 1, 0.9f);
        this.f26985j = rotateAnimation;
        rotateAnimation.setDuration(300L);
        rotateAnimation.setRepeatMode(2);
        rotateAnimation.setRepeatCount(1);
        rotateAnimation.setInterpolator(new LinearInterpolator());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable getHaloAnimation() {
        return new Runnable() { // from class: com.byazt.wnd.DynamicUnlockView.1
            @Override // java.lang.Runnable
            public void run() {
                DynamicUnlockView.this.f26986l.startAnimation(DynamicUnlockView.this.f26985j);
                DynamicUnlockView.this.postDelayed(new Runnable() { // from class: com.byazt.wnd.DynamicUnlockView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DynamicUnlockView.this.jx.hp(4);
                    }
                }, 100L);
                DynamicUnlockView.this.postDelayed(new Runnable() { // from class: com.byazt.wnd.DynamicUnlockView.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        DynamicUnlockView.this.jx.hp(4);
                    }
                }, 300L);
                DynamicUnlockView dynamicUnlockView = DynamicUnlockView.this;
                dynamicUnlockView.postDelayed(dynamicUnlockView.getHaloAnimation(), 1200L);
            }
        };
    }

    public void setText(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "滑动或点击跳转至详情页或第三方应用";
        }
        TextView textView = this.hp;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void hp() {
        postDelayed(getHaloAnimation(), 300L);
    }

    public void l() {
        this.f26985j.cancel();
    }
}

package com.byazt.wnd;

import android.content.Context;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import com.byazt.eh.l;
import com.byazt.nw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 2121})
/* loaded from: classes3.dex */
public class ClickSlideUpShakeView extends SlideUpView {
    public ShakeClickView hp;

    public ClickSlideUpShakeView(Context context, e eVar, boolean z2, int i2) {
        super(context);
        hp(context, eVar, z2, i2);
    }

    private void hp(Context context, e eVar, boolean z2, int i2) {
        ShakeClickView shakeClickView = new ShakeClickView(context, l.jx(context), eVar, z2, i2);
        this.hp = shakeClickView;
        addView(shakeClickView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        this.hp.setLayoutParams(layoutParams);
    }

    public ShakeClickView getShakeView() {
        return this.hp;
    }

    public void setShakeText(String str) {
        if (this.hp == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.hp.setShakeText("");
        } else {
            this.hp.setShakeText(str);
        }
    }
}

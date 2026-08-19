package com.byazt.qo;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.ClickSlideUpView;
import com.byazt.wnd.ClickSlideUpView2;
import com.byazt.wnd.SlideUpView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends xs<ClickSlideUpView> {
    public w(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar) {
        super(context, dynamicBaseWidget, ebVar);
        hp(ebVar);
    }

    private void hp(com.byazt.nw.eb ebVar) {
        this.hp = new ClickSlideUpView2(this.f25009l);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 81;
        this.hp.setLayoutParams(layoutParams);
        SlideUpView slideUpView = this.hp;
        if (slideUpView instanceof ClickSlideUpView2) {
            ((ClickSlideUpView2) slideUpView).setButtonText(this.f25008j.zx());
        }
    }

    @Override // com.byazt.qo.xs
    public void j() {
    }

    @Override // com.byazt.qo.xs, com.byazt.qo.eb
    public void l() {
        this.hp.l();
    }

    @Override // com.byazt.qo.xs, com.byazt.qo.eb
    public void hp() {
        this.hp.hp();
    }
}

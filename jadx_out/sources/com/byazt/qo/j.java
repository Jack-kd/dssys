package com.byazt.qo;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.ClickSlideUpView;
import com.byazt.wnd.SlideUpView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 38})
/* loaded from: classes3.dex */
public class j extends xs<ClickSlideUpView> {
    public j(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar) {
        super(context, dynamicBaseWidget, ebVar);
        hp(ebVar);
    }

    private void hp(com.byazt.nw.eb ebVar) {
        this.hp = new ClickSlideUpView(this.f25009l);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.byazt.sq.s.hp(this.f25009l, ebVar.yr());
        this.hp.setLayoutParams(layoutParams);
        this.hp.setSlideText(this.f25008j.zx());
        SlideUpView slideUpView = this.hp;
        if (slideUpView instanceof ClickSlideUpView) {
            ((ClickSlideUpView) slideUpView).setButtonText(this.f25008j.e());
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

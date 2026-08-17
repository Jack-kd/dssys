package com.byazt.qo;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.BluePressInteractView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 28})
/* loaded from: classes3.dex */
public class hp implements eb {
    public BluePressInteractView hp;

    public hp(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar) {
        double dPc = ebVar.pc();
        dPc = dPc == 0.0d ? 1.0d : dPc;
        double dFi = ebVar.fi();
        int dynamicWidth = (int) (dynamicBaseWidget.getDynamicWidth() * 0.32d * dPc);
        int dynamicWidth2 = (int) (dynamicBaseWidget.getDynamicWidth() * 0.32d * (dFi != 0.0d ? dFi : 1.0d));
        this.hp = new BluePressInteractView(context, dynamicWidth, dynamicWidth2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dynamicWidth, dynamicWidth2);
        layoutParams.gravity = 17;
        layoutParams.topMargin = (int) com.byazt.sq.s.hp(context, ebVar.qu() - 7);
        layoutParams.leftMargin = (int) com.byazt.sq.s.hp(context, ebVar.an() - 3);
        this.hp.setLayoutParams(layoutParams);
    }

    @Override // com.byazt.qo.eb
    public void hp() {
        this.hp.hp();
    }

    @Override // com.byazt.qo.eb
    public ViewGroup jx() {
        return this.hp;
    }

    @Override // com.byazt.qo.eb
    public void l() {
        this.hp.l();
    }
}
